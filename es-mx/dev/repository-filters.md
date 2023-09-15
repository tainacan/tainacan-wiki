# Repositorio de filtros

## Métodos principales

Estos son los métodos más utilizados de este repositorio. Para obtener una lista completa, consulte [el archivo del repositorio](https://github.com/tainacan/tainacan/tree/master/src/classes/repositories/class-tainacan-filters.php).


### buscar()


Obtener filtro basado en ID o argumentos WP_Query

Los filtros se almacenan como entradas. Consulte la documentación de WP_Query
para conocer todos los argumentos aceptados en el parámetro $args (@see https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al
argumento WP_Query apropiado

Si se pasa un número a $args, devolverá un objeto \Tainacan\Entities\Filter.  Pero si la entrada no se encuentra o
no coincide con el tipo de entrada de la entidad, devolverá una matriz vacía.

@param array $args WP_Query args || int $args the filter id
@param string $output The desired output format (@see \Tainacan\Repositories\Repository::fetch_output() for possible values)

@return \WP_Query|Array an instance of wp query OR array of entities;
 

### fetch_one()


Obtiene una Entidad basándose en los argumentos de la consulta.

Nota: No funciona con el repositorio Item_Metadata.

@param array $args Query Args as expected by fetch

@return false|\Tainacan\Entities La entidad o falso si no se ha encontrado ninguna
 

### buscar_ids()


obtener filtros ID basados en argumentos WP_Query

para conocer todos los argumentos aceptados en el parámetro $args (@see https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al argumento WP_Query apropiado

@param array $args WP_Query args || int $args the item id

@return Array array of IDs;
@throws \Exception
 

### buscar_por_coleccion()


buscar filtros por colección, busca todos los filtros disponibles

@param Entities\Collection $collection
@param array $args WP_Query args plus disabled_metadata
@param string $output The desired output format (@see \Tainacan\Repositories\Repository::fetch_output() for possible values)

@return array Entities\Metadatum
@throws \Exception
 

### buscar_ids_por_colección()


fetch filtra los ID por colección, teniendo en cuenta la herencia

@param Entities\Collection|int $collection object or ID
@param array $args WP_Query args plus disabled_metadata

@return array List of metadata IDs
@throws \Exception
 

### insertar()



@param \Tainacan\Entities\Entity $obj

@return \Tainacan\Entities\Entity | bool
@throws \Exception
 

### actualizar()



### eliminar()


@param $filter_id

@return Entities\Filter
 

### basura()


@param $filter_id

@return mixed|Entities\Filter
 

## Uso

```php
$repository = \Tainacan\Repositories\Filters::get_instance();
```

## Propiedades de la entidad 

Estos son los atributos de Entidad para este repositorio. La clase Entity está en [classes/entities folder](../src/classes/entities/class-tainacan-filter.php)

Propiedad | Descripción | Slug | Obtención | Asignación | Almacenado como
--- | --- | --- | --- | --- | --- 
Estado|Estado|status|`$entity->get_status()`|`$entity->set_status()`|post_status
ID|Identificador unico|id|`$entity->get_id()`|`$entity->set_id()`|ID
Nombre|Nombre del filtro|name|`$entity->get_name()`|`$entity->set_name()`|post_title
Order|Filter order. This metadata is used if filters were manually ordered.|order|`$entity->get_order()`|`$entity->set_order()`|menu_order
Descripción|La descripción del filtro|description|`$entity->get_description()`|`$entity->set_description()`|post_content
Opciones de tipo de filtro|Opciones de tipo de filtro|filter_type_options|`$entity->get_filter_type_options()`|`$entity->set_filter_type_options()`|meta
Tipo|El tipo de filtro|filter_type|`$entity->get_filter_type()`|`$entity->set_filter_type()`|meta
Colección|El ID de la colección|collection_id|`$entity->get_collection_id()`|`$entity->set_collection_id()`|meta
Color|Color del filtro|color|`$entity->get_color()`|`$entity->set_color()`|meta
Metadato|Filtrar metadatos|metadatum|`$entity->get_metadatum()`|`$entity->set_metadatum()`|meta
Máximo de opciones|El número máximo de opciones para ser mostrado en la barra lateral de filtro|max_options|`$entity->get_max_options()`|`$entity->set_max_options()`|meta

### Uso de la entidad

Crear nuevo

```php
$entity = new \Tainacan\Entities\Filter();
```

Obtener existente por ID
```php
$repository = \Tainacan\Repositories\Filters::get_instance();
$entity = $repository->fetch(12);
echo 'My ID is ' . $entity->get_id(); // 12
```

