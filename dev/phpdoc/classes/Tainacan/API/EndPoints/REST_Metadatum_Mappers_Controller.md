***

# REST_Metadatum_Mappers_Controller





* Full name: `\Tainacan\API\EndPoints\REST_Metadatum_Mappers_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller.md)




## Methods


### get_schema



```php
protected get_schema(): mixed
```












***

### __construct

REST_Metadatum_Mappers_Controller constructor.

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
public prepare_item_for_response(\Tainacan\Exposers\Mappers\Mapper $mapper, \WP_REST_Request $request): mixed|\WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$mapper` | **\Tainacan\Exposers\Mappers\Mapper** |  |
| `$request` | **\WP_REST_Request** | <br />map |





***

### prepare_metadatum_for_response



```php
public prepare_metadatum_for_response(\Tainacan\Entities\Metadatum $item, \WP_REST_Request $request): array|\WP_Error|\WP_REST_Response
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **\Tainacan\Entities\Metadatum** |  |
| `$request` | **\WP_REST_Request** |  |





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

### update_item_permissions_check

Verify if current user has permission to update a metadata mappers

```php
public update_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$request` | **\WP_REST_Request** |  |




**Throws:**

- [`Exception`](../../../Exception.md)



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
