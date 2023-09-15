# API interna de Tainacan

Esta página muestra cómo funciona la API interna y cómo crear y recuperar todo tipo de entidades en Tainacan: Colecciones, artículos, taxonomías, metadatos, filtros, términos, metadatos de artículos y registros.

Es importante que primero te familiarices con los [conceptos clave](/es-mx/dev/key-concepts.md) de Tainacan. 


## Visión general

Tainacan añade una pequeña capa de abstracción sobre WordPress para manejar todas sus entidades, pero al final del día, todo se almacena como un post de un tipo de post específico (excepto términos). Así que para alguien acostumbrado al funcionamiento de WordPress, la estructura de datos no tiene ningún misterio.

Esta capa se basa en un patrón de Repositorio. Cada entidad con la que trata Tainacan tiene su correspondiente clase Repositorio y su correspondiente clase Entidad.

Los Repositorios son las clases que se comunican con la base de datos y saben dónde está todo almacenado y cómo encontrar las cosas. Es una clase singleton, por lo que sólo tiene una instancia disponible para ser utilizada por cualquier parte de la aplicación.

```php
$metadata_repo = Tainacan\Repositories\Metadata::get_instance();
```
Las clases Entities son la representación del individuo de cada repositorio. 

Esta abstracción nos permite manipular fácilmente las entidades sin preocuparnos de cómo guardarlas o recuperarlas.

Por ejemplo, los metadatos tienen muchos atributos, como `name` y `required` (que indica si este metadato es necesario o no). Como ya se ha mencionado, los metadatos se almacenan como entradas de un tipo especial llamado "tainacan-metadatum". El nombre del metadato es, por supuesto, `post_title` y este atributo `required` se almacena como `post_meta`.

Sin embargo, no necesitas preocuparte por eso. Este patrón te permite manipular una entidad Field y sus atributos de forma transparente, como por ejemplo:

```php
$metadatum->get_name(); // devuelve el nombre del metadato
$metadatum->get_required(); // devuelve el valor requerido 
$metadatum->set_name('nuevo nombre');
$metadatum->set_required('yes');
```

Las entidades y la base de datos](/es-mx/assets/images/entity-database.png)


Tainacan mapeará automáticamente los valores de los atributos hacia y desde donde están almacenados.

Cuando quieras obtener entidades de la base de datos, esta capa de abstracción se hace a un lado y te permite usar todo el poder y flexibilidad de `WP_Query`, que conoces y amas. Por ejemplo

``php
Repositories\Metadata::get_instance()->fetch('s=test');
```

El método `fetch` de los repositorios acepta los mismos argumentos que acepta `WP_Query` y lo utiliza internamente. Podrías usar `WP_Query` directamente si lo prefieres, pero usar la clase repositorio te da algunas ventajas. No tienes que saber el nombre del tipo de post, también puedes hacer fetch por algún atributo mapeado llamándolo directamente, sin tener que usar `meta_query` (o incluso saber si una propiedad está almacenada como atributo de post o post_meta). Vea más detalles en la sección Fetch más abajo.

Documentación para cada repositorio:

* Colecciones](/es-mx/dev/repositorio-colecciones.md)
* Metadatos'](/es-mx/dev/repository-metadata.md)
* Filtros](/es-mx/dev/repository-filters.md)
* Taxonomías](/es-mx/dev/repository-taxonomies.md)
* Artículos](/es-mx/dev/repository-items.md)
* Términos](/es-mx/dev/repository-terms.md)

## Obtención de datos

Cada repositorio tiene un método `fetch()` para obtener datos de la base de datos. Algunos repositorios pueden tener otros métodos de obtención, como `fetch_by_collection`, por favor consulte su referencia para averiguarlo.

### Obtención de un único individuo

Si tienes el ID o el objeto `WP_Post`, puedes obtener el elemento inicializando una nueva instancia de la clase Entity:

```php
$collection = new Tainacan\Entities\Collection($collection_post);
$collection = new TainacanEntities\Collection($collection_id);
```

Esto tendrá el mismo efecto que llamar al método `fetch` desde el repositorio pasando un entero como argumento. El repositorio asumirá que es el ID de la colección.

```php
$collection = Tainacan\Repositories\Collections::get_instance()->fetch($collection_id);
```

### Obtención de muchos individuos

Para obtener colecciones (o cualquier otra entidad) basándose en una consulta de búsqueda, puede llamar al método `fetch` del repositorio y utilizar cualquier parámetro de la clase `WP_Query`.

> La única excepción son los términos, que se guardan como términos de WordPress y reciben parámetros de la función `get_terms()`.

Ejemplos:

``php
$repo = Tainacan\Repositories\Collections::get_instance();
$items_repo = Tainacan\Repositories\Collections::get_instance();


$collections = $repo->fetch(); // obtener todas las colecciones públicas (o cualquier colección privada que el usuario actual pueda ver. Funciona exactamente igual que WP_Query)

/**
 * Obtener todos los elementos con título igual a 'test
 */
$items = $items_repo->fetch([
	'post_title' => 'test'
]);

/**
 * Obtener todos los elementos con título igual a 'test
 * pero usando el nombre de la propiedad mapeada en lugar del nombre real
 */
$items = $items_repo->fetch([
	'title' => 'test'
]);

```

