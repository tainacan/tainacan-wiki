# Funciones y capacidades

Este documento describe cómo se implementan los roles y capacidades de Tainacan a partir de la versión 0.15. Para versiones anteriores, consulte la antigua página [permissions](/es-mx/dev/permissions.md).

Sirve como referencia a los desarrolladores para entender cómo funciona esto y también como base para escribir la documentación para los usuarios finales.

También explica cómo WordPress maneja las comprobaciones de capacidades, ya que no es un tema muy bien documentado.

## Capacidades de Tainacan 

Tainacan introduce varias capacidades en WordPress. Se dividen en dos grupos:

### Capacidades Generales

Capacidades relativas a todo el repositorio


```php
'manage_tainacan' => [
    'display_name' => __('Manage Tainacan', 'tainacan'),
    'description' => __('Manage all Tainacan features and all Collections', 'tainacan')
],
'tnc_rep_edit_users' => [
    'display_name' => __('Manage Users', 'tainacan'),
    'description' => __('Manage users roles and permissions', 'tainacan')
],
'tnc_rep_edit_collections' => [
    'display_name' => __('Create Collections', 'tainacan'),
    'description' => __('Create new collections to the repository and edit its details', 'tainacan'),
    'dependencies' => [
        'upload_files'
    ]
],
'tnc_rep_delete_collections' => [
    'display_name' => __('Delete Collections', 'tainacan'),
    'description' => __('Delete their own collections from the repository', 'tainacan')
],
'tnc_rep_edit_taxonomies' => [
    'display_name' => __('Create and edit taxonomies', 'tainacan'),
    'description' => __('Create new taxonomies and edit its terms', 'tainacan')
],
'tnc_rep_edit_others_taxonomies' => [
    'display_name' => __('Edit all Taxonomies', 'tainacan'),
    'description' => __('Edit all taxonomies and terms, including taxonomies created by other users', 'tainacan')
],
'tnc_rep_delete_taxonomies' => [
    'display_name' => __('Delete Taxonomies', 'tainacan'),
    'description' => __('Delete taxonomies', 'tainacan')
],
'tnc_rep_delete_others_taxonomies' => [
    'display_name' => __('Delete all Taxonomies', 'tainacan'),
    'description' => __('Delete all taxonomies and terms, including taxonomies created by other users', 'tainacan')
],
'tnc_rep_edit_metadata' => [
    'display_name' => __('Manage Repository Metadata', 'tainacan'),
    'description' => __('Create/edit metadata in repository level', 'tainacan')
],
'tnc_rep_edit_filters' => [
    'display_name' => __('Manage Repository Filters', 'tainacan'),
    'description' => __('Create/edit filters in repository level', 'tainacan')
],
'tnc_rep_delete_metadata' => [
    'display_name' => __('Delete Repository Metadata', 'tainacan'),
    'description' => __('Delete metadata in repository level', 'tainacan')
],
'tnc_rep_delete_filters' => [
    'display_name' => __('Delete Repository Filters', 'tainacan'),
    'description' => __('Delete filters in repository level', 'tainacan')
],
'tnc_rep_read_private_collections' => [
    'display_name' => __('View private collections', 'tainacan'),
    'description' => __('Access to view and browse private collections', 'tainacan')
],
'tnc_rep_read_private_taxonomies' => [
    'display_name' => __('View private taxonomies', 'tainacan'),
    'description' => __('Access to private taxonomies information', 'tainacan')
],
'tnc_rep_read_private_metadata' => [
    'display_name' => __('View private repository metadata', 'tainacan'),
    'description' => __('Access to private metadata in repository level', 'tainacan')
],
'tnc_rep_read_private_filters' => [
    'display_name' => __('View private repository filters', 'tainacan'),
    'description' => __('Access to private filters in repository level', 'tainacan')
],
'tnc_rep_read_logs' => [
    'display_name' => __('View Logs', 'tainacan'),
    'description' => __('Access to activities logs. Note that activity logs might contain information on private collections, items and metadata.', 'tainacan')
],
```
*(Lista extraída desde `src/classes/class-tainacan-roles.php)*

### Capacidades de la colección

Cada colección tiene su propio conjunto de capacidades, donde `%d` es el ID de la colección.

```php
'manage_tainacan_collection_%d' => [
    'display_name' => __('Manage Collection', 'tainacan'),
    'description' => __('Manage all collection settings, items, metadata, filters, etc.', 'tainacan')
],
'tnc_col_%d_edit_users' => [
    'display_name' => __('Edit users permissions', 'tainacan'),
    'description' => __('Configure which roles and users have permission to perform actions in this collection', 'tainacan')
],
'tnc_col_%d_bulk_edit' => [
    'display_name' => __('Bulk edit items', 'tainacan'),
    'description' => __('Access to the Bulk edit items feature.', 'tainacan')
],
'tnc_col_%d_edit_metadata' => [
    'display_name' => __('Manage metadata', 'tainacan'),
    'description' => __('Create/edit metadata in this collection', 'tainacan')
],
'tnc_col_%d_edit_filters' => [
    'display_name' => __('Manage filters', 'tainacan'),
    'description' => __('Create/edit filters in this collection', 'tainacan')
],
'tnc_col_%d_delete_metadata' => [
    'display_name' => __('Delete metadata', 'tainacan'),
    'description' => __('Delete metadata in this collection', 'tainacan')
],
'tnc_col_%d_delete_filters' => [
    'display_name' => __('Delete filters', 'tainacan'),
    'description' => __('Delete filters in this collection', 'tainacan')
],
'tnc_col_%d_read_private_metadata' => [
    'display_name' => __('View private metadata', 'tainacan'),
    'description' => __('Access private metadata in this collection', 'tainacan')
],
'tnc_col_%d_read_private_filters' => [
    'display_name' => __('View private filters', 'tainacan'),
    'description' => __('Access private filters in this collection', 'tainacan')
],
'tnc_col_%d_read_private_items' => [
    'display_name' => __('View private items', 'tainacan'),
    'description' => __('Access to view private items in this collection', 'tainacan')
],
'tnc_col_%d_edit_items' => [
    'display_name' => __('Edit items', 'tainacan'),
    'description' => __('Create and edit items in this collection', 'tainacan'),
    'dependencies' => [
        'upload_files'
    ]
],
'tnc_col_%d_publish_items' => [
    'display_name' => __('Publish items', 'tainacan'),
    'description' => __('Publish items in this collection', 'tainacan'),
    'dependencies' => [
        'upload_files'
    ]
],
'tnc_col_%d_edit_others_items' => [
    'display_name' => __('Edit others items', 'tainacan'),
    'description' => __('Edit items created by other users in this collection', 'tainacan'),
    'dependencies' => [
        'upload_files'
    ]
],
'tnc_col_%d_edit_published_items' => [
    'display_name' => __('Edit published items', 'tainacan'),
    'description' => __('Edit items in this collection after they are published', 'tainacan'),
    'dependencies' => [
        'upload_files'
    ]
],
'tnc_col_%d_delete_items' => [
    'display_name' => __('Delete items', 'tainacan'),
    'description' => __('Delete items in this collection', 'tainacan'),
],
'tnc_col_%d_delete_others_items' => [
    'display_name' => __('Delete others items', 'tainacan'),
    'description' => __('Delete items created by other users in this collection', 'tainacan'),
],
'tnc_col_%d_delete_published_items' => [
    'display_name' => __('Delete published items', 'tainacan'),
    'description' => __('Delete items in this collection after they are published', 'tainacan'),
],

```
*(Lista extraída desde `src/classes/class-tainacan-roles.php)*

