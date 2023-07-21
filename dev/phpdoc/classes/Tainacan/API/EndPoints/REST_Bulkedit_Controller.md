***

# REST_Bulkedit_Controller





* Full name: `\Tainacan\API\EndPoints\REST_Bulkedit_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller.md)



## Properties


### metadatum_repository



```php
private $metadatum_repository
```






***

### collections_repository



```php
private $collections_repository
```






***

## Methods


### get_schema



```php
protected get_schema(): mixed
```











***

### __construct

REST_Controller constructor.

```php
public __construct(): mixed
```











***

### init_objects



```php
public init_objects(): mixed
```











***

### register_routes



```php
public register_routes(): mixed
```











***

### bulk_edit_permissions_check



```php
public bulk_edit_permissions_check(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### create_item



```php
public create_item(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### set_status



```php
public set_status(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### trash_items



```php
public trash_items(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### untrash_items



```php
public untrash_items(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### delete_items



```php
public delete_items(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### add_value



```php
public add_value(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### set_value



```php
public set_value(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### clear_value



```php
public clear_value(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### remove_value



```php
public remove_value(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### copy_value



```php
public copy_value(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### replace_value



```php
public replace_value(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### set_comment_status



```php
public set_comment_status(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_item



```php
public get_item(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### prepare_item_for_response



```php
public prepare_item_for_response(mixed $bulk_object, mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$bulk_object` | **mixed** |  |
| `$request` | **mixed** |  |




***

### generic_action



```php
private generic_action(mixed $method, mixed $request, mixed $keys = [&#039;value&#039;]): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$method` | **mixed** |  |
| `$request` | **mixed** |  |
| `$keys` | **mixed** |  |




***

### get_item_in_sequence



```php
public get_item_in_sequence(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_create_params



```php
public get_create_params(null $object_name = null): array|void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object_name` | **null** |  |




***


## Inherited methods


### __construct

REST_Controller constructor.

```php
public __construct(): mixed
```











***

### filter_object_by_attributes



```php
protected filter_object_by_attributes( $object,  $attributes): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **** |  |
| `$attributes` | **** |  |




***

### prepare_item_for_updating



```php
protected prepare_item_for_updating( $object,  $new_values): \Tainacan\Entities\Entity
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **** |  |
| `$new_values` | **** |  |




***

### prepare_filters



```php
protected prepare_filters( $request): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **** |  |




***

### add_support_to_tax_query_like



```php
public add_support_to_tax_query_like(mixed $args): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |




***

### prepare_meta



```php
private prepare_meta( $mapped,  $request,  $query,  $mapped_v,  $args): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$mapped` | **** |  |
| `$request` | **** |  |
| `$query` | **** |  |
| `$mapped_v` | **** |  |
| `$args` | **** |  |




***

### contains_array



```php
protected contains_array( $array,  $query): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$array` | **** |  |
| `$query` | **** |  |




***

### get_fetch_only_param

Return the fetch_only param

```php
public get_fetch_only_param(): array|void
```











***

### get_wp_query_params

Return the common params

```php
public get_wp_query_params(): array|void
```











***

### get_meta_queries_params

Return the common meta, date and tax queries params

```php
protected get_meta_queries_params(): array
```











***

### get_repository_schema



```php
public get_repository_schema(\Tainacan\Repositories\Repository $repository): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$repository` | **\Tainacan\Repositories\Repository** |  |




***

### get_permissions_schema



```php
public get_permissions_schema(): mixed
```











***

### get_base_properties_schema



```php
public get_base_properties_schema(): mixed
```











***

### get_schema



```php
protected get_schema(): mixed
```




* This method is **abstract**.






***

### get_list_schema



```php
public get_list_schema(): mixed
```











***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
