***

# REST_Logs_Controller





* Full name: `\Tainacan\API\EndPoints\REST_Logs_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller.md)



## Properties


### logs_repository



```php
private $logs_repository
```






***

## Methods


### __construct

REST_Logs_Controller constructor.

```php
public __construct(): mixed
```












***

### register_routes



```php
public register_routes(): mixed
```












***

### prepare_item_for_response



```php
public prepare_item_for_response(mixed $item, \WP_REST_Request $request): array|\WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **mixed** |  |
| `$request` | **\WP_REST_Request** |  |





***

### prepare_legacy_item_for_response



```php
private prepare_legacy_item_for_response(mixed $item, mixed $request): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **mixed** |  |
| `$request` | **mixed** |  |





***

### get_items



```php
public get_items(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




**Throws:**

- [`Exception`](../../../Exception.md)



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

### get_endpoint_args_for_item_schema



```php
public get_endpoint_args_for_item_schema(string $method = null): array|mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$method` | **string** |  |





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
protected filter_object_by_attributes(mixed $object, mixed $attributes): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **mixed** |  |
| `$attributes` | **mixed** |  |





***

### prepare_item_for_updating



```php
protected prepare_item_for_updating(mixed $object, mixed $new_values): \Tainacan\Entities\Entity
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$object` | **mixed** |  |
| `$new_values` | **mixed** |  |





***

### prepare_filters



```php
protected prepare_filters(mixed $request): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **mixed** |  |




**Throws:**

- [`Exception`](../../../Exception.md)



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

### sanitize_value



```php
protected sanitize_value(mixed $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |





***

### contains_array



```php
protected contains_array(mixed $array, mixed $query): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$array` | **mixed** |  |
| `$query` | **mixed** |  |





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
> Automatically generated on 2025-09-02