Ten en cuenta que puedes usar los nombres de atributos mapeados para construir tu consulta, pero no pasa nada si quieres usar los nombres nativos de WordPress. Lo mismo se puede lograr con los atributos almacenados como post_meta:

```php
$repo = Tainacan\Repositories\Metadata::get_instance();

$metadata = $repo->fetch([
	'required' => 'yes'
]);

// es lo mismo que

$metadatos = $repo->fetch([
	'meta_query' => [
		[
			'key' => 'required',
			'value' => 'yes'
		]
	]
]);
```

### Salida

Los métodos Fetch aceptan un atributo para elegir cómo quieres la salida.

Por defecto, es un objeto `WP_Query`, que puedes usar para construir tu bucle como si hubieras llamado tú mismo a `WP_Query`.

Pero también puede ser un array de objetos Tainacan Entities. Esto es muy útil cuando quieres manipularlas.

## Inserción

Todos los repositorios tienen un método `insert()` que obtiene una Entidad como argumento y la guarda en la base de datos. Si la entidad tiene un ID, este método actualizará la entidad. (sí, de la misma forma que `wp_insert_post`)

Cada repositorio obtendrá como parámetro una instancia de su entidad correspondiente. Por ejemplo, el repositorio Collections `insert()` obtendrá una instancia de `Tainacan\Entities\Collection` y devolverá la entidad actualizada.

Sin embargo, antes de insertar, debes validar la entidad, llamando al método `validate()` que tiene cada entidad. Sólo se pueden insertar entidades válidas.

Así que esta es una rutina típica para crear una entidad:

```php
$collectionsRepo = \Tainacan\Repositories\Collections::get_instance();
$collection = new \Tainacan\Entities\Collection();
$collection->set_name('New Collection');

if ($collection->validate()) {
	$insertedCollection = $collectionsRepo->insert($collection);
	echo 'Now I have an ID! ' . $insertedCollection->get_id();
	
	// Lets update something
	$insertedCollection->set_description('new description');
	if ($insertedCollection->validate()) {
		$insertedCollection = $collectionsRepo->insert($insertedCollection);
		echo 'I still have the same ID! ' . $insertedCollection->get_id();
	} else {
		$errors = $insertedCollection->get_errors();
	}
	
} else {
	$validationErrors = $collection->get_errors();
	// Do something!
}

```

> IMPORTANTE: Los métodos `insert()` de los repositorios no comprueban los permisos de los usuarios. Si lo llama, guardará las entidades en la base de datos sin importar quién esté conectado (o incluso si algunos están conectados). De nuevo, esto funciona de la misma manera que WordPress funciona con sus funciones internas. Todas las comprobaciones de permisos deben hacerse antes de llamar a los métodos de inserción. Vea la sección "comprobación de permisos" más abajo.

El ejemplo anterior muestra cómo crear y actualizar una Colección, pero se aplica a todas las entidades. Todas funcionan de la misma manera.

Bueno, la Entidad de Metadatos de Ítems es ligeramente diferente.

### Manejo de Metadatos de Ítem

Los Metadatos de Artículo son un tipo especial de entidad, porque no es una entidad en sí misma. Más bien, es la relación entre un Item y un Campo. Y esta relación tiene un valor.

Imaginemos que una colección de bolígrafos tiene un metadato llamado "color". Esto significa que un elemento de esta colección tendrá una relación con este metadato, y esta relación tendrá un valor. "Rojo", por ejemplo.

