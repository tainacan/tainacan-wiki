#!/bin/bash

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
php ./vendor/phpdocumentor/bin/phpDocumentor.phar -d /src/tainacan/src -t /src/tainacan-wiki/dev/phpdoc --template="./vendor/saggre/phpdocumentor-markdown/themes/markdown"

# Generate WordPress hooks documentation
echo "Generating WordPress hooks documentation..."

# Check if template files exist
if [ ! -f "/src/tainacan-wiki/scripts/templates/actions.php" ]; then
    echo "Warning: Actions template not found at /src/tainacan-wiki/scripts/templates/actions.php"
else
    ./vendor/bin/wp-documentor parse /src/tainacan --template=/src/tainacan-wiki/scripts/templates/actions.php --output=/src/tainacan-wiki/dev/actions.md --format=markdown
fi

if [ ! -f "/src/tainacan-wiki/scripts/templates/filters.php" ]; then
    echo "Warning: Filters template not found at /src/tainacan-wiki/scripts/templates/filters.php"
else
    ./vendor/bin/wp-documentor parse /src/tainacan --template=/src/tainacan-wiki/scripts/templates/filters.php --output=/src/tainacan-wiki/dev/filters.md --format=markdown
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

echo -e "\e[32m ### Documentation generation completed! ### \e[0m"