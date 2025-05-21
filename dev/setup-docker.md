# Tainacan Docker

## Dependencies

- [Docker](https://www.docker.com/).
- [Docker Compose](https://docs.docker.com/compose/).

## Important Notes


### Attention to Ports Used by Docker

If you already have a previous installation of WordPress or services like Apache, MySQL, or MariaDB running locally, make sure there are no conflicts with the ports that will be used by the Docker containers.

By default, Docker uses the following ports:

- **80** (HTTP);
- **443** (HTTPS);
- **3306** (MySQL/MariaDB).

Ensure these services are **temporarily stopped**, or if you prefer to keep them running, **modify the exposed ports** in the `docker-compose.yml` file, as will be shown in the next steps.

## Repository

### Clone

```bash
git clone https://github.com/tainacan/tainacan-docker.git
```

### Access the directory

```bash
cd tainacan-docker
```

## Start containers

### Modify `docker-compose.yml`

Edit the `docker-compose.yml` file, adding the following instruction:

* `SKIP_WP_INSTALL: "false"` below `APACHE_DOCUMENT_ROOT`, so that it looks like the following:

Excerpt from `docker-compose.yml`

```yml
php:
  container_name: tainacan_fpm_apache
  image: tainacan/php:8.3-fpm-apache
  environment:
    SITE_URL: http://localhost
    APACHE_DOCUMENT_ROOT: "/var/www/html/public"
    SKIP_WP_INSTALL: "false"
  ports:
```

## Docker execution

Run the following command to see the available options:

```bash
./dev.sh --help
```

Then, run the following command to start the Compose setup:

```bash
./dev.sh --start
```


**Once completed, press `Ctrl + C` in the terminal to stop the Compose execution. Then stop the Compose with the following command:**

```bash
./dev.sh --stop
```

## WordPress configuration

After that, verify whether the directory `tainacan-docker/volumes/www/html/public/` contains the WordPress installation (if it is not empty, the installation was successful).

Next, edit the `wp-config.php` file. The variable `DB_PASSWORD` is likely empty; insert "tainacan" between the single quotes.

Also, ensure that the other database connection variables (`DB_USER` and `DB_NAME`) are correctly set to "tainacan". It should look like the following:

```php
define( 'DB_PASSWORD', 'tainacan' );
```