***

# REST_Metadata_Sections_Controller





* Full name: `\Tainacan\API\EndPoints\REST_Metadata_Sections_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller.md)



## Properties


### metadata_sections_repository



```php
private $metadata_sections_repository
```






***

### metadata_repository



```php
private $metadata_repository
```






***

### collection_repository



```php
private $collection_repository
```






***

## Methods


### __construct

REST_Controller constructor.

```php
public __construct(): mixed
```











***

### init_objects

Initialize objects after post_type register

```php
public init_objects(): mixed
```











***

### register_routes

If POST on metadatum/collection/<collection_id>, then
a metadatum will be created in matched collection and all your item will receive this metadatum

```php
public register_routes(): mixed
```

If POST on metadatum/item/<item_id>, then a value will be added in a metadatum and metadatum passed
id body of requisition

Both of GETs return the metadatum of matched objects









***

### prepare_item_for_database



```php
public prepare_item_for_database(\WP_REST_Request|string $request,  $collection_id = null): object|void|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request&#124;string** |  |
| `$collection_id` | **** |  |




***

### prepare_item_for_response



```php
public prepare_item_for_response(\Tainacan\Entities\Metadata_Section $item, \WP_REST_Request $request): array|\WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **\Tainacan\Entities\Metadata_Section** |  |
| `$request` | **\WP_REST_Request** |  |




***

### prepare_metadata_for_response



```php
public prepare_metadata_for_response(\Tainacan\Entities\Metadata $item, \WP_REST_Request $request): array|\WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **\Tainacan\Entities\Metadata** |  |
| `$request` | **\WP_REST_Request** |  |




***

### get_item



```php
public get_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### get_item_permissions_check



```php
public get_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### create_item



```php
public create_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### create_item_permissions_check



```php
public create_item_permissions_check( $request): bool|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **** |  |




***

### get_items



```php
public get_items(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### get_items_permissions_check



```php
public get_items_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### delete_item



```php
public delete_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### delete_item_permissions_check



```php
public delete_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### update_item



```php
public update_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### add_metadata



```php
public add_metadata(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### delete_metadata



```php
public delete_metadata(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_metadata_list



```php
public get_metadata_list(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### update_item_permissions_check



```php
public update_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




***

### get_wp_query_params

Return the common params

```php
public get_wp_query_params(): array|void
```











***

### get_endpoint_args_for_item_schema



```php
public get_endpoint_args_for_item_schema(null $method = null): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$method` | **null** |  |




***

### get_metadata_list_schema



```php
public get_metadata_list_schema(): mixed
```











***

### get_schema



```php
public get_schema(): mixed
```











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
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
