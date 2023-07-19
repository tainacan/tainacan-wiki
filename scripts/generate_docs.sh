#!/bin/bash
composer install

mkdir -p ./vendor/phpDocumentor 
wget https://phpdoc.org/phpDocumentor.phar -o ./vendor/phpDocumentor/phpdoc.phar

php ./vendor/phpDocumentor/phpdoc.phar -d /src/tainacan -t /src/tainacan-wiki/phpdoc --template="./vendor/saggre/phpdocumentor-markdown/themes/markdown"
vendor/bin/wp-documentor parse /src/tainacan --output=/src/tainacan-wiki/hooks.md --format=markdown