### Supercapacidades

Hay algunas capacidades que tienen superpoderes y anulan otras capacidades:

* `manage_tainacan` -> Si esta capacidad está presente, la comprobación de cualquier capacidad que empiece por `tnc_` devolverá `true`. Esto incluye capacidades de repositorio y colección. Un usuario o rol con esta capacidad se considera un "administrador de Tainacan"
* `manage_tainacan_collection_%d` -> Si esta capacidad está presente para una colección, la comprobación de cualquier capacidad que empiece por `tnc_col_%s` devolverá `true`. Donde `%d` es el ID de la colección. Un usuario o rol con esta capacidad es un gestor de colecciones y puede hacer todo en esta colección.
* Para cada capacidad que empiece por `tnc_col_%d` existe una capacidad relativa `tnc_col_all` que se aplicará a todas las colecciones. Por ejemplo, si `tnc_col_all_edit_items` está presente, la comprobación de `tnc_col_%d_edit_items` con CUALQUIER número que sustituya a `%d` devolverá `true`. Esta es una forma de asignar una capacidad a todas las colecciones, incluidas las colecciones que aún no se han creado.
* `manage_tainacan_collection_all` -> la misma idea de lo anterior. Si esta capacidad está presente cualquier comprobación a cualquier capacidad de colección de cualquier ID de colección devolverá `true`. Un usuario o rol con esta capacidad será capaz de hacer todo en todas las colecciones, pero puede que no tenga otras capacidades de repositorios.
* Propietario de la colección -> Al comprobar cualquier capacidad `tnc_col_%d`, Tainacan verificará si el usuario es el propietario (autor) de la colección. Si lo es, la comprobación también devolverá `true`, incluso si el usuario no tiene la capacidad. En resumen, es como si a cada usuario se le concediera automáticamente `manage_tainacan_collection_%d` para sus colecciones.

