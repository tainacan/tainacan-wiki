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
If you are unable to edit the file due to lack of permission, use sudo.

```bash
sudo nano wp-config.php
```

## Cloning Tainacan repositories

Go to the `tainacan-docker/volumes/src/` directory.

To work with your own fork of the Tainacan plugin, you will first need to clone it. Replace your-username-or-organization in the URL below with the actual username or organization where your fork is hosted:


```bash
git clone https://github.com/your-username-or-organization/tainacan.git
```
Then, clone the Tainacan Theme repository:

```bash
git clone https://github.com/tainacan/tainacan-theme.git
```

Now, enter the directory of the plugin Fork repository that you just cloned (be careful not to enter the Theme directory), and execute:

```bash
./build.sh
```
Since you will need to run two builds, you will need a second terminal.
Open a new terminal window or tab.
In this new terminal, navigate to your project's base directory.

Now, edit the `docker-compose.yml` file in `tainacan-docker/` again. Change the instruction that was previously inserted to "true". So that it looks like the following:

Snippet from `docker-compose.yml`:

```php
    php:
      container_name: tainacan_fpm_apache
      image: tainacan/php:8.3-fpm-apache
      environment:
        SITE_URL: http://localhost
        APACHE_DOCUMENT_ROOT: "/var/www/html/public"
        SKIP_WP_INSTALL: "true"
      ports:
```

With the file edited, in `tainacan-docker`, execute again:

```bash
./dev.sh --start
```
Wait for Compose to fully start up, which takes some time.

After this, open a new terminal to execute the following command and verify if the containers have started correctly:

```bash
docker ps
```
Three containers should appear: `tainacan_fpm_apache`, `tainacan_db`, and `tainacan_build`. All of them need to have the status "Up".

The `tainacan_fpm_apache` container should be using ports "80:80" and "443:443".

The `tainacan_db` container should be using port "3306".

The `tainacan_build` container, however, does not use any port.

## Finishing up

Assuming everything went well, configure WordPress with your preferred settings.

Go to WordPress Settings in the sidebar, specifically to the **Permalinks** tab, and change the option to **Post Name**.
Click Save Changes.

Go to the **Plugins** area in the sidebar; Tainacan should already be appearing in the list. Activate it.

**Tainacan** should now appear in the WordPress sidebar. Click on it, then create a new collection and add an item to it.

If this last step did not show any errors, the installation was successful.