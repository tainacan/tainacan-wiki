# Configuración de su entorno local

Este documento le ayudará a configurar su entorno local y a ejecutar las pruebas. Si aún no lo has hecho, echa un vistazo a [conceptos clave](/es-mx/dev/key-concepts.md) para que pueda comprender mejor el proyecto.

## Panorama general

Este es el repositorio de desarrollo para el plugin de WordPress Tainacan.

Vista general de las carpetas:

- `docs` - Esta documentación técnica
- `src` - El plugin en sí. Todo lo que esté fuera de esta carpeta no forma parte del paquete de distribución.
- `tests` - Pruebas phpunit

Este repositorio incluye todas las herramientas necesarias para desarrollar Tainacan, como tests y otros scripts para compilar sass y otras cosas.

## Antes de empezar

Tainacan es un plugin de WordPress, por lo que necesitarás todas las dependencias básicas que normalmente tienes para ejecutar un sitio WordPress, como PHP y MySQL.

También necesitarás

- `Composer` para gestionar las dependencias
- `Sass` para compilar sass en archivos css
- `WP-Cli` para configurar el entorno de pruebas
- `Phpunit` para ejecutar pruebas unitarias
- `Node` para manejar las dependencias y construir la aplicación JS

```
sudo apt-get install phpunit composer ruby ruby-dev nodejs npm
sudo gem install sass
```

- Para instalar WP-Cli, visita [la documentación oficial](https://wp-cli.org/#installing).

## Configuración

En primer lugar, clone este repositorio.

Ten en cuenta que NO puedes clonarlo directamente en el directorio `plugins` de WordPress. Clónelo en una carpeta propia y configure su compilación para que apunte a su carpeta local de `plugins` de WordPress.

```
git clone git@git.github.com:tainacan/tainacan.git
```

Configura una instalación de WordPress. Puede ser una instalación dedicada para desarrollar Tainacan o puedes usar una instancia existente que tengas. Depende de ti, pero necesitarás una, tanto para desarrollar y probar manualmente, como para ejecutar pruebas de integración automatizadas.

## Construir

Cuando queremos construir el plugin, ejecutamos `build.sh` que instala cualquier dependencia, compila todos los assets (sass y js) y mueve los ficheros al directorio del plugin. Esta versión compilada del plugin es la que se añade al repositorio oficial de plugins de WordPress.

Para usarla, haz una copia de `build-config-sample.cfg` y nómbrala sólo `build-config.cfg`. Edítalo e introduce los detalles de tu entorno:

- `wp_base_dir`: El directorio base de su instalación local de WordPress, utilizado para desarrollo y pruebas. p.ej. `~/develop/wordpress`.
- `wp_url`: La URL base de su instalación local de WordPress/ por ejemplo `http://localhost/wp`.
- `wp_plugin_dir`: El directorio de su plugin. Debe ser un directorio dentro de `wp_base_dir`. Por ejemplo `~/develop/wordpress/wp-content/plugins/test-tainacan`.

Una vez que esté listo, puede ejecutar:

```
./build.sh
```

Mientras desarrollas, puede que quieras ejecutar `build-watch.sh`. Este script vigilará tu carpeta de desarrollo en busca de cambios y construirá automáticamente el plugin para que no tengas que hacerlo manualmente cada vez que modifiques un archivo.

## Pruebas

Tainacan usa `phpunit` para ejecutar pruebas para el backend y la API. Esta es una parte muy importante del proceso de desarrollo. Nunca confirmes nada antes de ejecutar todas las pruebas para asegurarte de que no has roto nada. Si estás desarrollando una nueva funcionalidad, debes escribir pruebas para ella. Si estás corrigiendo un error, primero debes escribir una prueba que reproduzca el error y luego hacer que pase.

Para ejecutar todas las pruebas, simplemente ejecuta el comando `phpunit` desde la carpeta raíz del proyecto. Pero primero, necesitas configurar PHPUnit.

### Preparando PHPUnit

Para ejecutar las pruebas unitarias es necesario crear una nueva base de datos MySQL para tus pruebas unitarias. Esta base de datos será limpiada y restaurada cada vez que ejecutes PHPUnit.

Instale la librería de pruebas de WordPress ejecutando el script proporcionado en la carpeta `tests/bin`, ejecutando el siguiente comando:

```
tests/bin/install-wp-tests.sh wordpress_test root root /path/to/wordpress-test-folder localhost latest
```

Los parámetros son:

- Nombre de la base de datos
- Nombre de usuario de MySQL
- Contraseña de MySQL
- Directorio de prueba de WordPress
- Hosting MySQL
- Versión de WordPress
- Opcional: omitir crear base de datos

\* `WordPress Test Directory` se creará con 2 subcarpetas:

- `wordpress-test` - Una instalación de WordPress
- `wordpress-tests-lib` - Como su nombre indica, la librería de pruebas de WordPress

Dentro de la carpeta `tests`, edite el archivo llamado `bootstrap-config-sample.php` e informe la carpeta donde instaló su Librería de Pruebas de WordPress. Esta será `/path/to/wordpress-test-folder/wodpress-tests-lib`. Guarde el archivo como `bootstrap-config.php`.

Ten en cuenta que el script de instalación creará un archivo de configuración en la carpeta de destino con tus credenciales de la base de datos. Si tienes que cambiarlo, tendrás que editarlo allí.

Sólo tienes que hacer todo esto una vez, y ya estás listo para ejecutar pruebas.

#### Ejecutar pruebas

Simplemente escribe este comando desde la carpeta raíz del proyecto:

```
phpunit
```

(Tenga en cuenta que ``phpunit`` acepta varios parámetros, por ejemplo, si desea ejecutar sólo un grupo específico de pruebas).