Así que el constructor Entidad Metadatos Ítem obtiene dos entidades: un ítem y un metadato. Veamos un ejemplo, considerando que ya tengo una colección con metadatos y un ítem.

```php
// Considerando que $item es una Entidad Item existente y $metadatum una Entidad Field existente
$itemMetadada = new \Tainacan\Entities\ItemMetadataEntity($item, $metadatum);

$itemMetadata->set_value('Rojo');

if ($itemMetadata->validate()) {
	$ItemMetadataRepo = \Tainacan\Repositories\ItemMetadata::get_instance();
	$ItemMetadata = $ItemMetadataRepo->insert($ItemMetadata);
} else {
	$errors = $ItemMetadata->get_errors();
}

```

> Nota: Los Metadatos "Múltiples", que pueden tener más de un valor para el mismo ítem, funcionan de la misma manera, con la diferencia de que su valor es un array de valores y no un único valor. 

Si quieres iterar sobre todos los metadatos de un ítem o una colección, hay 2 métodos útiles que puedes usar. El repositorio de metadatos tiene un método `fetch_by_collection()` que obtendrá todos los metadatos de una colección dada y los devolverá en el orden correcto.

Además, el método `fetch()` del repositorio de ItemMetadata devolverá un array de entidades ItemMetadata relacionadas con un ítem dado. 


### Más sobre validación

TODO: documentar las cadenas de validación

Todas las validaciones validan la propiedad con la validación declarada en el método get_map() del repositorio.

Validar item -> llamar a ItemMetadata->validate() para cada metadato

Validar ItemMetadata -> llamar a $metadatumType->validate() para el tipo Field del metadato.

Validar Campo -> llamar a validar_opciones() del tipo Campo

## Comprobación de permisos

Cada tipo de entidad se almacena como un tipo de post y tiene su propio conjunto de capacidades. Por ejemplo, las Colecciones son entradas del tipo `tainacan-collection`, y tienen capacidades asociadas como `edit_tainacan-collections` y `edit_others_tainacan-collections`. 

Si está familiarizado con los roles y capacidades de WordPress y, más específicamente, con las capacidades de los tipos de entrada personalizados, esto es muy fácil de entender. Si no lo está, es mejor que aprenda primero cómo WordPress maneja las capacidades de los tipos de entradas personalizadas y entenderá fácilmente cómo funciona Tainacan con él.

Para ver una lista completa de las capacidades de Tainacan vea [Tainacan Permissions](/dev/roles-capabilities.md).

Cuando usas tipos de entrada personalizados de WordPress, no necesitas saber el nombre exacto de las capacidades de un tipo de entrada para comprobarlas. El objeto post type tiene una propiedad llamada `cap` que te informa de cuales son las capacidades específicas que el post type tiene para las acciones del post type.

Por ejemplo, para un tipo de entrada llamado `book`, que tiene capacidades como `edit_books`, podrías:

```php
if (current_user_can('editar_libros')) 
	// hacer algo
```
O
```php
$libro_cpt = get_post_type_object('libro');
if (current_user_can( $book_cpt->cap->edit_posts )) 
	// hacer algo
```

Esto hace la vida más fácil y Tainacan funciona exactamente igual.

```php

$collection = new \Tainacan\Entities\Collection(23);

var_dump( $collection->get_capabilities() ); // todas las capacidades de las colecciones tipo post

```

Esto es especialmente útil cuando se manejan Items, porque son posts de tipo post creados dinámicamente, y costaría demasiado averiguar los nombres correctos de las capacidades.

Además, cada entidad implementa 3 métodos para comprobar las Meta Capacidades `edit_post`, `delete_post` y `read_post`, así que en lugar de:

```php
current_user_can( $item->get_capabilities()->edit_post, $item->get_id() ); 
```

Puedes simplemente
```php
$item->can_edit(); 
```

Así que ahora ya sabes cómo comprobar el permiso cuando un usuario quiere actualizar un elemento. Aquí está el código completo:

```php
$collectionsRepo = \Tainacan\Repositories\Collections::get_instance();
$collection = new \Tainacan\Entities\Collection(23);

if ($collection->can_edit()) {
	
	$collection->set_description('new description');
	
	if ($collection->validate()) {
		
		$collection = $collectionsRepo->insert($collection);
		
	} else {
		$validationErrors = $collection->get_errors();
		// Do something!
	}
} else {
	echo 'Lo siento, no tienes los permisos requeridos para eso';
}
```
