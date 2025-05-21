# Tainacan Docker

## Dependencias

- [Docker](https://www.docker.com/).
- [Docker Compose](https://docs.docker.com/compose/).

## Notas Importantes


### Atención a los Puertos Utilizados por Docker

Si ya tienes una instalación previa de WordPress o servicios como Apache, MySQL o MariaDB ejecutándose localmente, asegúrate de que no haya conflictos con los puertos que usarán los contenedores de Docker.

Por defecto, Docker utiliza los siguientes puertos:

- **80** (HTTP);
- **443** (HTTPS);
- **3306** (MySQL/MariaDB).

Asegúrate de que estos servicios estén **detenidos temporalmente** o, si prefieres mantenerlos activos, **modifica los puertos expuestos** en el archivo `docker-compose.yml`, como se indicará en los próximos pasos.


## Repositorio

### Clonar

```bash
git clone https://github.com/tainacan/tainacan-docker.git
```

### Acceder al directorio

```bash
cd tainacan-docker
```

## Iniciar contenedores

### Modificar `docker-compose.yml`

Edita el archivo `docker-compose.yml`, agregando la siguiente instrucción:

* `SKIP_WP_INSTALL: "false"` debajo de `APACHE_DOCUMENT_ROOT`, de modo que se vea de la siguiente manera:

Fragmento de `docker-compose.yml`:

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


## Ejecución de Docker

Ejecute el siguiente comando para ver las opciones disponibles:

```bash
./dev.sh --help
```

Luego, ejecute el siguiente comando para iniciar la configuración de Compose:

```bash
./dev.sh --start
```


**Una vez finalizado, presione `Ctrl + C` en la terminal para detener la ejecución de Compose. Luego, detenga Compose con el siguiente comando:**

```bash
./dev.sh --stop
```

## Configuración de WordPress

Después de eso, verifique si el directorio `tainacan-docker/volumes/www/html/public/` contiene la instalación de WordPress (si no está vacío, la instalación fue exitosa).

Luego, edite el archivo `wp-config.php`. Es probable que la variable `DB_PASSWORD` esté vacía; coloque "tainacan" entre las comillas simples.

También asegúrese de que las otras variables de conexión a la base de datos (`DB_USER` y `DB_NAME`) estén correctamente configuradas con "tainacan". Debería verse de la siguiente manera:

```php
define( 'DB_PASSWORD', 'tainacan' );
```