Además, cualquier usuario con la capacidad nativa de WordPress `edit_users` siempre tendrá `tnc_rep_edit_users`.

## Roles por defecto

Por defecto, los **Administradores** y **Editores** de WordPress tienen la capacidad `manage_tainacan`.

Además, Tainacan crea 3 roles con las siguientes capacidades:

```php

'tainacan-administrator' => [
    'slug' => 'tainacan-administrator',
    'display_name' => 'Tainacan Administrator',
    'caps' => [
        'manage_tainacan' => true
    ]
],
'tainacan-editor' => [
    'slug' => 'tainacan-editor',
    'display_name' => 'Tainacan Editor',
    'caps' => [
        'tnc_rep_edit_collections' => true,
        'tnc_rep_delete_collections' => true,
        'tnc_rep_edit_taxonomies' => true,
        'tnc_rep_edit_others_taxonomies' => true,
        'tnc_rep_delete_taxonomies' => true,
        'tnc_rep_delete_others_taxonomies' => true,
        'tnc_rep_edit_metadata' => true,
        'tnc_rep_edit_filters' => true,
        'tnc_rep_delete_metadata' => true,
        'tnc_rep_delete_filters' => true,
        'tnc_rep_read_private_collections' => true,
        'tnc_rep_read_private_taxonomies' => true,
        'tnc_rep_read_private_metadata' => true,
        'tnc_rep_read_private_filters' => true,
        'tnc_rep_read_logs' => true,
        'manage_tainacan_collection_all' => true
    ]
],
'tainacan-author' => [
    'slug' => 'tainacan-author',
    'display_name' => 'Tainacan Author',
    'caps' => [
        'tnc_rep_edit_collections' => true,
        'tnc_rep_edit_taxonomies' => true,
        'tnc_rep_read_private_collections' => true,
        'tnc_rep_read_private_taxonomies' => true,
        'tnc_rep_read_private_metadata' => true,
        'tnc_rep_read_private_filters' => true,
    ]
],

```

## Comprobación de permisos

Cada entidad (instancias de `Tainacan\Entities\Entity`) tiene un conjunto de métodos para comprobar los permisos:

* `can_edit([$user])` -> comprueba si el usuario puede editar la entidad.
* `can_delete([$user])` -> comprueba si el usuario puede borrar la entidad.
* `can_read([$user])` -> comprueba si el usuario puede leer/ver la entidad.
* `can_publish([$user])` -> comprueba si el usuario puede publicar la entidad.

Todos estos métodos reciben un argumento opcional `$user`. Si se omite `$user`, se comprobará con el usuario actual. Si `$user` es informado, comprobará si el usuario informado puede realizar la acción.

Todos estos métodos son inteligentes y tienen en cuenta todas las reglas de Tainacan. Por ejemplo:

* Si un ítem es público, también comprobará si la colección del ítem es pública o privada y si el usuario tiene la capacidad apropiada `read_private_*`.
* Comprobará si un filtro es un repositorio o un filtro de colección y comprobará la capacidad apropiada para decidir si el usuario puede ver o editar el filtro.

Así que esta es la forma preferida de comprobar las capacidades. También porque no tienes que molestarte en saber el nombre de la capacidad.

Por ejemplo, si `$item` es una entidad Item:

```php
// this
current_user_can( 'tnc_col_' . $item->get_collection_id() . '_edit_item', $item->get_id() );

// is the same as:
current_user_can( $item->get_capabilities()->edit_post, $item->get_id() );

// which is the same as simply
$item->can_edit();

```

