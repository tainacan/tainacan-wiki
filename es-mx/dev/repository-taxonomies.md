# Repositorio de taxonomías

## Métodos principales

Estos son los métodos más utilizados de este repositorio. Para una lista completa vea [el archivo del repositorio](https://github.com/tainacan/tainacan/tree/master/src/classes/repositories/class-tainacan-taxonomies.php).


### buscar()


buscar taxonomías basadas en ID o argumentos WP_Query

Las taxonomías se almacenan como entradas. Consulta la documentación de WP_Query
para conocer todos los argumentos aceptados en el parámetro $args (@see https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al
argumento WP_Query apropiado

Si se pasa un número a $args, devolverá un objeto \Tainacan\Entities\Taxonomy. Pero si el post no se encuentra o no coincide con el tipo de entrada de la entidad, devolverá una matriz vacía

@param array $args WP_Query args | int $args the taxonomy id
@param string $output  El formato de salida deseado (@ver \Tainacan\Repositories\Repository::fetch_output() para posibles valores)

@return \WP_Query|Array una instancia de wp query o un array de entidades;
 

### buscar_uno()


Obtiene una Entidad basándose en los argumentos de la consulta.

Nota: No funciona con el repositorio Item_Metadata.

@param array $args Query Args as expected by fetch

@return false|\Tainacan\Entities La entidad o falso si no se ha encontrado ninguna
 

### buscar_por_coleccion()


buscar taxonomías por colección, teniendo en cuenta la herencia

@param Entities\Collection $collection
@param array $args WP_Query args plus disabled_metadata
@param string $output The desired output format (@mirar \Tainacan\Repositories\Repository::fetch_output() para posibles valores)

@return array Entities\Metadatum
@throws \Exception
 

### términos_existentes()


* Comprobar si ya existe un término 
*
* @param Entities\Taxonomy $taxonomy El objeto de taxonomía donde buscar los términos
* @param string $term_name El término nombre
* @param int|null $parent El ID del término padre para buscar hijos o null para buscar términos en cualquier posición jerárquica. Por defecto es null 
* @param bool $return_term se devuelve el objeto término si existe. por defecto es false 
* 
* @return bool|WP_Term devuelve un booleano que indica si el término existe. Si $return_term es true y el término existe, devuelve el objeto WP_Term 


### insertar()

@param Entities\Taxonomy $taxonomy

@return Entities\Entity
 

### actualizar()



### eliminar()



### basura()


@param $taxonomy_id

@return mixed|Entities\Taxonomy
 

## Uso

```php
$repository = \Tainacan\Repositories\Taxonomies::get_instance();
```

## Propiedades de entidad 

These are the Entity attributes for this repository. The Entity class is at [classes/entities folder](../src/classes/entities/class-tainacan-taxonomy.php)

Propiedad | Descripción | Slug | Obtener | Asignar | Almacenado como
--- | --- | --- | --- | --- | --- 
Estado|Estado|status|`$entity->get_status()`|`$entity->set_status()`|post_status
ID|Identificador unico|id|`$entity->get_id()`|`$entity->set_id()`|ID
Nombre|Nombre de la taxonomía|name|`$entity->get_name()`|`$entity->set_name()`|post_title
Descripción|La descripción de la taxonomía|description|`$entity->get_description()`|`$entity->set_description()`|post_content
Slug|El slug de la taxonomía|slug|`$entity->get_slug()`|`$entity->set_slug()`|post_name
Permitir insertar|Permitir/Denegar la creación de nuevos términos en la taxonomía|allow_insert|`$entity->get_allow_insert()`|`$entity->set_allow_insert()`|meta
Habilitado para tipos de entradas|Habilite también esta taxonomía para otros tipos de entradas de WordPress|enabled_post_types|`$entity->get_enabled_post_types()`|`$entity->set_enabled_post_types()`|meta_multi
Colecciones|Identificadores de las colecciones en las que se utiliza la taxonomía|collections_ids|`$entity->get_collections_ids()`|`$entity->set_collections_ids()`|meta_multi

### Uso de la Entidad


Crear nuevo

```php
$entity = new \Tainacan\Entities\Taxonomy();
```

Obtener existente por ID
```php
$repository = \Tainacan\Repositories\Taxonomies::get_instance();
$entity = $repository->fetch(12);
echo 'My ID is ' . $entity->get_id(); // 12
```

