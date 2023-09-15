# Repositorio de términos

## Métodos principales

Estos son los métodos más utilizados de este repositorio. Para una lista completa vea [el archivo del repositorio](https://github.com/tainacan/tainacan/tree/master/src/classes/repositories/class-tainacan-terms.php).


### buscar()


Obtener términos basados en ID u obtener términos args

Los términos se almacenan como términos normales de WordPress. Comprobar (@ver https://developer.wordpress.org/reference/functions/get_terms/) get_terms() documentos
para conocer todos los argumentos aceptados en el parámetro $args

El segundo parámetro especifica de qué taxonomías deben obtenerse los términos.
Puede pasar el ID u objeto de taxonomía, o una matriz de IDs u objetos de taxonomías

@param array $args WP_Query args || int $args the term id
@param array $taxonomies Array Entities\Taxonomy || Array int terms IDs || int collection id || Entities\Taxonomy taxonomy object

@return array of Entities\Term objects || Entities\Term
 

### buscar_uno()

Obtiene una Entidad basándose en los argumentos de la consulta.

Nota: No funciona con el repositorio Item_Metadata.

@param array $args Query Args as expected by fetch

@return false|\Tainacan\Entities The entity or false if none was found
 

### insertar()


@param Entities\Entity $term

@return Entities\Entity|Entities\Term
@throws \Exception
 

### actualizar()



### eliminar()


@param Array $delete_args has ['term_id', 'taxonomy']

@return bool|int|mixed|\WP_Error
 

### basura()


@param $term_id

@return mixed|void
 

## Uso 

```php
$repository = \Tainacan\Repositories\Terms::get_instance();
```

## Propiedades de Entidad

These are the Entity attributes for this repository. The Entity class is at [classes/entities folder](../src/classes/entities/class-tainacan-term.php)

Propiedad | Descripción | Slug | Obtener | Asignar | Almacenado como
--- | --- | --- | --- | --- | --- 
Estado|Estado|status|`$entity->get_status()`|`$entity->set_status()`|post_status
ID|Identificador único|term_id|`$entity->get_term_id()`|`$entity->set_term_id()`|term_id
Nombre|Nombre del término|name|`$entity->get_name()`|`$entity->set_name()`|name
Padre|Padre del término|parent|`$entity->get_parent()`|`$entity->set_parent()`|parent
Descripción|Descripción del término|description|`$entity->get_description()`|`$entity->set_description()`|description
Taxonomía|El término taxonomía|taxonomy|`$entity->get_taxonomy()`|`$entity->set_taxonomy()`|taxonomy
Usuario|El creador del término|user|`$entity->get_user()`|`$entity->set_user()`|termmeta
Imagen de cabecera|La imagen que se utilizará en la cabecera del término|header_image_id|`$entity->get_header_image_id()`|`$entity->set_header_image_id()`|termmeta
Ocultar vacíos|Ocultar términos vacíos|hide_empty|`$entity->get_hide_empty()`|`$entity->set_hide_empty()`|hide_empty

### Uso de la Entidad


Crear nuevo

```php
$entity = new \Tainacan\Entities\Term();
```

Obtener existente por ID
```php
$repository = \Tainacan\Repositories\Terms::get_instance();
$entity = $repository->fetch(12);
echo 'My ID is ' . $entity->get_id(); // 12
```

