***

# Filters





* Full name: `\Tainacan\Repositories\Filters`
* Parent class: [`\Tainacan\Repositories\Repository`](./Repository.md)



## Properties


### entities_type



```php
public $entities_type
```






***

### filters_types



```php
public $filters_types
```






***

### instance



```php
private static $instance
```



* This property is **static**.


***

## Methods


### get_instance



```php
public static get_instance(): mixed
```



* This method is **static**.







***

### __construct

Register hooks

```php
protected __construct(): mixed
```











***

### _get_map

return properties map

```php
protected _get_map(): array
```









**Return Value:**

properties map array, format like:
  'id'             => [
    'map'        => 'ID',
    'title'       => __('ID', 'tainacan'),
    'type'       => 'integer',
    'description'=> __('Unique identifier', 'tainacan'),
    'validation' => v::numeric(),
],
'name'           =>  [
    'map'        => 'post_title',
    'title'       => __('Name', 'tainacan'),
    'type'       => 'string',
    'description'=> __('Name of the collection', 'tainacan'),
    'validation' => v::stringType(),
    'default'     => ''
],
'slug'           =>  [
    'map'        => 'post_name',
    'title'       => __('Slug', 'tainacan'),
    'type'       => 'string',
    'description'=> __('A unique and sanitized string representation of the collection, used to build the collection URL', 'tainacan'),
    'validation' => v::stringType(),
],



***

### get_cpt_labels

Get the labels for the custom post type of this repository

```php
public get_cpt_labels(): array
```









**Return Value:**

Labels in the format expected by register_post_type()



***

### register_post_type



```php
public register_post_type(): mixed
```











***

### update



