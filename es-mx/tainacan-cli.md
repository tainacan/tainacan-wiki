# CLI: interfaz de línea de comandos de Tainacan


El WP-CLI (https://wp-cli.org/) es la interfaz de línea de comandos para WordPress. Desde esta interfaz puedes actualizar complementos, configurar instalaciones y mucho más sin usar un navegador web.

## Comandos WP-CLI

Los siguientes comandos para WP-CLI son compatibles con Tainacan:

```
    wp tainacan garbage-collector
    wp tainacan move-attachments-to-items-folder
    wp tainacan collection
    wp tainacan index-content
    wp tainacan control-metadata
```

### wp tainacan garbage-collector (recolector de basura)

Sirve para eliminar entidades y archivos no utilizados por la instalación de Tainacan

#### OPCIONES:

| opciones            | descripción                                                                                                                                                                                                                                                              |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| --run              | De forma predeterminada, este comando solo emite un informe, pero no elimina nada. Si realmente quieres borrar la basura, ejecuta –run                                                                                                                                                 |
| --deep             | Enfoque más agresivo para encontrar basura. En algunos casos, puede eliminar basura relacionada con otras partes del sitio. El modo profundo elimina todos los archivos adjuntos con IDs de posts no encontrados, independientemente de si fueron subidos por Tainacan o no |
| --skip-attachments | Ignorar archivos adjuntos no utilizados                                                                                                                                                                                                                                   |
| --skip-items       | Ignorar elementos no utilizados                                                                                                                                                                                                                                             |
| --skip-taxonomies  | Ignorar taxonomías no utilizadas                                                                                                                                                                                                                                        |
| --skip-metadata    | Ignorar metadatos no utilizados                                                                                                                                                                                                                                         |
| --skip-transients  | Ignorar variables transitorias en Tainacan                                                                                                                                                                                                                                              |
| --yes              | Confirmar las operaciones antes de la ejecución                                                                                                                                                                                                                                |

Ejemplo:

```
wp tainacan garbage-collector --run --deep --yes
```

### wp tainacan move-attachments-to-items-folder (mover-adjuntos-a-carpeta-de-elementos)

Sirve para mover los documentos y archivos adjuntos de elementos a una estructura de directorios usando: `$collection_id/$item_id`.
Esto es solo para actualizar la estructura de las instalaciones realizadas antes de la versión 0.11 de Tainacan, cuando se implementó esta estructura.

#### OPCIONES:

| opciones   | descrición                                                   |
| --------- | ------------------------------------------------------------- |
| --dry-run | Explora los archivos adjuntos, pero no los mueve, solo muestra un informe |

Ejemplo:

```
wp tainacan index-content --collection=all
```

### wp tainacan collection list (lista de colecciones wp tainacan)

Muestra una lista de las colecciones

### wp tainacan collection clean (remover elementos de una colección)

Elimina elementos de una colección específica.

#### OPCIONES:

| opciones         | descripción                                                             |
| --------------- | ----------------------------------------------------------------------- |
| <collection_id> | Especifica la colección de la que se eliminarán sus elementos.                     |
| --permanently   | Excluir permanentemente los elementos sin pasar por la papelera de reciclaje.                  |
| --dry-run       | Cuenta el total de elementos que se eliminarán y muestra un informe. |

Ejemplo:

```
wp tainacan collection clean 1201 --permanently
```

### wp tainacan index-content (indexar los contenidos)

Sirve para recalcular los valores de los metadatos de control

#### OPCIONES:

| opciones              | descripción                                                                                                                        |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| --collection=<value> | <value> ID de la colección en la que se indexará el contenido (es decir, los elementos). Se puede usar "all" para indexar el contenido de todas las colecciones. |
| --dry-run            | Cuenta el total de elementos que se indexarán y muestra un informe.                                                            |

### wp tainacan control-metadata (control de metadatos)

Sirve para recalcular los valores de los metadatos de control

#### OPCIONES:

| opciones                                 | descripción                                                                                                 |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| --collection=<value>                    | <value> ID de la colección en la que se volverán a calcular los metadatos de control, usa “all” para elegir todas las colecciones. |
| --dry-run                               | Cuenta el número total de elementos que tendrán los metadatos de control recalculados y muestra un informe.        |
| --recreate-control-metadata-definitions | Recrea las definiciones de metadatos de control                                                             |

Ejemplo:

```
wp tainacan control-metadata --collection=all --recreate-control-metadata-definitions
```