Otra ventaja de utilizar métodos de Entidades es que funciona con usuarios anónimos. current_user_can()` siempre devolverá `false` si el usuario no ha iniciado sesión, incluso si está comprobando si el usuario puede leer un elemento público. `$item->can_read()` devolverá `true` si el elemento es público y el usuario no ha iniciado sesión.

¡¡¡## !!! ¡¡¡Aviso importante sobre la comprobación de permisos !!!

Es muy importante tener en cuenta que métodos del repositorio como `insert` o `fetch` **NO VERIFICARÁN LOS PERMISOS DEL USUARIO**. Si obtiene elementos de un repositorio o inserta elementos en él, Tainacan no lo comprobará y puede devolver el elemento privado o insertar elementos incluso si el usuario no ha iniciado sesión.

Así que si estás buscando, insertando, actualizando, creando o borrando algo, ** TU CÓDIGO DEBE COMPROBAR LOS PERMISOS** antes de realizar la acción.

Los puntos finales de la API comprueban los permisos correctamente.

**HAY DOS EXCEPCIONES:**

Si obtiene algo (artículo, colecciones, etc...) y no informa de un `post_status` en su consulta, WordPress comprobará si el usuario actual puede `read_private_post` para el tipo de entrada y devolverá sólo las entradas públicas, e incluirá o no las entradas privadas dependiendo de los permisos del usuario.

Así que, en resumen:

* Si consultas por entidades sin informar el `post_status` que quieres, comprobará los permisos y devolverá sólo los posts que el usuario actual pueda leer. Esta es la forma correcta de devolver todo lo que el usuario puede ver
* Si consultas por entidades e informas un `post_status` devolverá los posts sin importar cuales son los permisos del usuario actual. Así que si quieres consultar los mensajes privados, debes comprobar los permisos del usuario antes. (Los puntos finales de la API son inteligentes y bloquean la petición si informas un post_status privado y no tienes los permisos adecuados)

La SEGUNDA excepción es cuando se obtienen elementos sin informar ni del `post_status` ni de una `collection`. Esto ocurre cuando quieres obtener todos los ítems de todas las colecciones en una vista de repositorio.

En estos casos, Tainacan comprobará individualmente los permisos de cada colección y sólo devolverá los ítems que el usuario actual pueda leer. (considerando elementos públicos/privados y elementos públicos dentro de colecciones privadas).

De nuevo, si pides explícitamente un `post_status` devolverá todos los ítems con este estado sin realizar ninguna comprobación.

## Cómo se implementa

Todas las entidades de Tainacan (colecciones, ítems, metadatos, filtros, registros y taxonomías), excepto los Términos, se almacenan como posts de un determinado tipo de post personalizado.

El conjunto de capacidades para cada tipo de entrada está disponible a través del método `get_capabilities()` de cada Entidad.

Algunas de ellas se declaran explícitamente, y otras se generan automáticamente pasando el argumento `capability_type` a la función de WordPress `register_post_type()`.

Por ejemplo, las capacidades de las colecciones se declaran en el método `get_capabilities()`, mientras que las capacidades de los metadatos se generan automáticamente utilizando el atributo `capability_type` de la clase.


Si no está familiarizado con las capacidades de los tipos de entrada personalizados, lea la [documentación de register_post_type](https://developer.wordpress.org/reference/functions/register_post_type/) y [esta entrada del blog](http://justintadlock.com/archives/2010/07/10/meta-capabilities-for-custom-post-types). Es un buen comienzo.

Echemos un vistazo a las capacidades de las taxonomías (de `classes/entities/class-tainacan-taxonomy.php`):

```php
    public function get_capabilities() {

		return (object) [
			// meta
			'edit_post' => "tnc_rep_edit_taxonomy",
			'read_post' => "tnc_rep_read_taxonomy",
			'delete_post' => "tnc_rep_delete_taxonomy",

			// primitive
			'edit_posts' => "tnc_rep_edit_taxonomies",
			'edit_others_posts' => "tnc_rep_edit_others_taxonomies",
			'publish_posts' => "tnc_rep_edit_taxonomies",
			'read_private_posts' => "tnc_rep_read_private_taxonomies",
			'read' => "read",
			'delete_posts' => "tnc_rep_delete_taxonomies",
			'delete_private_posts' => "tnc_rep_delete_taxonomies",
			'delete_published_posts' => "tnc_rep_delete_taxonomies",
			'delete_others_posts' => "tnc_rep_delete_others_taxonomies",
			'edit_private_posts' => "tnc_rep_edit_taxonomies",
			'edit_published_posts' => "tnc_rep_edit_taxonomies",
			'create_posts' => "tnc_rep_edit_taxonomies"
		];

	}
