# Recolector de Basura 

Existe una primera versión experimental de un comando CLI de WP para ello:

```
wp tainacan garbage-collector 
``` 

Para más información:
```
wp help tainacan garbage-collector 
``` 

Limpiará:

* elementos de colecciones eliminadas (y sus comentarios y metadatos)
* documentos y archivos adjuntos de elementos eliminados
* metadatos eliminados (actualmente existe una interfaz para eliminarlos)
* post_meta de metadatos eliminados
* términos huérfanos (con una taxonomía que no existe)
* tnc_bulk postmeta (metadatos temporales utilizados para agrupar elementos en operaciones de edición masiva)
