#!/bin/bash
composer install

mkdir -p ./vendor/phpdocumentor/bin/
rm -r vendor/phpdocumentor/bin/*
wget -P ./vendor/phpdocumentor/bin/ https://phpdoc.org/phpDocumentor.phar

php ./vendor/phpdocumentor/bin/phpDocumentor.phar -d /src/tainacan/src/views -d /src/tainacan/src/classes  -t /src/tainacan-wiki/dev/phpdoc --template="./vendor/saggre/phpdocumentor-markdown/themes/markdown"
#vendor/bin/wp-documentor parse /src/tainacan --output=/src/tainacan-wiki/dev/hooks.md --format=markdown

vendor/bin/wp-documentor parse /src/tainacan --template=/src/tainacan-wiki/scripts/templates/actions.php --output=/src/tainacan-wiki/dev/actions.md --format=markdown
vendor/bin/wp-documentor parse /src/tainacan --template=/src/tainacan-wiki/scripts/templates/filters.php --output=/src/tainacan-wiki/dev/filters.md --format=markdown