```

Observe cómo muchas capacidades se establecen como el mismo `tnc_rep_edit_taxonomies`. Esto es porque lo estamos simplificando un poco y permitiendo a cualquiera con esta capacidad no sólo editar sino publicar y editar taxonomías publicadas. Actualmente, esto no es una necesidad para Tainacan. En el futuro, si encontramos que esto es importante, los permisos pueden ser diferentes para cada caso.

Las capacidades de los elementos se generan dinámicamente, ya que incluyen el ID de la colección de la que forma parte el elemento. Así que esto se declara en la entidad Colección:

```php
	function get_items_capabilities() {

		$id = $this->get_id();

		return (object) [
			// meta
			'edit_post' => "tnc_col_{$id}_edit_item",
			'read_post' => "tnc_col_{$id}_read_item",
			'delete_post' => "tnc_col_{$id}_delete_item",

			// primitive
			'edit_posts' => "tnc_col_{$id}_edit_items",
			'edit_others_posts' => "tnc_col_{$id}_edit_others_items",
			'publish_posts' => "tnc_col_{$id}_publish_items",
			'read_private_posts' => "tnc_col_{$id}_read_private_items",
			'read' => "read",
			'delete_posts' => "tnc_col_{$id}_delete_items",
			'delete_private_posts' => "tnc_col_{$id}_delete_items",
			'delete_published_posts' => "tnc_col_{$id}_delete_published_items",
			'delete_others_posts' => "tnc_col_{$id}_delete_others_items",
			'edit_private_posts' => "tnc_col_{$id}_edit_others_items",
			'edit_published_posts' => "tnc_col_{$id}_edit_published_items",
			'create_posts' => "tnc_col_{$id}_edit_items"
		];
	}
