# Repositorio de elementos

## Métodos principales

Estos son los métodos más utilizados de este repositorio. Para una lista completa vea [el archivo del repositorio](https://github.com/tainacan/tainacan/tree/master/src/classes/repositories/class-tainacan-items.php).


### buscar()

Obtener elementos basados en ID o argumentos WP_Query

Los elementos se almacenan como entradas. Consulte la documentación de WP_Query
para conocer todos los argumentos aceptados en el parámetro $args (@mirar https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al argumento
argumento WP_Query apropiado

Si se pasa un número a $args, devolverá un objeto \Tainacan\Entities\Item.  Pero si el post no se encuentra o
no coincide con el tipo de entrada de la entidad, devolverá un array vacío.

El segundo parámetro especifica de qué colecciones debe obtenerse el elemento.
Puede pasar el ID u objeto de la colección, o un array de IDs u objetos de colección

@param array $args WP_Query args || int $args the item id
@param array $collections Array Entities\Collection || Array int collections IDs || int collection id || Entities\Collection collection object
@param string $output The desired output format (@see \Tainacan\Repositories\Repository::fetch_output() for possible values)

@return \WP_Query|Array|Item an instance of wp query OR array of entities OR an Item;
 

### buscar_uno()


Obtiene una Entidad basándose en los argumentos de la consulta.

Nota: No funciona con el repositorio Item_Metadata.

@param array $args Query Args as expected by fetch

@return false|\Tainacan\Entities The entity or false if none was found
 

### buscar_ids()


Obtener IDs de elementos basados en argumentos WP_Query

para conocer todos los argumentos aceptados en el parámetro $args (@see https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al argumento WP_Query apropiado

El segundo parámetro especifica de qué colección deben obtenerse los elementos.
Puede pasar el ID u objeto de la colección, o un array de IDs u objetos de la colección

@param array $args WP_Query args || int $args the item id
@param array $collections Array Entities\Collection || Array int collections IDs || int collection id || Entities\Collection collection object

@return Array array of IDs;
 

### get_thumbnail_id_from_document()


Obtiene un ID de miniatura por defecto del documento del artículo.

@param  Entities\Item $item The item

@return int|null           The thumbnail ID or null if it was not possible to find a thumbnail
 

### insertar()



### actualizar()



### eliminar()


@param $item_id

@return mixed|Item
 

### basura()


@param $item_id

@return mixed|Item
 

## Uso

```php
$repository = \Tainacan\Repositories\Items::get_instance();
```

## Propiedades de la Entidad

Estos son los atributos de Entidad para este repositorio. La clase Entity está en [classes/entities folder](../src/classes/entities/class-tainacan-item.php)

Propiedad | Descripción | Slug | Obtener | Asignar | Almacenado como
--- | --- | --- | --- | --- | --- 
Estado|El estado del post|status|`$entity->get_status()`|`$entity->set_status()`|post_status
ID|Identificador unico|id|`$entity->get_id()`|`$entity->set_id()`|ID
Titulo|Titulo del elemento|title|`$entity->get_title()`|`$entity->set_title()`|post_title
Descripción|La descripción del elemento|description|`$entity->get_description()`|`$entity->set_description()`|post_content
Colección|El ID de la colección|collection_id|`$entity->get_collection_id()`|`$entity->set_collection_id()`|meta
Autor|El ID de usuario del autor del elemento(numeric string)|author_id|`$entity->get_author_id()`|`$entity->set_author_id()`|post_author
Fecha de creación|La fecha de creación del elemento|creation_date|`$entity->get_creation_date()`|`$entity->set_creation_date()`|post_date
Fecha de modificación|La fecha de modificación del elemento|modification_date|`$entity->get_modification_date()`|`$entity->set_modification_date()`|post_modified
Términos ID|Los ID de los términos de los elementos|terms|`$entity->get_terms()`|`$entity->set_terms()`|terms
Tipo de documento|El tipo de documento, puede ser archivo adjunto local, un URL externo o un texto|document_type|`$entity->get_document_type()`|`$entity->set_document_type()`|meta
Documento|El documento mismo. Un ID en caso de archivo adjunto, un URL en caso de enlace o un texto en el caso de texto.|document|`$entity->get_document()`|`$entity->set_document()`|meta
Miniatura|Versión a tamaño reducido de una imagen que ayuda a reconocer y organizar archivos|_thumbnail_id|`$entity->get__thumbnail_id()`|`$entity->set__thumbnail_id()`|meta
Estado de los comentarios|Estado de los comentarios: "abierto" significa que se permiten comentarios, "cerrado" significa que no se permiten comentarios.|comment_status|`$entity->get_comment_status()`|`$entity->set_comment_status()`|comment_status

### Uso de la Entidad


Crear nuevo

```php
$entity = new \Tainacan\Entities\Item();
```

Obtener existente por ID
```php
$repository = \Tainacan\Repositories\Items::get_instance();
$entity = $repository->fetch(12);
echo 'My ID is ' . $entity->get_id(); // 12
```

