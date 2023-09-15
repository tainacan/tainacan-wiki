# Protección de archivos privados

En esta página se explica cómo Tainacan protege el acceso a los archivos adjuntos a elementos privados.

## Cómo funciona

Tainacan cambia las carpetas por defecto que WordPress utiliza para guardar los adjuntos de los artículos. En lugar de guardar los adjuntos en carpetas y subcarpetas que representan el año y el mes, Tainacan los guardará en carpetas que representan la colección y los ids de los artículos.

Cada vez que se sube un adjunto o un documento a un artículo, el archivo se guarda en un directorio especial dentro de la carpeta de subidas. Existe un directorio base para todos los ficheros de ítems, `tainacan-items` por defecto, y, dentro de esta carpeta una estructura de carpetas `$collection_id/$item_id`.

```
uploads/2019/02 <-- WordPress por defecto. Tiendas subidas para febrero de 2019
uploads/tainacan-items/123/456/ <-- Almacena las cargas del artículo 456 que pertenece a la colección 123
```

La URL de los archivos seguirá siendo siempre la estructura simple, por ejemplo, `site.com/wp-content/uploads/tainacan-items/1234/2345/file.jpg`. Sin embargo, en el sistema de archivos, las carpetas de colecciones e ítems pueden llevar prefijos, indicando que son carpetas protegidas.

Así, si el ítem con ID `2345` es privado, la carpeta se llamará, por ejemplo, `_x_2345`.

Dado que la URL y la carpeta en el sistema de archivos no coinciden, al intentar acceder a este archivo se produciría un error 404. Pero entonces Tainacan lo detectará y lo buscará en las carpetas prefijadas.

Si lo encuentra, comprobará si el usuario actual puede leer el elemento y entonces lo servirá para los usuarios autorizados, o dejará una respuesta 404 para los usuarios no autorizados.

Una regla especial `.htaccess` bloqueará el acceso a cualquier URL que tenga una carpeta que comience con el prefijo `_x_`, por lo que la única forma de acceder a estos archivos será utilizando la URL simple y pasando por esta comprobación de permisos.

Cada vez que edite un elemento o una colección, o incluso edite elementos de forma masiva, las carpetas se renombrarán en consecuencia.

!> Por ahora, las miniaturas no se consideran archivos privados y permanecen en la carpeta de subida por defecto de WordPress.

## Protección de carpetas

Necesita añadir una regla a su `.htaccess` para bloquear el acceso a todas las carpetas prefijadas dentro de su directorio uploads. Esto puede hacerse con una regla como esta

```
RewriteRule ^wp-content/uploads/tainacan-items/.*_x_\d+/.+$ - [F,L]
```

Esta línea irá justo debajo de la línea `RewriteEngine On`.

Incluso si una persona consigue averiguar la ruta real del fichero, con el nombre de carpeta prefijado, no podrá acceder a él, sólo a través de la URL limpia que pasará por la comprobación de permisos.


## Cambiar la carpeta base y los prefijos

La carpeta base para los items adjuntos puede ser cambiada configurando la constante `TAINACAN_ITEMS_UPLOADS_DIR` en `wp-config.php`. El valor por defecto es `tainacan-items`.

El prefijo para las carpetas privadas se puede cambiar estableciendo la constante `TAINACAN_PRIVATE_FOLDER_PREFIX` en `wp-config.php`. El valor por defecto es `_x_`.

!> Estas constantes deben establecerse en una instalación nueva. Si se cambian después de que haya subidas, todos los enlaces a los archivos existentes se romperán.


## Trasladar archivos adjuntos desde versiones anteriores a la 0.11

Si estás actualizando desde una versión anterior de Tainacan y ya tienes archivos adjuntos a elementos todo seguirá funcionando como siempre. Los cambios sólo se aplicarán a los nuevos archivos subidos a partir de este momento. Los archivos antiguos seguirán en la estructura de carpetas por defecto de WordPress.

Si desea mover los archivos antiguos a la nueva estructura hay un comando de línea de comandos que puede ejecutar para hacerlo, usando WP CLI.

```
wp tainacan move-attachments-to-items-folder
```

!> Haga una copia de seguridad de su sitio antes de ejecutar esto y compruebe si todo está en su sitio después, si no lo están, recupere su copia de seguridad.

Es una buena idea hacer una ejecución en seco antes sólo para comprobar si el comando se ejecuta hasta el final y tener una idea de los archivos que se verán afectados:

```
wp tainacan move-attachments-to-items-folder --dry-run
```

