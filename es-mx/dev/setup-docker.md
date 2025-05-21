# Tainacan Docker

## Dependencias

* [Docker](https://www.docker.com/).
* [Docker Compose](https://docs.docker.com/compose/).

## Notas Importantes

### Atención a los Puertos Utilizados por Docker

Si ya tienes una instalación previa de WordPress o servicios como Apache, MySQL o MariaDB ejecutándose localmente, asegúrate de que no haya conflictos con los puertos que usarán los contenedores de Docker.

Por defecto, Docker utiliza los siguientes puertos:

* **80** (HTTP);
* **443** (HTTPS);
* **3306** (MySQL/MariaDB).

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

Ejecuta el siguiente comando para ver las opciones disponibles:

```bash
./dev.sh --help
```

Luego, ejecuta el siguiente comando para iniciar la configuración de Compose:

```bash
./dev.sh --start
```

**Una vez finalizado, presiona `Ctrl + C` en la terminal para detener la ejecución de Compose. Luego, detén Compose con el siguiente comando:**

```bash
./dev.sh --stop
```

## Configuración de WordPress

Después de eso, verifica si el directorio `tainacan-docker/volumes/www/html/public/` contiene la instalación de WordPress (si no está vacío, la instalación fue exitosa).

Luego, edita el archivo `wp-config.php`. Es probable que la variable `DB_PASSWORD` esté vacía; coloca "tainacan" entre las comillas simples.

También asegúrate de que las otras variables de conexión a la base de datos (`DB_USER` y `DB_NAME`) estén correctamente configuradas con "tainacan". Debería verse de la siguiente manera:

```php
define( 'DB_PASSWORD', 'tainacan' );
```

## Clonando los repositorios de Tainacan

Métete a la carpeta tainacan-docker/volumes/src/ y clona el repositorio del Plugin y del Tema de Tainacan con:

(En nuestro caso, usaremos el fork del repositorio, pero dejaremos el tema del original. A menos que también queramos meter mano ahí)

``` bash
    git clone https://github.com/Tainacan-GCES-2025-1/tainacan.git
    git clone https://github.com/tainacan/tainacan-theme.git
```

Ahora, entra a la carpeta del plugin que acabas de clonar (¡no te vayas a meter en la del tema por error!), y corre:

``` bash
    ./build.sh
```

Espérate un rato mientras se hace el build (sí, va a tardar un poco).

Luego, edita otra vez el archivo docker-compose.yml que está en tainacan-docker/. Cambia la línea que habías puesto antes a "true". Que quede así:

Fragmento de docker-compose.yml:


``` yml
    php:
      container_name: tainacan_fpm_apache
      image: tainacan/php:8.3-fpm-apache
      environment:
        SITE_URL: http://localhost
        APACHE_DOCUMENT_ROOT: "/var/www/html/public"
        SKIP_WP_INSTALL: "true"
      ports:
```

Ya que editaste el archivo, desde tainacan-docker, corre de nuevo:


``` bash
    ./dev.sh --start
```

Dale tiempo a que se levante todo (otra vez, paciencia).

Después, entra a:  [Localhost](http://localhost/). Si te sale la pantalla de configuración de WordPress, ¡chido! Todo salió bien.

Si no funcionó... pues ni modo. Pídele ayuda a tus cuates o borra todo e inténtalo de nuevo. También checa si no hay pedos con los puertos, así:

Abre otra terminal y corre:
 bash
    docker ps


Deberían aparecer tres contenedores: tainacan_fpm_apache, tainacan_db y tainacan_build. Todos deben decir "Up".

El tainacan_fpm_apache usa los puertos 80:80 y 443:443

El tainacan_db usa el puerto 3306

El tainacan_build no ocupa puertos

Otra opción es usar el Docker Desktop (pa' los que les gusta lo gráfico).

También puedes ver los errores con:


``` bash
    ./dev.sh --error-logs
```

## Pa' terminar
Si todo salió bien, configura WordPress con tus datos.

Ve a Ajustes > Enlaces permanentes y selecciona "Nombre de entrada".

Dale clic en Guardar.

En la sección de Plugins, ya debe aparecer Tainacan. Actívalo.

Ahora verás "Tainacan" en el menú. Crea una colección y mete un item.

Si en el paso 5 no salen errores, ¡todo quedó listo!
