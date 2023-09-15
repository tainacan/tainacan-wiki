# Repositorio de metadatos

## Métodos principales

Estos son los métodos más utilizados de este repositorio. Para una lista completa vea [el archivo del repositorio](https://github.com/tainacan/tainacan/tree/master/src/classes/repositories/class-tainacan-metadata.php).


### buscar()


buscar metadatos basados en ID o argumentos WP_Query

los metadatos se almacenan como entradas. Consulta la documentación de WP_Query
para conocer todos los argumentos aceptados en el parámetro $args (@see https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al argumento WP_Query apropiado

Si se pasa un número a $args, devolverá un objeto \Tainacan\Entities\Metadatum.  Pero si el post no se encuentra o
no coincide con el tipo de entrada de la entidad, devolverá un array vacío.

@param array $args WP_Query args || int $args the metadatum id
@param string $output The desired output format (@see \Tainacan\Repositories\Repository::fetch_output() for possible values)

@return Entities\Metadatum|\WP_Query|Array an instance of wp query OR array of entities;
@throws \Exception
 

### buscar_uno()


Obtiene una Entidad basándose en los argumentos de la consulta.

Nota: No funciona con el repositorio Item_Metadata.

@param array $args Query Args as expected by fetch

@return false|\Tainacan\Entities The entity or false if none was found
 

### buscar_ids()


obtener IDs de metadatos basados en argumentos WP_Query

para conocer todos los argumentos aceptados en el parámetro $args (@mirar https://developer.wordpress.org/reference/classes/wp_query/)
También puede utilizar una propiedad asignada, como nombre y descripción, como argumento y se asignará al
argumento WP_Query apropiado

@param array $args WP_Query args || int $args the item id

@return Array array of IDs;
@throws \Exception
 

### buscar_por_coleccion()


obtener metadatos por colección, teniendo en cuenta la herencia y el orden

@param Entities\Collection $collection
@param array $args WP_Query args plus disabled_metadata
@param string $output The desired output format (@see \Tainacan\Repositories\Repository::fetch_output() for possible values)

@return array Entities\Metadatum
@throws \Exception
 

### buscar_ids_por_coleccion()


recuperar los ID de metadatos por colección, teniendo en cuenta la herencia

@param Entities\Collection|int $collection object or ID
@param array $args WP_Query args plus disabled_metadata

@return array List of metadata IDs
@throws \Exception
 

### buscar_tipos_de_metadatos()


obtener todas las clases de metadatos registradas

Las posibles salidas son:
CLASS (default) - devuelve el Nombre de clase de los tipos de metadatos registrados
NAME - devuelve un array con los nombres de los tipos de metadatos registrados

@param $output string CLASS | NAME

@return array of Entities\Metadata_Types\Metadata_Type classes pathname
 

### obtener_metadatos_del_núcleo()


devuelve todos los metadatos básicos de una colección específica

@param Entities\Collection $collection

@return Array|\WP_Query
@throws \Exception
 

### obtener_metadato_de_título_del_núcleo()


Obtener el metadato de título principal de una colección

@param Entities\Collection $collection

@return \Tainacan\Entities\Metadatum The Core Title Metadatum
@throws \Exception
 

### obtener_metadato_de_descripción_del_núcleo()


Obtener el metadato de descripción básica de una colección

@param Entities\Collection $collection

@return \Tainacan\Entities\Metadatum The Core Description Metadatum
@throws \Exception
 

### buscar_todos_los_valores_del_metadato()


 Devuelve todos los valores posibles de un metadato 
 
 Cada metadato es una etiqueta con el nombre del metadato y el valor.
 
 Si se pasa un ID, un slug o un objeto Tainacan\Entities\Metadatum en el argumento 'metadata', devuelve sólo un metadato, en caso contrario
 devuelve todos los metadatos
 
 @param int $metadatum_id ID de los metadatos de los que se obtendrán los valores
 @param array|string $args {
      Opcional. Array o string de argumentos.
 
 @type mixed $collection_id El ID de la colección que desea considerar o null para todas las colecciones. Si se establece una colección
 sólo se devolverán los valores aplicados a los elementos de esta colección
 
     @type int $number El número de valores a devolver (para la paginación). Vacío por defecto (ilimitado)
 
     @type int $offset El desplazamiento (para la paginación). Por defecto 0
 
     @type array|bool $items_filter Array en el mismo formato utilizado en @mirar \Tainacan\Repositories\Items::fetch(). Filtrará los resultados para devolver sólo los valores utilizados en los elementos dentro de este criterio. Si es falso, devolverá todos los valores, incluso los no utilizados. Default [] (todos los elementos)
 
     @type array $include Array de ids a incluir en el resultado. Por defecto [] (nada)
 
     @type array $search Cadena a buscar. Sólo devolverá valores que tengan esta cadena. Por defecto '' (nada)
 
     @type array $parent_id Utilizado por los metadatos de taxonomía. El ID del término padre del que recuperar términos. Por defecto 0 
 
*     @type bool $count_items Incluye el recuento de elementos que se pueden encontrar en cada valor (utiliza $items_filter también). Falso por defecto
*
*     @type string   $last_term El último término devuelto cuando se utiliza un elasticsearch para calcular la faceta.
 
 }
 
 @return array        Array con el número total de valores encontrados. El número total de páginas con el número actual y los resultados con id y etiqueta para cada valor. Los términos también incluyen padre, taxonomía y número de hijos.
  

### insertar()


@param \Tainacan\Entities\Metadatum $metadatum

@return \Tainacan\Entities\Metadatum
{@inheritDoc}
@see \Tainacan\Repositories\Repository::insert()
 

### actualizar()


@param $object
@param $new_values

@return mixed|string|Entities\Entity
@throws \Exception
 

### eliminar()


@param $metadatum_id

@return mixed|void
@throws \Exception
 

### basura()


@param $metadatum_id

@return mixed|Entities\Metadatum
@throws \Exception
 

## Uso

```php
$repository = \Tainacan\Repositories\Metadata::get_instance();
```

## Propiedades de Entidad

Estos son los atributos de Entidad para este repositorio. La clase Entidad está en [classes/entities folder](../src/classes/entities/class-tainacan-metadatum.php)

Propiedad | Descripción | Slug | Obtener | Asignar | Almacenado como
--- | --- | --- | --- | --- | --- 
Estado|Estado|status|`$entity->get_status()`|`$entity->set_status()`|post_status
ID|Identificador unico|id|`$entity->get_id()`|`$entity->set_id()`|ID
Nombre|Nombre del metadato|name|`$entity->get_name()`|`$entity->set_name()`|post_title
Slug|Una representación de cadena única y depurada de los metadatos|slug|`$entity->get_slug()`|`$entity->set_slug()`|post_name
Orden|Metadatos de orden. Estos metadatos se utilizarán si las colecciones se ordenaron manualmente.|order|`$entity->get_order()`|`$entity->set_order()`|menu_order
Metadatos padre|Padre|parent|`$entity->get_parent()`|`$entity->set_parent()`|post_parent
Descripción|La descripción de los metadatos|description|`$entity->get_description()`|`$entity->set_description()`|post_content
Tipo|El tipo de metadatos|metadata_type|`$entity->get_metadata_type()`|`$entity->set_metadata_type()`|meta
Obligatorio|Los metadatos son obligatorios. Todos los artículos de esta colección deben rellenar este campo|required|`$entity->get_required()`|`$entity->set_required()`|meta
Valor único|El valor de los metadatos debe ser único para todos los artículos de esta colección|collection_key|`$entity->get_collection_key()`|`$entity->set_collection_key()`|meta
Múltiple|Permitir que los elementos tengan más de un valor para este metadato|multiple|`$entity->get_multiple()`|`$entity->set_multiple()`|meta
Cardinalidad|Número de múltiplos posibles metadatos|cardinality|`$entity->get_cardinality()`|`$entity->set_cardinality()`|meta
Máscara|La máscara que se utilizará en los metadatos|mask|`$entity->get_mask()`|`$entity->set_mask()`|meta
Valor por defecto|El valor por defecto de los metadatos|default_value|`$entity->get_default_value()`|`$entity->set_default_value()`|meta
Opciones de tipo de metadatos|Opciones específicas para el tipo de metadatos|metadata_type_options|`$entity->get_metadata_type_options()`|`$entity->set_metadata_type_options()`|meta
Colección|ID de la colección|collection_id|`$entity->get_collection_id()`|`$entity->set_collection_id()`|meta
El valor de los metadatos acepta sugerencias|Permitir que la comunidad sugiera valores diferentes para los metadatos|`$entity->get_accept_suggestion()`|`$entity->set_accept_suggestion()`|meta
Relación de mapeo de metadatos|Las opciones de mapeo de metadatos. Los metadatos se pueden configurar para que coincidan con otro tipo de distribución de datos|exposer_mapping|`$entity->get_exposer_mapping()`|`$entity->set_exposer_mapping()`|meta
Mostrar|Mostrar por defecto en el listado o no mostrar o no mostrar nunca.|display|`$entity->get_display()`|`$entity->set_display()`|meta
El URI de descripción del metadato semántico|El URI de descripción del metadato semántico como: https://schema.org/URL|semantic_uri|`$entity->get_semantic_uri()`|`$entity->set_semantic_uri()`|meta

### Entity usage


Crear nuevo

```php
$entity = new \Tainacan\Entities\Metadatum();
```

Obtener extistente por ID
```php
$repository = \Tainacan\Repositories\Metadata::get_instance();
$entity = $repository->fetch(12);
echo 'My ID is ' . $entity->get_id(); // 12
```

