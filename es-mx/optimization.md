# Optimización

## Directrices de optimización de Tainacan

Esta página reúne consejos y configuraciones para **optimizar el rendimiento** de Tainacan en el servidor.

Algunas cosas se pueden hacer directamente desde el panel de administración de **WordPress**, y otras acciones pueden implicar la edición de archivos de configuración y el acceso a la configuración de tu servidor. También pueden ser necesarios conocimientos técnicos más avanzados o ponerse en contacto con el administrador del servidor de la instalación.

---

## Diagnóstico del sistema

A partir de la versión [0.8](https://wordpress.org/plugins/tainacan/%7C) del plugin Tainacan para WordPress se implementó una sección para realizar automáticamente un diagnóstico de la instalación.

1. Accede al panel de administración de WordPress;
2. En el menú lateral izquierdo, pasa el ratón sobre el icono de Tainacan;
3. Selecciona el submenú **Diagnóstico del sistema**;

Esta pantalla muestra la siguiente información:

- **Versión de WordPress**: Brinda información sobre la versión de WordPress instalada en comparación con la última versión disponible.
- **Versión de PHP**: Brinda información sobre la versión de **PHP** instalada en comparación con la última versión disponible.
- **Versión de la base de datos**: Brinda información sobre la versión de la **Base de datos** instalada en comparación con la última versión disponible.
- **Módulos PHP**: Muestra información sobre los módulos obligatorios y recomendados para el correcto funcionamiento de Tainacan.
- **Tiempo máximo de ejecución de PHP**: Muestra el valor actual y el recomendado para ejecutar procesos.
- **Estructura de los enlaces permanentes**: Muestra si la estructura de Enlaces Permanentes está **habilitada** o no.
- **Carpeta de subida**: Muestra si la carpeta para subir archivos tiene permisos de escritura o no.
- **Tamaño máximo de carga de archivos**: Muestra el **tamaño máximo** de archivos que se pueden subir en la instalación.
- **Cron**: Indica si hay **tareas programadas** para realizar respaldos de la instalación.

Los resultados van acompañados de un pequeño feedback visual (▇) a la izquierda en el que los colores indican:

- <span style="color: #a23939">▇</span> - Parámetro **incorrecto** para un buen funcionamiento;
- <span style="color: #e69810">▇</span> - Parámetro **parcialmente suficiente**, con posibilidad de ajustes;
- <span style="color: #25a189">▇</span> - ¡Parámetro **adecuado**!

Si tienes preguntas o sugerencias, ¡suscríbete a la [comunidad Tainacan](https://tainacan.discourse.group)!

### Permisos del módulo Imagick (sin generar miniaturas a partir de archivos PDF)

El módulo Imagick se utiliza para extraer la primera página de los archivos PDF cargados en el servidor para generar miniaturas automáticas. Si no está presente, el Diagnóstico del sistema te avisará.

Sin embargo, debido a cambios recientes en el paquete Imagick, en algunos casos está configurado para no permitir abrir ni leer archivos PDF.

Para resolver isso é preciso:

Para resolver esto, hay que localizar el archivo `/etc/ImageMagick-6/policy.xml` (o `/etc/ImageMagick/policy.xml`) y buscar la siguiente línea:

```
<policy domain="coder" rights="none" pattern="PDF" />
```

Y hay que cambiarla para que quede así:

```
<policy domain="coder" rights="read|write" pattern="PDF" />
```

A continuación, debes reiniciar el servidor web.

---

## Recomendaciones para un buen desempeño

### Reducir el número de metadatos mostrados por defecto en el listado

Si la carga de la lista de elementos (ítems) es lenta, especialmente en la vista de "tabla", reduce la cantidad de metadatos que se muestran de forma predeterminada. Cuantos menos metadatos se muestren en la lista, más rápida será.

Para ello, ve a la página de configuración de metadatos de la colección, edita los metadatos, busca la opción “Mostrar en el listado” y marca “no mostrar por defecto”. Esta opción seguirá permitiendo a los usuarios elegir ver estos metadatos en el listado si lo desean, pero los eliminará del listado por defecto, acelerando la carga para los visitantes a tu sitio.

### Limitar el número máximo de artículos en un listado

Por defecto, Tainacan tiene un límite de 96 elementos por página en cualquier listado o petición API. Ejecuta algunas pruebas y verifica si este número es adecuado para tu servidor.

Si este número es demasiado alto y las peticiones son demasiado lentas, puedes reducirlo para garantizar una buena experiencia de usuario.

Del mismo modo, si tu servidor es más potente, puedes aumentar este número y ofrecer listados más completos. Esto es especialmente útil en el caso de los enlaces que se generan para que los visitantes accedan a la colección en otros formatos, como CSV. Cuanto mayor sea el número de elementos por página, a menos páginas tendrán que acceder para recuperar todos los elementos de una colección.

Para cambiar esta configuración, agrega la siguiente línea al archivo `wp-config.php`:

```php
define(‘TAINACAN_API_MAX_ITEMS_PER_PAGE’, 96);
```

Sustituye 96 por el número que prefieras.

### Mejorar la velocidad de búsqueda de texto

Para colecciones pequeñas, la configuración predeterminada de Tainacan debería funcionar bien y la búsqueda general por palabras clave puede ser eficiente. Sin embargo, para colecciones un poco más grandes, esta búsqueda, que busca un término en todos los metadatos de un elemento, puede ser bastante ineficiente.

Para este cuello de botella existe una solución ideal y otra provisional.

La solución ideal es integrar WordPress con un servidor de búsqueda llamado Elastic Search. La instalación y configuración de Elastic Search está fuera del alcance de esta documentación, pero una vez que tengas dicho servidor en ejecución, simplemente instala el complemento ElasticPress. (Esta integración aún está en fase experimental pero con excelentes resultados. En cuanto esté más madura escribiremos una documentación específica. Mientras tanto, sería muy útil para nosotros recibir informes si has estado haciendo pruebas con Elastic Search).

La solución provisional consiste en restringir la búsqueda al funcionamiento estándar de WordPress, que busca términos solo en el título y la descripción de los elementos. Aunque esta búsqueda es menos completa, es mucho más rápida.

Para hacer esto, agrega la siguiente línea al archivo `wp-config.php`:

```php
define('TAINACAN_DISABLE_DEFAULT_SEARCH_ENGINE', true);
```

Puedes encontrar más información sobre [el motor de búsqueda](es-mx/dev/search-engine.md) en la documentación para desarrolladores.

### Ajuste de las facetas de búsqueda

De forma predeterminada, los valores cargados en las facetas de búsqueda siempre tendrán en cuenta la búsqueda actual que se esté ejecutando. Esto significa que, a medida que se van seleccionando filtros, las facetas se irán sumando y solo arrojarán en los resultados los valores que coincidan con todos los filtros. De esta forma, a medida que el usuario vaya eligiendo filtros, las opciones en las facetas se irán reduciendo, creando un “embudo” de búsqueda.

Si este comportamiento no te parece adecuado, es posible configurar Tainacan para que siempre muestre todos los valores posibles en una faceta, sin tener en cuenta la búsqueda actual (en algunos casos, esto también puede mejorar el rendimiento).

Para hacer esto, agrega la siguiente línea al archivo `wp-config.php`:

```php
define('TAINACAN_FACETS_DISABLE_FILTER_ITEMS', true);
```

### Mejorar la velocidad de carga de las facetas

Muchas facetas, o filtros, también pueden empeorar la experiencia de usuario dependiendo del tamaño de tu colección y de la capacidad de tu servidor.

Si tus facetas se cargan con lentitud, lo mejor es que consultes las directrices de la sección "Ajustar la configuración del servidor" de esta página.

Si no tienes acceso para modificar la configuración del servidor, aquí hay algunas alternativas:

1. Considera disminuir el número de facetas, conservando solo las esenciales. Si algunas facetas son esenciales para el trabajo de gestión, pero prescindibles para la navegación del público en general, márcalas como "visibles solo para los editores". De esta forma, mejorarás la experiencia de tus visitantes.
2. Desactiva el recuento de elementos por faceta. Para hacer esto, agrega la siguiente línea al archivo `wp-config.php`:

```php
define('TAINACAN_FACETS_DISABLE_COUNT_ITEMS', true);
```

Encontrarás más información sobre las facetas en la sección [búsqueda facetada](es-mx/dev/faceted-search) de la documentación para desarrolladores.

---

## Ajustes a la configuración del servidor

Los ajustes que se proponen en esta sección se refieren a la configuración de un servidor Apache. El modo de acceso y la forma de realizar estas configuraciones puede variar mucho dependiendo del servidor o servicio de alojamiento (hosting) utilizado. Con algunos servicios de alojamiento, es posible que no tengas acceso a todas estas opciones.

Para saber exactamente cómo hacer cada uno de estos ajustes, consulta la documentación del servidor utilizado, al administrador responsable de sistemas o al soporte técnico de tu hosting. Las directivas recomendadas aquí se basan en un servidor con las siguientes configuraciones:

- Procesador: Intel(R) Xeon(R) CPU E5-2609 0 a 2,40 GHz, 4 núcleos;
- Sistema operativo: Ubuntu Linux 16.04.1;
- Memoria real y virtual: 16 GB y 2 GB;
- Kernel y CPU: Linux 4.4.0-72-genérico en x86_64
- Versión de apache: 2.4

### Aumenta el tiempo de espera de tu servidor

De forma predeterminada, la mayoría de los servidores están configurados con un tiempo de espera de `30 segundos`. Esto significa que se cancelará cualquier solicitud que tarde más de 30 segundos en completarse.

En general, este tiempo es suficiente, pero puede ser un cuello de botella en algunas operaciones específicas, como algunas operaciones de exportación e importación y edición masiva de artículos.

Para estar seguro, aumenta este valor para que esté entre `200` y `300 segundos`.

### Configurar _KeepAlive_

Esta directiva, si está `activada`, permite conexiones persistentes con Apache. Para un mejor rendimiento, se recomienda `activar` esta opción y permitir más de una solicitud por conexión.

MaxKeepAliveRequests: esta directiva se usa para establecer la cantidad de solicitudes permitidas por conexión cuando la opción KeepAlive está `activada`. Establezca esta opción en `0` para indicar un número ilimitado.

KeepAliveTimeout: esta directiva se usa para definir cuánto tiempo, en segundos, Apache esperará una petición posterior antes de cerrar la conexión. El valor `10` es un buen promedio para usar.

### Configurar _MPM Prefork_

En algunas páginas de Tainacan, especialmente en el listado de artículos, se hacen muchas peticiones simultáneas al servidor. Para mejorar el rendimiento en estas situaciones, se recomienda configurar el módulo MPM Prefork del servidor Apache.

Para la conceptualización de cada directiva de configuración presentada a continuación, se recomienda leer [este artículo](https://elias.praciano.com/2015/12/como-configurar-o-modulo-mpm-prefork-para-melhorar-a-performance-do-servidor-web-apache/) que explica todos los detalles y es útil para determinar la configuración más adecuada para el entorno de tu servidor. También recomendamos [este artículo](https://www.woktron.com/secure/knowledgebase/133/How-to-optimize-Apache-performance.html) que propone un abordaje simple y objetivo para la determinación de estas configuraciones.

A continuación se detallan las configuraciones recomendadas que se deben realizar en el archivo `/etc/apache2/mods-availave/mpm_prefork.conf`:

- **StartServers**: establezca el valor en `4`.
- **MaxClients**: establezca el valor en `256`.
- **MinSpareServers**: establezca el valor en `15`.
- **MaxSpareServer**: establezca el valor en `30`.
- **MaxRequestsPerChild**: establezca el valor en `5`.
- **MaxRequestWorkers**: establezca el valor en `250`.

Una vez realizados estos ajustes, otro aspecto importante es blindar la instalación de WordPress en la que se ejecutará el complemento y el tema de Tainacan. La siguiente sección aborda este tema.

---

## Blindando Wordpress

El primer paso es configurar correctamente los permisos de los archivos y directorios de la instalación. 
Esto se puede hacer usando los siguientes comandos:

Para los directorios:

```shell
find /caminho/para/a/pasta/do/wordpress/ -type d -exec chmod 755 {} \;
```

Para los archivos:

```shell
find /caminho/para/a/pasta/do/wordpress/ -type f -exec chmod 644 {} \;
```

Otra medida de protección que se puede añadir es bloquear los scripts que no deben ser accedidos por ningún usuario. Una forma de hacerlo es usar `mod_rewrite` para bloquear scripts en el archivo `.htaccess`.

```directive
RewriteEngine On
RewriteBase /
RewriteRule ^wp-admin/includes/ - [F,L]
RewriteRule !^wp-includes/ - [S=3]
RewriteRule ^wp-includes/[^/]+\.php$ - [F,L]
RewriteRule ^wp-includes/js/tinymce/langs/.+\.php - [F,L]
RewriteRule ^wp-includes/theme-compat/ - [F,L]
```

Bloquear el acceso al archivo `wp-config.php` a través de `.htaccess` es otra medida interesante. Para ello basta con insertar el siguiente código en el archivo `.htaccess` de la instalación de WordPress:

```php
<files wp-config.php>

order allow,deny

deny from all

</files>
```

También se puede deshabilitar el listado de archivos y el acceso directo a archivos.php en el directorio uploads. Esto se puede hacer incluyendo un archivo `.htaccess` dentro del directorio `/wp-content/uploads` de la instalación de WordPress con el siguiente contenido:


```php
Options -Indexes

<Files *.php>

Require all denied

</Files>
```

### Wordfence

Para concluir esta sección, recomendamos la instalación, activación y configuración del plugin [Wordfence](https://es.wordpress.org/plugins/wordfence/) que cuenta con una serie de funcionalidades destinadas a proteger la instalación de Wordpress de diversos tipos de ataques y explotación de vulnerabilidades.

Puedes acceder al complemento (plugin) y a su documentación [aquí](https://es.wordpress.org/plugins/wordfence/).

## Caché

Existen varios plugins de caché para WordPress que pueden acelerar enormemente la carga de páginas para quienes visiten tu sitio.

Hay una precaución que debe tomarse cuando se utiliza un plugin de caché. Dado que Tainacan utiliza "nonces", que son códigos de seguridad para verificar la intención del usuario al realizar ciertas acciones, es necesario configurar la caché para que no dure más de 12 horas. Estos códigos duran ese tiempo y si la caché dura más de 12 horas, es posible que visites el sitio con un código caducado y tengas problemas de permisos.

Si desea más detalles al respecto, consulta [estos](https://medium.com/myatus/wordpress-caching-and-nonce-lifespan-bb357d984da9) [artículos](https://joshpress.net/wordpress-nonces-and-wordpress-caching/).

