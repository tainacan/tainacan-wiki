***

# Item_Metadata





* Full name: `\Tainacan\Repositories\Item_Metadata`
* Parent class: [`\Tainacan\Repositories\Repository`](./Repository.md)



## Properties


### entities_type



```php
public $entities_type
```






***

## Methods


### init



```php
protected init(): mixed
```












***

### insert



```php
public insert(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): \Tainacan\Entities\Entity|\Tainacan\Entities\Item_Metadata_Entity
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |




**Throws:**

- [`Exception`](../../Exception.md)



***

### save_core_metadatum_value



```php
public save_core_metadatum_value(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |




**Throws:**

- [`Exception`](../../Exception.md)



***

### save_terms_metadatum_value



```php
public save_terms_metadatum_value(mixed $item_metadata): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **mixed** |  |




**Throws:**

- [`Exception`](../../Exception.md)



***

### upclean_compound_value



```php
public upclean_compound_value(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): null|int
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |


**Return Value:**

the meta id of the update compound metadata




***

### add_compound_value



```php
public add_compound_value(\Tainacan\Entities\Item_Metadata_Entity $item_metadata, mixed $meta_id): null|int
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |
| `$meta_id` | **mixed** |  |


**Return Value:**

the meta id of the created compound metadata




***

### delete_metadata



```php
public delete_metadata(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |





***

### remove_compound_value



```php
public remove_compound_value(mixed $parent_meta_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$parent_meta_id` | **mixed** |  |





***

### fetch

Fetch Item Metadatum objects related to an Item

```php
public fetch(\Tainacan\Entities\Item $object, mixed $output = null, mixed $args = []): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **\Tainacan\Entities\Item** |  |
| `$output` | **mixed** |  |
| `$args` | **mixed** |  |




**Throws:**

- [`Exception`](../../Exception.md)



***

### get_value

Get the value for a Item metadatum.

```php
public get_value(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |




**Throws:**

- [`Exception`](../../Exception.md)



***

### create_default_value_metadata



```php
public create_default_value_metadata(\Tainacan\Entities\Item $item): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **\Tainacan\Entities\Item** |  |





***

### extract_compound_value

Transforms the array saved as meta_value with the IDs of post_meta saved as a value for compound metadata
and converts it into an array of Item Metadatada Entitites

```php
private extract_compound_value(array $ids, \Tainacan\Entities\Item $item, mixed $compound_meta_id): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$ids` | **array** | The array of post_meta ids |
| `$item` | **\Tainacan\Entities\Item** | The item this post_meta is related to |
| `$compound_meta_id` | **mixed** |  |


**Return Value:**

An array of Item_Metadata_Entity objects



**Throws:**

- [`Exception`](../../Exception.md)



***

### register_post_type



```php
public register_post_type(): mixed
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

### get_default_properties

Return default properties

```php
public get_default_properties(mixed $map): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$map` | **mixed** |  |





***

### update



```php
public update(mixed $object, null $new_values = null): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **mixed** |  |
| `$new_values` | **null** |  |





***

### suggest

Suggest a value to be inserted as a item Metadatum value, return a pending log

```php
public suggest(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): \Tainacan\Entities\Log
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |  |





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



```php
private __construct(): mixed
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
public insert(\Tainacan\Entities\Entity $obj): \Tainacan\Entities\Entity|bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$obj` | **\Tainacan\Entities\Entity** |  |




**Throws:**

- [`Exception`](../../Exception.md)



***

### insert_metadata

Insert object property stored as postmeta into the database

```php
public insert_metadata(\Tainacan\Entities $obj, string $prop, mixed $diffs): null|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$obj` | **\Tainacan\Entities** | The entity object |
| `$prop` | **string** | the property name, as declared in the map of the repository |
| `$diffs` | **mixed** |  |


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




**Throws:**

- [`Exception`](../../Exception.md)



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



**Throws:**

- [`Exception`](../../Exception.md)



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
public fetch(mixed $args, mixed $output = null): mixed
```




* This method is **abstract**.



**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |
| `$output` | **mixed** |  |





***

### update



```php
public update(mixed $object, mixed $new_values = null): mixed
```




* This method is **abstract**.



**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **mixed** |  |
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




**Throws:**

- [`Exception`](../../Exception.md)



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




**Throws:**

- [`Exception`](../../Exception.md)



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




**Throws:**

- [`Exception`](../../Exception.md)



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




**Throws:**

- [`Exception`](../../Exception.md)



***

### unique_multidimensional_array

Removes duplicates from multidimensional array

```php
public unique_multidimensional_array(mixed $array, mixed $key): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$array` | **mixed** |  |
| `$key` | **mixed** |  |





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

### get_instance



```php
public static get_instance(): mixed
```



* This method is **static**.








***


***
> Automatically generated on 2025-09-02
