#!/bin/bash

# This script must be run inside the Docker container where the Tainacan plugin is installed
# please call it from the root of the wiki repository and have Tainacan source files in the same
# directory as the wiki repository

# Check if we're running inside Docker container
if [ ! -d "/src" ]; then
    echo "Error: This script must be run inside the Docker container"
    echo "Run: docker exec -it tainacan_fpm_apache bash"
    echo "Then: cd /src/tainacan-wiki && ./scripts/generate_docs.sh"
    exit 1
fi

# Install composer dependencies
composer install

# Create phpDocumentor directory and download
mkdir -p ./vendor/phpdocumentor/bin/
rm -rf vendor/phpdocumentor/bin/*
wget -P ./vendor/phpdocumentor/bin/ https://phpdoc.org/phpDocumentor.phar

# Generate phpDocumentor documentation
echo "Generating phpDocumentor documentation..."
# Scan /src/tainacan/src but exclude vendor directory and other unnecessary files
php ./vendor/phpdocumentor/bin/phpDocumentor.phar \
    -d /src/tainacan/src \
    -t /src/tainacan-wiki/dev/phpdoc \
    --template="./vendor/saggre/phpdocumentor-markdown/themes/markdown" \
    --ignore="vendor/" \
    --ignore="node_modules/" \
    --ignore="tests/" \
    --ignore="*.min.js" \
    --ignore="*.min.css"

# Add titles to generated documentation files
echo "Adding titles to documentation files..."
# Add titles to class files
find /src/tainacan-wiki/dev/phpdoc/classes -name "*.md" -type f -exec bash -c '
    filename=$(basename "$1" .md)
    # Extract class name from filename (handle namespaced classes)
    classname=$(echo "$filename" | sed "s/.*\\\\.//")
    # Add title at the beginning of the file
    sed -i "1i# $classname\n" "$1"
' _ {} \;

# Add titles to function files
find /src/tainacan-wiki/dev/phpdoc/functions -name "*.md" -type f -exec bash -c '
    filename=$(basename "$1" .md)
    # Add title at the beginning of the file
    sed -i "1i# $filename\n" "$1"
' _ {} \;

# Fix links in generated documentation to work with GitHub Pages/Docsify
echo "Fixing documentation links for GitHub Pages..."
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|\./functions/|/dev/phpdoc/functions/|g' {} \;
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|\./classes/|/dev/phpdoc/classes/|g' {} \;
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|\./namespaces/|/dev/phpdoc/namespaces/|g' {} \;
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|\./packages/|/dev/phpdoc/packages/|g' {} \;

# Add .md extension to links that don't have it
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|/dev/phpdoc/functions/\([^)]*\))|/dev/phpdoc/functions/\1.md)|g' {} \;
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|/dev/phpdoc/classes/\([^)]*\))|/dev/phpdoc/classes/\1.md)|g' {} \;
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|/dev/phpdoc/namespaces/\([^)]*\))|/dev/phpdoc/namespaces/\1.md)|g' {} \;
find /src/tainacan-wiki/dev/phpdoc -name "*.md" -type f -exec sed -i 's|/dev/phpdoc/packages/\([^)]*\))|/dev/phpdoc/packages/\1.md)|g' {} \;

# Generate WordPress hooks documentation
echo "Generating WordPress hooks documentation..."

# Check if template files exist
if [ ! -f "/src/tainacan-wiki/scripts/templates/actions.php" ]; then
    echo "Warning: Actions template not found at /src/tainacan-wiki/scripts/templates/actions.php"
else
    ./vendor/bin/wp-documentor parse /src/tainacan --template=/src/tainacan-wiki/scripts/templates/actions.php --exclude="vendor" --exclude="tests" --output=/src/tainacan-wiki/dev/actions.md --format=markdown
fi

if [ ! -f "/src/tainacan-wiki/scripts/templates/filters.php" ]; then
    echo "Warning: Filters template not found at /src/tainacan-wiki/scripts/templates/filters.php"
else
    ./vendor/bin/wp-documentor parse /src/tainacan --template=/src/tainacan-wiki/scripts/templates/filters.php --exclude="vendor" --exclude="tests"  --output=/src/tainacan-wiki/dev/filters.md --format=markdown
fi


# Generate OpenAPI documentation
echo "Checking for OpenAPI generator plugin..."
if wp --path=/var/www/html/public plugin is-active document-generator-for-openapi --allow-root; then
    echo -e "\e[34m ### Generating OpenAPI REST file ### \e[0m"
    wp --path=/var/www/html/public openapi-generator export-file tainacan/v2 --destination=/src/tainacan-wiki/dev/openapi.json --allow-root
    if [ $? -eq 0 ]; then
        echo -e "\e[32m ### OpenAPI documentation generated successfully ### \e[0m"
    else
        echo -e "\e[31m ### Error generating OpenAPI documentation ### \e[0m"
    fi
else 
    echo -e "\e[33m ### The Plugin document-generator-for-openapi is not activated! ### \e[0m"
fi

# Generate class diagrams using PlantUML → Mermaid conversion
echo -e "\e[34m ### Generating Mermaid class diagrams ### \e[0m"
# Create diagrams directory
mkdir -p /src/tainacan-wiki/dev/diagrams
mkdir -p /src/tainacan-wiki/dev/diagrams/namespaces

# Generate diagrams using php-class-diagram (generates PlantUML format, then convert to Mermaid)
if [ -f "./vendor/bin/php-class-diagram" ]; then
    echo "Generating class diagrams from phpDocumentor output..."
    
    # Step 1: Generate main overview PlantUML (all classes, relationships only)
    echo "  Step 1: Generating main overview PlantUML..."
    ./vendor/bin/php-class-diagram /src/tainacan/src/classes \
        > /src/tainacan-wiki/dev/diagrams/tainacan-overview.puml 2>/dev/null || true
    
    # Step 2: Extract class information from phpDocumentor output
    echo "  Step 2: Extracting class information from phpDocumentor output..."
    if [ -f "/src/tainacan-wiki/scripts/generate-diagrams-from-phpdoc.php" ] && \
       [ -d "/src/tainacan-wiki/dev/phpdoc/classes" ]; then
        echo "    Running PHP script to extract class information..."
        # Capture stdout (JSON) and stderr (errors) separately
        php /src/tainacan-wiki/scripts/generate-diagrams-from-phpdoc.php \
            /src/tainacan-wiki/dev/phpdoc/classes \
            > /tmp/tainacan-classes-from-phpdoc.json 2> /tmp/phpdoc-extract-errors.log
        php_exit_code=$?
        
        # Show any errors
        if [ -s "/tmp/phpdoc-extract-errors.log" ]; then
            echo "      Warnings/Errors from PHP script:"
            cat /tmp/phpdoc-extract-errors.log | sed 's/^/        /'
        fi
        
        if [ $php_exit_code -ne 0 ]; then
            echo "      ERROR: PHP script failed with exit code $php_exit_code"
            exit 1
        fi
        
        if [ ! -f "/tmp/tainacan-classes-from-phpdoc.json" ] || [ ! -s "/tmp/tainacan-classes-from-phpdoc.json" ]; then
            echo "      ERROR: JSON file was not created or is empty"
            exit 1
        fi
        
        json_size=$(wc -c < /tmp/tainacan-classes-from-phpdoc.json)
        echo "    Extracted class information ($json_size bytes)"
        
        # Step 3: Generate namespace overview PlantUML files
        echo "  Step 3: Generating namespace overview PlantUML files..."
        php -r "
            \$data = json_decode(file_get_contents('/tmp/tainacan-classes-from-phpdoc.json'), true);
            if (\$data && isset(\$data['namespaces'])) {
                foreach (\$data['namespaces'] as \$ns => \$classes) {
                    if (!empty(\$ns)) {
                        // Convert namespace to directory path
                        \$nsPath = str_replace('\\\\', '/', \$ns);
                        \$nsParts = explode('/', \$nsPath);
                        
                        // Map namespace to source directory
                        if (count(\$nsParts) > 1 && \$nsParts[0] === 'Tainacan') {
                            \$subNs = \$nsParts[1];
                            \$dir = '/src/tainacan/src/classes/';
                            
                            if (\$subNs === 'API' && isset(\$nsParts[2]) && \$nsParts[2] === 'EndPoints') {
                                \$dir .= 'api/endpoints';
                            } elseif (\$subNs === 'Repositories') {
                                \$dir .= 'repositories';
                            } elseif (\$subNs === 'Entities') {
                                \$dir .= 'entities';
                            } elseif (\$subNs === 'Exporter') {
                                \$dir .= 'background-process/exporter';
                            } elseif (\$subNs === 'Importer') {
                                \$dir .= 'background-process/importer';
                            } elseif (\$subNs === 'GenericProcess') {
                                \$dir .= 'background-process/generic-process';
                            } elseif (\$subNs === 'Exposers') {
                                \$dir .= 'exposers';
                            } elseif (\$subNs === 'Mappers') {
                                \$dir .= 'mappers';
                            } elseif (\$subNs === 'Traits') {
                                \$dir .= 'traits';
                            } elseif (\$subNs === 'OAIPMHExpose') {
                                \$dir .= 'oaipmh';
                            } elseif (\$subNs === 'Cli') {
                                \$dir .= 'cli';
                            } else {
                                \$dir .= strtolower(\$subNs);
                            }
                            
                            if (is_dir(\$dir)) {
                                \$nsSafe = str_replace('\\\\', '-', \$ns);
                                echo \$ns . '|' . \$dir . '|' . \$nsSafe . PHP_EOL;
                            }
                        }
                    }
                }
            }
        " | while IFS='|' read -r namespace ns_dir ns_safe; do
            if [ -n "$namespace" ] && [ -n "$ns_dir" ] && [ -d "$ns_dir" ]; then
                echo "    Generating namespace overview for: $namespace"
                ./vendor/bin/php-class-diagram "$ns_dir" \
                    > "/src/tainacan-wiki/dev/diagrams/tainacan-namespace-$ns_safe.puml" 2>/dev/null || true
            fi
        done
        
        # Step 4: Generate all per-class diagrams in root folder, then organize them
        echo "  Step 4: Generating per-class diagrams..."
        
        if [ ! -f "/tmp/tainacan-classes-from-phpdoc.json" ]; then
            echo "    ERROR: Classes JSON file not found"
            exit 1
        fi
        
        # Create temp directory for all generated diagrams
        temp_diagrams_dir="/tmp/tainacan-diagrams-temp"
        mkdir -p "$temp_diagrams_dir"
        
        # Generate all diagrams first - scan all PHP files and generate diagrams
        echo "    Generating diagrams for all classes..."
        class_count=0
        
        # Get all unique class names from phpDocumentor output
        echo "    Processing JSON file to find PHP files..."
        echo "    (Debug output will be shown below)"
        php -r "
            \$jsonFile = '/tmp/tainacan-classes-from-phpdoc.json';
            if (!file_exists(\$jsonFile)) {
                fwrite(STDERR, 'ERROR: JSON file not found\n');
                exit(1);
            }
            
            \$jsonContent = file_get_contents(\$jsonFile);
            \$data = json_decode(\$jsonContent, true);
            
            if (\$data === null) {
                fwrite(STDERR, 'ERROR: Failed to decode JSON: ' . json_last_error_msg() . '\n');
                exit(1);
            }
            
            if (!isset(\$data['classes'])) {
                fwrite(STDERR, 'ERROR: No classes key in JSON\n');
                exit(1);
            }
            
            \$classCount = count(\$data['classes']);
            fwrite(STDERR, 'Found ' . \$classCount . ' classes in JSON\n');
            
            if (\$classCount == 0) {
                fwrite(STDERR, 'WARNING: No classes found in JSON\n');
                exit(0);
            }
            
            \$foundCount = 0;
            foreach (\$data['classes'] as \$classInfo) {
                \$className = \$classInfo['name'];
                \$fullName = \$classInfo['fullName'];
                
                // Find PHP file by searching for class-tainacan-{classname}.php
                \$fileName = 'class-tainacan-' . strtolower(str_replace('_', '-', \$className)) . '.php';
                
                // Search recursively in classes directory
                \$iterator = new RecursiveIteratorIterator(
                    new RecursiveDirectoryIterator('/src/tainacan/src/classes', RecursiveDirectoryIterator::SKIP_DOTS)
                );
                
                foreach (\$iterator as \$file) {
                    if (\$file->isFile() && \$file->getFilename() === \$fileName) {
                        \$phpFile = \$file->getPathname();
                        \$classDir = dirname(\$phpFile);
                        \$tempFile = '/tmp/tainacan-diagrams-temp/' . \$className . '.puml';
                        echo \$classDir . '|' . \$tempFile . '|' . \$className . PHP_EOL;
                        \$foundCount++;
                        break;
                    }
                }
            }
            
            fwrite(STDERR, 'Found PHP files for ' . \$foundCount . ' classes\n');
        " > /tmp/php-find-output.txt 2> /tmp/php-find-errors.log
        
        # Show debug output
        if [ -f "/tmp/php-find-errors.log" ]; then
            echo "    $(cat /tmp/php-find-errors.log)"
        fi
        
        # Process the output file
        cat /tmp/php-find-output.txt | grep -E '^[^|]*\|[^|]*\|[^|]*$' | sort -u | while IFS='|' read -r class_dir temp_file class_name; do
            if [ -d "$class_dir" ] && [ -n "$temp_file" ]; then
                # Generate diagram for the directory
                ./vendor/bin/php-class-diagram "$class_dir" > "$temp_file" 2>/dev/null || true
                
                class_count=$((class_count + 1))
                if [ $((class_count % 10)) -eq 0 ]; then
                    echo "      Generated $class_count diagrams..."
                fi
            fi
        done
        echo "    Generated $class_count PlantUML files in temporary location"
        
        # Step 4b: Convert to Mermaid and move to match .md file locations
        echo "  Step 4b: Converting to Mermaid and organizing by phpDocumentor structure..."
        if [ -f "/src/tainacan-wiki/scripts/plantuml-to-mermaid.php" ]; then
            moved_count=0
            php -r "
                \$data = json_decode(file_get_contents('/tmp/tainacan-classes-from-phpdoc.json'), true);
                if (\$data && isset(\$data['classes'])) {
                    foreach (\$data['classes'] as \$classInfo) {
                        \$className = \$classInfo['name'];
                        \$mdRelDir = \$classInfo['mdRelDir'];
                        
                        // Source files in temp location
                        \$tempPuml = '/tmp/tainacan-diagrams-temp/' . \$className . '.puml';
                        \$tempMmd = '/tmp/tainacan-diagrams-temp/' . \$className . '.mmd';
                        
                        // Destination: next to .md file in phpdoc/classes structure
                        \$destDir = '/src/tainacan-wiki/dev/phpdoc/classes';
                        if (\$mdRelDir !== '.' && !empty(\$mdRelDir)) {
                            \$destDir .= '/' . \$mdRelDir;
                        }
                        \$destMmd = \$destDir . '/' . \$className . '.mmd';
                        
                        // Create destination directory
                        if (!is_dir(\$destDir)) {
                            mkdir(\$destDir, 0755, true);
                        }
                        
                        echo \$tempPuml . '|' . \$tempMmd . '|' . \$destMmd . PHP_EOL;
                    }
                }
            " | while IFS='|' read -r temp_puml temp_mmd dest_mmd; do
                if [ -f "$temp_puml" ] && [ -s "$temp_puml" ]; then
                    # Convert PlantUML to Mermaid
                    php /src/tainacan-wiki/scripts/plantuml-to-mermaid.php "$temp_puml" > "$temp_mmd" 2>/dev/null || true
                    
                    # Filter out child classes for per-class diagrams (keep only parent classes)
                    if [ -f "$temp_mmd" ] && [ -s "$temp_mmd" ]; then
                        # Extract class name from the path
                        class_name=$(basename "$dest_mmd" .mmd)
                        
                        # Filter child classes
                        if [ -f "/src/tainacan-wiki/scripts/filter-child-classes-from-mermaid.php" ]; then
                            php /src/tainacan-wiki/scripts/filter-child-classes-from-mermaid.php \
                                "$temp_mmd" "$class_name" > "${temp_mmd}.filtered" 2>/dev/null || true
                            
                            # Use filtered version if it's not empty
                            if [ -f "${temp_mmd}.filtered" ] && [ -s "${temp_mmd}.filtered" ]; then
                                mv "${temp_mmd}.filtered" "$temp_mmd"
                            fi
                        fi
                        
                        # Copy to destination (next to .md file)
                        cp "$temp_mmd" "$dest_mmd" 2>/dev/null || true
                        moved_count=$((moved_count + 1))
                    fi
                fi
            done
            echo "    Organized $moved_count diagrams next to their .md files"
        fi
        
        # Clean up temp files
        rm -rf "$temp_diagrams_dir"
        rm -f /tmp/tainacan-classes-from-phpdoc.json
        
        # Step 4c: Insert diagrams into .md files using Docsify Mermaid syntax
        echo "  Step 4c: Inserting diagrams into .md files..."
        if [ -f "/src/tainacan-wiki/scripts/insert-diagrams-into-md.php" ]; then
            php /src/tainacan-wiki/scripts/insert-diagrams-into-md.php \
                /src/tainacan-wiki/dev/phpdoc/classes \
                2>&1 | grep -E "(Processed|inserted|Warning|Error)" || true
        else
            echo "    Warning: insert-diagrams-into-md.php script not found"
        fi
    else
        echo -e "\e[33m    Warning: Namespace parser script not found\e[0m"
        echo "    Skipping namespace and per-class diagram generation"
    fi
    
    # Step 5: Convert all PlantUML to Mermaid
    echo "  Step 5: Converting all PlantUML files to Mermaid format..."
    if [ -f "/src/tainacan-wiki/scripts/plantuml-to-mermaid.php" ]; then
        puml_count=0
        # Find all .puml files recursively
        find /src/tainacan-wiki/dev/diagrams -name "*.puml" -type f | while read -r puml_file; do
            if [ -f "$puml_file" ] && [ -s "$puml_file" ]; then
                # Get relative path for output
                rel_path="${puml_file#/src/tainacan-wiki/dev/diagrams/}"
                mmd_file="${rel_path%.puml}.mmd"
                mmd_path="/src/tainacan-wiki/dev/diagrams/$mmd_file"
                
                # Create directory if needed
                mmd_dir=$(dirname "$mmd_path")
                mkdir -p "$mmd_dir"
                
                echo "    Converting $(basename "$puml_file")..."
                php /src/tainacan-wiki/scripts/plantuml-to-mermaid.php "$puml_file" \
                    > "$mmd_path" 2>/dev/null || {
                    echo "      Warning: Failed to convert $puml_file to Mermaid"
                }
                
                # Remove methods and attributes from overview diagrams (keep only relationships)
                # Overview diagrams are: tainacan-overview.mmd and tainacan-namespace-*.mmd
                if [ -f "$mmd_path" ] && [ -s "$mmd_path" ]; then
                    basename_mmd=$(basename "$mmd_path")
                    is_overview=false
                    if [ "$basename_mmd" = "tainacan-overview.mmd" ]; then
                        is_overview=true
                    elif [[ "$basename_mmd" =~ ^tainacan-namespace-.*\.mmd$ ]]; then
                        is_overview=true
                    fi
                    
                    if [ "$is_overview" = true ]; then
                        if [ -f "/src/tainacan-wiki/scripts/remove-methods-attributes-from-mermaid.php" ]; then
                            php /src/tainacan-wiki/scripts/remove-methods-attributes-from-mermaid.php "$mmd_path" \
                                > "${mmd_path}.tmp" 2>/dev/null && mv "${mmd_path}.tmp" "$mmd_path" || true
                        fi
                    fi
                fi
                
                puml_count=$((puml_count + 1))
            fi
        done
        echo "    Converted PlantUML files to Mermaid"
    else
        echo -e "\e[33m    Warning: PlantUML to Mermaid converter not found\e[0m"
        echo "    PlantUML files generated but not converted to Mermaid"
    fi
    
    # Step 6: Insert namespace overview diagrams into Home.md
    echo "  Step 6: Inserting namespace overview diagrams into Home.md..."
    if [ -f "/src/tainacan-wiki/scripts/insert-namespace-diagrams-into-home.php" ] && \
       [ -f "/src/tainacan-wiki/dev/phpdoc/Home.md" ]; then
        php /src/tainacan-wiki/scripts/insert-namespace-diagrams-into-home.php \
            /src/tainacan-wiki/dev/phpdoc/Home.md \
            /src/tainacan-wiki/dev/diagrams \
            2>&1 | grep -E "(Inserted|Warning|Error)" || true
    else
        echo "    Warning: insert-namespace-diagrams-into-home.php script not found or Home.md missing"
    fi
    
    # Count generated files
    puml_count=$(find /src/tainacan-wiki/dev/diagrams -name "*.puml" -type f -size +0 2>/dev/null | wc -l)
    mmd_count=$(find /src/tainacan-wiki/dev/diagrams -name "*.mmd" -type f -size +0 2>/dev/null | wc -l)
    
    if [ "$puml_count" -gt 0 ] || [ "$mmd_count" -gt 0 ]; then
        echo -e "\e[32m ### Diagrams generated: $puml_count PlantUML files, $mmd_count Mermaid files ### \e[0m"
        echo "  Diagrams saved to: /src/tainacan-wiki/dev/diagrams/"
        echo "  Main files:"
        echo "    - tainacan-overview.mmd (overview with all classes and relationships)"
        echo "    - tainacan-namespace-*.mmd (namespace overview diagrams)"
        echo "    - namespaces/Tainacan/*/*.mmd (per-class diagrams organized by namespace)"
        echo "  You can include Mermaid diagrams in your markdown files using:"
        echo "    \`\`\`mermaid"
        echo "    [content from .mmd file]"
        echo "    \`\`\`"
        echo "  Or reference the .mmd file directly if your documentation tool supports it"
        echo "  Note: Docsify with Mermaid plugin will render .mmd files automatically"
    else
        echo -e "\e[33m ### Warning: No diagrams were generated ### \e[0m"
        echo "  This might be because:"
        echo "    - The source code structure doesn't match expected patterns"
        echo "    - The tool needs different options"
        echo "  Check the .puml files in /src/tainacan-wiki/dev/diagrams/ if any were created"
    fi
else
    echo -e "\e[33m ### php-class-diagram tool not found ### \e[0m"
    echo "  Install it with: composer require --dev smeghead/php-class-diagram"
    echo "  Then run: composer install"
fi

echo -e "\e[32m ### Documentation generation completed! ### \e[0m"