```php
public update(mixed $object, mixed $new_values = null): int
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **mixed** |  |
| `$new_values` | **mixed** |  |


**Return Value:**

public function insert($metadatum) {
    // First iterate through the native post properties
    $map = $this->get_map();
    foreach ($map as $prop => $mapped) {
        if ($mapped['map'] != 'meta' && $mapped['map'] != 'meta_multi') {
            $metadatum->WP_Post->{$mapped['map']} = $metadatum->get_mapped_property($prop);
        }
    }

    // save post and get its ID
    $metadatum->WP_Post->post_type = Entities\Filter::get_post_type();
    $metadatum->WP_Post->post_status = 'publish';
    $id = wp_insert_post($metadatum->WP_Post);
    $metadatum->WP_Post = get_post($id);

    // Now run through properties stored as postmeta
    foreach ($map as $prop => $mapped) {
        if ($mapped['map'] == 'meta') {
            update_post_meta($id, $prop, $metadatum->get_mapped_property($prop));
        } elseif ($mapped['map'] == 'meta_multi') {
            $values = $metadatum->get_mapped_property($prop);

            delete_post_meta($id, $prop);

            if (is_array($values)){
                foreach ($values as $value){
                    add_post_meta($id, $prop, $value);
                }
            }
        }
    }

    // return a brand new object
    return new Entities\Filter($metadatum->WP_Post);
}



***

### fetch

fetch filter based on ID or WP_Query args

```php
public fetch(array $args = [], string $output = null): \WP_Query|array
```

Filters are stored as posts. Check WP_Query docs
to learn all args accepted in the $args parameter (@see https://developer.wordpress.org/reference/classes/wp_query/)
You can also use a mapped property, such as name and description, as an argument and it will be mapped to the
appropriate WP_Query argument

If a number is passed to $args, it will return a \Tainacan\Entities\Filter object.  But if the post is not found or
does not match the entity post type, it will return an empty array






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | WP_Query args &amp;#124;&amp;#124; int $args the filter id |
| `$output` | **string** | The desired output format (@see \Tainacan\Repositories\Repository::fetch_output() for possible values) |


**Return Value:**

an instance of wp query OR array of entities;



***

### register_filter_type

register metadatum types class on array of types

```php
public register_filter_type( $class_name): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$class_name` | **** | string &amp;#124; object The class name or the instance |




***

### deregister_filter_type

register metadatum types class on array of types

```php
public deregister_filter_type( $class_name): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$class_name` | **** | string &amp;#124; object The class name or the instance |




***

### fetch_filter_types

fetch all registered filter type classes

```php
public fetch_filter_types( $output = &#039;CLASS&#039;): array
```

Possible outputs are:
CLASS (default) - returns the Class name of of filter types registered
NAME - return an Array of the names of filter types registered






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$output` | **** | string CLASS &amp;#124; NAME |


**Return Value:**

of Entities\Filter_Types\Filter_Type classes path name



***

### fetch_supported_filter_types

fetch only supported filters for the type specified

```php
public fetch_supported_filter_types(mixed $types): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$types` | **mixed** |  |


**Return Value:**

Filters supported by the primitive types passed in $types



***

### fetch_ids

fetch filters IDs based on WP_Query args

```php
public fetch_ids(array $args = []): array
```

to learn all args accepted in the $args parameter (@see https://developer.wordpress.org/reference/classes/wp_query/)
You can also use a mapped property, such as name and description, as an argument and it will be mapped to the
appropriate WP_Query argument






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | WP_Query args &amp;#124;&amp;#124; int $args the item id |


**Return Value:**

array of IDs;



***

### fetch_by_collection

fetch filters by collection, searches all filters available

```php
public fetch_by_collection(\Tainacan\Entities\Collection $collection, array $args = []): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection` | **\Tainacan\Entities\Collection** |  |
| `$args` | **array** | WP_Query args plus disabled_metadata |


**Return Value:**

Entities\Metadatum



***

### fetch_ids_by_collection

fetch filters IDs by collection, considering inheritance

```php
public fetch_ids_by_collection(\Tainacan\Entities\Collection|int $collection, array $args = []): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection` | **\Tainacan\Entities\Collection&#124;int** | object or ID |
| `$args` | **array** | WP_Query args plus disabled_metadata |


**Return Value:**

List of metadata IDs



***

### order_result

Ordinate the result from fetch response if $collection has an ordination,
filters not ordinated appear on the end of the list

```php
public order_result( $result, \Tainacan\Entities\Collection $collection, mixed $include_disabled = false): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$result` | **** | Response from method fetch |
| `$collection` | **\Tainacan\Entities\Collection** |  |
| `$include_disabled` | **mixed** |  |


**Return Value:**

or WP_Query ordinate



***

### hook_delete_when_metadata_deleted



```php
public hook_delete_when_metadata_deleted(mixed $metadatum, mixed $permanent): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$metadatum` | **mixed** |  |
| `$permanent` | **mixed** |  |




***

### hook_update_when_metadata_saved_as_private



```php
public hook_update_when_metadata_saved_as_private(mixed $metadatum): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$metadatum` | **mixed** |  |




***


## Inherited methods


### disable_logs

Disable creation of logs while inerting and updating entities

```php
public disable_logs(): mixed
```











***

### enable_logs

Enable creation of logs while inserting and updating entities
if it was disabled

```php
public enable_logs(): mixed
```











***

### get_enabled_logs

Get if creation of logs while inserting and updating entities are enable

```php
public get_enabled_logs(): mixed
```











***

### __construct

Register hooks

```php
protected __construct(): mixed
```











***

### init_objects



```php
public init_objects(): mixed
```











***

### _get_map

return properties map

```php
protected _get_map(): array
```




* This method is **abstract**.




**Return Value:**

properties map array, format like:
  'id'             => [
    'map'        => 'ID',
    'title'       => __('ID', 'tainacan'),
    'type'       => 'integer',
    'description'=> __('Unique identifier', 'tainacan'),
    'validation' => v::numeric(),
],
'name'           =>  [
    'map'        => 'post_title',
    'title'       => __('Name', 'tainacan'),
    'type'       => 'string',
    'description'=> __('Name of the collection', 'tainacan'),
    'validation' => v::stringType(),
    'default'     => ''
],
'slug'           =>  [
    'map'        => 'post_name',
    'title'       => __('Slug', 'tainacan'),
    'type'       => 'string',
    'description'=> __('A unique and sanitized string representation of the collection, used to build the collection URL', 'tainacan'),
    'validation' => v::stringType(),
],



***

### get_map



```php
public get_map(): mixed
```











***

### get_name

Return repository name

```php
public get_name(): string
```









**Return Value:**

The repository name



***

### insert



```php
public insert(\Tainacan\Entities\Entity $obj): \Tainacan\Entities\Entity
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$obj` | **\Tainacan\Entities\Entity** |  |


**Return Value:**

| bool



***

### insert_metadata

Insert object property stored as postmeta into the database

```php
public insert_metadata(\Tainacan\Entities $obj, string $prop,  $diffs): null|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$obj` | **\Tainacan\Entities** | The entity object |
| `$prop` | **string** | the property name, as declared in the map of the repository |
| `$diffs` | **** |  |


**Return Value:**

on error



***

### maybe_add_slashes



```php
public maybe_add_slashes(mixed $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### fetch_output

Prepare the output for the fetch() methods.

```php
public fetch_output(\WP_Query $WP_Query, string $output = &#039;WP_Query&#039;): array|\WP_Query
```

Possible outputs are:
WP_Query (default) - returns the WP_Object itself
OBJECT - return an Array of Tainacan\Entities






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$WP_Query` | **\WP_Query** |  |
| `$output` | **string** | `WP_Query` for a single WP_Query object or `OBJECT` for an array of Tainacan\Entities |




***

### parse_fetch_args

Maps repository mapped properties to WP_Query arguments.

```php
public parse_fetch_args(array $args = []): array
```

This allows to build fetch arguments using both WP_Query arguments
and the mapped properties for the repository.

For example, you can use any of the following methods to browse collections by name:
$TainacanCollections->fetch(['title' => 'test']);
$TainacanCollections->fetch(['name' => 'test']);

The property `name` is transformed into the native WordPress property `post_title`. (actually only title for query purpouses)

Example 2, this also works with properties mapped to postmeta. The following methods are the same:
$TainacanMetadatas->fetch(['required' => 'yes']);
$TainacanMetadatas->fetch(['meta_query' => [
    [
        'key' => 'required',
        'value' => 'yes'
    ]
]]);






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | [description] |


**Return Value:**

$args new $args array with mapped properties



***

### get_default_properties

Return default properties

```php
public get_default_properties(array $map): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$map` | **array** |  |




***

### get_mapped_property

return the value for a mapped property from database

```php
public get_mapped_property(\Tainacan\Entities\Entity $entity, string $prop): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |
| `$prop` | **string** | id of property |


**Return Value:**

property value



***

### get_collections_db_identifiers

Return array of collections db identifiers

```php
public static get_collections_db_identifiers(): array[]
```



* This method is **static**.







***

### get_entity_by_post



```php
public static get_entity_by_post(int|\WP_Post $post): \Tainacan\Entities\Entity|bool
```



* This method is **static**.




**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$post` | **int&#124;\WP_Post** | &amp;#124;Entity |




***

### get_entity_by_post_type



```php
public static get_entity_by_post_type(string $post_type, int|\WP_Post $post): \Tainacan\Entities\Entity|bool
```



* This method is **static**.




**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$post_type` | **string** |  |
| `$post` | **int&#124;\WP_Post** | optional post ID or WordPress post data for creation of Entity |


**Return Value:**

the entity for post_type, with data if $post is given or false



***

### get_repository

Return Entity's Repository

```php
public static get_repository(\Tainacan\Entities\Entity $entity): \Tainacan\Repositories\Repository|bool
```



* This method is **static**.




**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |


**Return Value:**

return the entity Repository or false



***

### fetch_one

Fetch one Entity based on query args.

```php
public fetch_one(array $args): false|\Tainacan\Entities
```

Note: Does not work with Item_Metadata Repository






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | Query Args as expected by fetch |


**Return Value:**

The entity or false if none was found



***

### trash

Shortcut to delete($entity, false)

```php
public trash(\Tainacan\Entities\Entity $entity): mixed|\Tainacan\Entities\Entity
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |


**Return Value:**

@see https://developer.wordpress.org/reference/functions/wp_delete_post/



***

### delete



```php
public delete(\Tainacan\Entities\Entity $entity, bool $permanent = true): mixed|\Tainacan\Entities\Entity
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |
| `$permanent` | **bool** | If false, sendo to trash, if true, permanently delete. Default true |


**Return Value:**

@see https://developer.wordpress.org/reference/functions/wp_delete_post/



***

### fetch



```php
public fetch( $args, mixed $output = null): mixed
```




* This method is **abstract**.



**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **** |  |
| `$output` | **mixed** |  |




***

### update



```php
public update( $object, mixed $new_values = null): mixed
```




* This method is **abstract**.



**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **** |  |
| `$new_values` | **mixed** |  |




***

### register_post_type



```php
public register_post_type(): mixed
```




* This method is **abstract**.






***

### can_edit

Check if $user can edit/create a entity

```php
public can_edit(\Tainacan\Entities\Entity $entity, int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |
| `$user` | **int&#124;\WP_User&#124;null** | default is null for the current user |




***

### can_read

Check if $user can read the entity

```php
public can_read(\Tainacan\Entities\Entity $entity, int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |
| `$user` | **int&#124;\WP_User&#124;null** | default is null for the current user |




***

### can_delete

Check if $user can delete the entity

```php
public can_delete(\Tainacan\Entities\Entity $entity, int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |
| `$user` | **int&#124;\WP_User&#124;null** | default is null for the current user |




***

### can_publish

Check if $user can publish entity

```php
public can_publish(\Tainacan\Entities\Entity $entity, int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$entity` | **\Tainacan\Entities\Entity** |  |
| `$user` | **int&#124;\WP_User&#124;null** | default is null for the current user |




***

### unique_multidimensional_array

Removes duplicates from multidimensional array

```php
public unique_multidimensional_array( $array,  $key): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$array` | **** |  |
| `$key` | **** |  |




***

### insert_thumbnail

Inserts or update thumbnail for items and collections and return an array
with old thumbnail and new thumbnail

```php
private insert_thumbnail( $obj,  $diffs): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$obj` | **** |  |
| `$diffs` | **** |  |




***

### get_descendants_ids

Get IDs for all children, grand children till the depth parameter is reached

```php
public get_descendants_ids(int|\Tainacan\Entities\Entity $id, bool|int $depth = false): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$id` | **int&#124;\Tainacan\Entities\Entity** | The Entity ID or object |
| `$depth` | **bool&#124;int** | The maximum depth to llok for descendants. default is false = no limit |


**Return Value:**

Array of IDs



***

### get_capabilities

Get the capabilities list for the post type of the entity

```php
public get_capabilities(): object
```









**Return Value:**

Object with all the capabilities as member variables.



***

### sanitize_value



```php
protected sanitize_value(mixed $content): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$content` | **mixed** |  |




***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