```

## Cómo Tainacan se engancha a la comprobación de permisos

`src/classes/class-tainacan-roles.php` contiene la mayoría de las reglas. 

Tiene 2 ganchos principales.

1. Cuando se llaman las funciones `user_can()` o `current_user_can()`, WordPress comprueba si el usuario tiene las capacidades que se están comprobando. Este hook modifica esta comprobación para implementar las capacidades Super descritas anteriormente. Por ejemplo, este es el lugar donde se comprobará si el usuario puede `manage_tainacan` y, si es así, devolverá true para cualquier comprobación de cualquier capacidad que empiece por `tnc_`.

2. Esto se conecta a la comprobación de las capacidades meta y aplica las reglas para comprobar los topes en el filtro y los metadatos. Comprueba si el filtro/metadato es de nivel repositorio o colección y lo asigna a la capacidad correspondiente. Por ejemplo `tnc_rep_edit_filters` si está en el nivel de repositorio, o `tnc_col_12_edit_filters` si pertenece a la colección con un ID de 12.

El repositorio de ítems (`src/classes/repository/class-tainacan-items.php`) también añade un hook en el filtro `map_meta_cap`. Este gancho mejora la meta capacidad `can_read` y comprueba la visibilidad de la colección a la que pertenece el ítem. Así, aunque un elemento sea público, puede estar dentro de una colección privada. Este hook asegura que la comprobación `can_read` lo tenga en cuenta.


## Flujo de trabajo de la comprobación de permisos de WordPress

Esta sección es para ayudar a los desarrolladores a empezar a entender cómo WordPress comprueba los permisos y esperamos que ayude a entender los ganchos que hemos usado arriba.

Primero, entendamos qué es una meta capacidad.

### Meta Capacidades

**Las capacidades meta (o metacaps)** son capacidades usadas para comprobar permisos basados en un contexto. Nadie y ningún rol tienen esta capacidad. Esta capacidad sólo se utiliza para comprobar el contexto y luego devolver las capacidades reales (primitivas) que necesitan ser comprobadas.

Ejemplo:

Digamos que tienes un `$post_ID `y quieres saber si el usuario actual puede editarlo, preguntarás:


```php
current_user_can('edit_post', $post_ID);
```

Fíjese en que cuando busca un metacap, siempre da uno o más parámetros adicionales. Este es el contexto.

Lo que WordPress hará con él es hacer algunas preguntas:

* ¿Es el usuario actual el autor de esta entrada?
* ¿Esta entrada ya está publicada?
* ¿Es esta entrada privada?

Dependiendo de la respuesta a esas preguntas, WordPress comprobará las capacidades primitivas relativas:

* ¿Es el usuario actual el autor de esta entrada? comprueba la capacidad `edit_posts` (nótese el plural) en caso afirmativo, o `edit_other_posts` en caso negativo.
* ¿Este post ya está publicado? comprueba la capacidad `edit_published_posts` en caso afirmativo.
* ¿Es este post privado? comprueba la capacidad "edit_private_posts" en caso afirmativo.

Así que, en resumen, las meta capacidades son **capacidades inexistentes** que son **mapeadas** a **capacidades primitivas** reales **dependiendo del contexto**.

Cada custom post type tiene 3 metacaps:

* read_post
* editar_post
* delete_post

### El flujo de trabajo

Bien, ahora que entendemos lo que son los metacaps podemos seguir el flujo de trabajo:

Cada vez que `current_user_can()` o `user_can()` son llamados, WordPress termina llamando a [`WP_User::has_cap`](https://developer.wordpress.org/reference/classes/wp_user/has_cap/).

Lo primero que hace este método es pasar el `$cap` requerido que se está comprobando a través de la función [`map_meta_cap`](https://developer.wordpress.org/reference/functions/map_meta_cap/). A continuación, esta función comprueba si `$cap` es una meta_cap y formula las preguntas teniendo en cuenta el contexto pasado en parámetros adicionales. Entonces devuelve `una o más` capacidades a comprobar.

Cuando registre un nuevo tipo de entrada personalizado con la opción `map_meta_cap` como `true` (todos los tipos de entradas Tainacan se registran de esta forma), WordPress detectará que se trata de un metacap de un tipo de entrada registrado y llamará a `map_meta_cap` de nuevo pasando el metacap genérico como argumento.

Por ejemplo, si has registrado un tipo de entrada llamado `movies`, con el metacap `edit_post => edit_movie`, volverá a llamar a `map_meta_cap` pasando `edit_post` como argumento.

Una vez que vuelva a llamar a `map_meta_cap`, se hará todas esas preguntas: "¿es el usuario el autor? ¿está el post publicado?" y entonces, sabiendo que el post que se está comprobando pertenece a un tipo de post personalizado, obtendrá las capacidades registradas para ese tipo de post y finalmente devolverá las capacidades primitivas relativas a `WP_User::has_cap`.

Así que en el caso de `movies`, podría ser `edit_others_movies`. En el caso de nuestro tipo de entrada Taxonomy, como has visto en la declaración anterior, lo que se registra en `edit_others_posts` es `tnc_rep_edit_others_taxonomies`. 

Al final de la función `map_meta_cap`, WordPress también pasará su retorno a través de un filtro llamado `map_meta_cap`. Esto nos permite añadir más metacaps si queremos o cambiar el comportamiento de los metacaps nativos. Esto es lo que hacemos para los filtros, metadatos y elementos caps.

Finalmente, una vez que `WP_User::has_cap` tiene el retorno de `map_meta_cap`, comprobará si todas las capacidades que necesitan ser comprobadas están presentes en el array de capacidades del usuario. Esto pasa por el filtro `user_has_cap` y nos permite modificar esta comprobación y devolver lo que queramos. Aquí es donde nos enganchamos para hacer que las supercapacidades funcionen y devuelvan true incluso si el usuario no tiene la capacidad consultada.

**Resumen del flujo de trabajo.**

1.  Se llama a `current_user_can($cap, $context)`. `$context` suele ser el ID del objeto

2. Se llama a `WP_User::has_cap()`.

3. 3. Pasa `$cap` a la función `map_meta_cap()`.

4. 4. Comprueba si `$cap` es metacap y devuelve un array de capacidades primitivas a comprobar dependiendo del contexto. 
4.1 Si $cap es una metacapacidad de tipo post personalizada, `map_meta_cap` se llamará a sí misma de nuevo pasando uno de los metacaps de tipo post (`read_post`, `edit_post` o `delete_post`)
4.2 En esta segunda llamada, realizará las comprobaciones habituales para estos metacaps y devolverá las respectivas capacidades primitivas del tipo de post.

5. El retorno de `map_meta_cap` pasa por el filtro `map_meta_cap`.

6. 6. `WP_User::has_cap()` finaliza la comprobación, verificando si todas las capacidades devueltas por `map_meta_cap` existen en la lista de capacidades del usuario. Esta comprobación pasa por el filtro `user_has_cap`.
