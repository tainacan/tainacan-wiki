***

# REST_Reports_Controller





* Full name: `\Tainacan\API\EndPoints\REST_Reports_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller.md)



## Properties


### taxonomy_repository



```php
private $taxonomy_repository
```






***

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

### prefix_transient_cahce



```php
private $prefix_transient_cahce
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



```php
public init_objects(): mixed
```











***

### register_routes



```php
public register_routes(): mixed
```











***

### reports_permissions_check



```php
public reports_permissions_check(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_collections



```php
public get_collections(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_summary



```php
public get_summary(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_taxonomies_list



```php
public get_taxonomies_list(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_taxonomy



```php
public get_taxonomy(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_metadata



```php
public get_metadata(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_stats_collection_metadata



```php
public get_stats_collection_metadata(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### query_item_metadata_distribution



```php
private query_item_metadata_distribution(mixed $meta_ids, mixed $collection_post_type): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$meta_ids` | **mixed** |  |
| `$collection_post_type` | **mixed** |  |




***

### query_count_used_taxononomies



```php
private query_count_used_taxononomies(): mixed
```











***

### get_activities



```php
public get_activities(mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




***

### get_activities_general



```php
private get_activities_general(mixed $collection_id = false, mixed $interval = false): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection_id` | **mixed** |  |
| `$interval` | **mixed** |  |




***

### get_activities_general_by_user



```php
private get_activities_general_by_user(mixed $collection_id = false, mixed $interval = false): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection_id` | **mixed** |  |
| `$interval` | **mixed** |  |




***

### get_activities_users



```php
private get_activities_users(mixed $collection_id = false): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection_id` | **mixed** |  |




***

### get_cache_object



```php
private get_cache_object(mixed $key, mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **mixed** |  |
| `$request` | **mixed** |  |




***

### set_cache_object



```php
private set_cache_object(mixed $key, mixed $data): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **mixed** |  |
| `$data` | **mixed** |  |




***

### get_endpoint_args_for_item_schema



```php
public get_endpoint_args_for_item_schema(string $method = null): array|mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$method` | **string** |  |




***

### get_collection_schema



```php
public get_collection_schema(): mixed
```











***

### get_summary_schema



```php
public get_summary_schema(): mixed
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
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
