# Seting up your local enviroment

This document will run you through setting up your local environment and running the tests. If you haven't done it yet, please have a look at [key concepts](key-concepts.md) so you can have a better understanding of the project.

## Overview

This is the development repository for the Tainacan WordPress plugin.

Overview of folders:

- `docs` - This technical documentation
- `src` - The actual plugin. Everything outside this folder is not part of the distribution package
- `tests` - phpunit tests

This repository includes all the tools needed to develop Tainacan, such as tests and other scripts to compile sass and other things.

## Updating pakages and installing requirements
sudo apt update

sudo apt install -y php php-mysql php-mysqli phpunit composer ruby ruby-dev nodejs npm mysql-server apache2 libapache2-mod-php unzip curl wget

sudo gem install sass

## Verify if you have those requirements
php -v

mysql --version

## If not, install them with:
 sudo apt install php

 sudo apt install mysql-server

## Install WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

sudo mv wp-cli.phar /usr/local/bin/wp

## Test if WP-CLI was installed correctly
wp --info

## Crete diretpry and install WordPress
mkdir -p ~/meu-site

cd ~/meu-site

wp core download

## Create a root user on MySQL
sudo mysql -u root -p

You are going to need to assing a password to your root user

### On MySQL prompt create your database and user for WordPress:
 CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
 
 CREATE USER 'wpuser'@'localhost' IDENTIFIED WITH mysql_native_password BY '<YOUR PASSWORD>';
 
 GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';
 
 FLUSH PRIVILEGES;
 
 EXIT;

## Setting up WordPress config
wp config create --dbname=wordpress --dbuser=wpuser --dbpass=SUA_SENHA

## Clone the Tinacan repository on github
Go to [Tainacan repository](https://github.com/Tainacan-GCES-2025-1/tainacan) and clone it

## Rename and edit build-config.cfg file on your repository clone
mv build-config-sample.cfg build-config.cfg

nano build-config.cfg

## your build-config.cfg should look like this:
wp_base_dir=~/meu-site

wp_url=http://localhost/wordpress

wp_plugin_dir=~/meu-site/wp-content/plugins/tainacan

## Install JS dependencies
npm install

## Configure Apache
sudo rm /var/www/html/index.html

sudo cp -r ~/meu-site/* /var/www/html/

sudo chown -R www-data:www-data /var/www/html/

sudo chmod -R 755 /var/www/html/

sudo ufw allow 'Apache'

sudo systemctl restart apache2

## Run build.sh
./build.sh
