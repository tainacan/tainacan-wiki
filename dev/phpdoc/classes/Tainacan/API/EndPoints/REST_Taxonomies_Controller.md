# REST_Taxonomies_Controller


***

* Full name: `\Tainacan\API\EndPoints\REST_Taxonomies_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller)

## Properties

### taxonomy

```php
private $taxonomy
```

***

### taxonomy_repository

```php
private $taxonomy_repository
```

***

## Methods

### __construct

REST_Taxonomies_Controller constructor.

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

```php
public register_routes(): mixed
```

***

### prepare_item_for_response

```php
public prepare_item_for_response(mixed $item, \WP_REST_Request $request): array|\WP_Error|\WP_REST_Response
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$item`    | **mixed**            |             |
| `$request` | **\WP_REST_Request** |             |

***

### get_metadata_taxonomy_in_collection

```php
public get_metadata_taxonomy_in_collection(mixed $taxonomy_id, mixed $collection_id, mixed $collection_parent_id = null): mixed
```

**Parameters:**

| Parameter               | Type      | Description |
|-------------------------|-----------|-------------|
| `$taxonomy_id`          | **mixed** |             |
| `$collection_id`        | **mixed** |             |
| `$collection_parent_id` | **mixed** |             |

***

### prepare_item_for_database

```php
public prepare_item_for_database(\WP_REST_Request $request): object|void|\WP_Error
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### get_item

```php
public get_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### get_item_permissions_check

```php
public get_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### delete_item

```php
public delete_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### delete_item_permissions_check

```php
public delete_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### get_items

```php
public get_items(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

**Throws:**

- [`Exception`](../../../Exception)

***

### get_items_permissions_check

```php
public get_items_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### create_item

```php
public create_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### create_item_permissions_check

```php
public create_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### update_item

```php
public update_item(\WP_REST_Request $request): \WP_Error|\WP_REST_Response
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### update_item_permissions_check

```php
public update_item_permissions_check(\WP_REST_Request $request): bool|\WP_Error
```

**Parameters:**

| Parameter  | Type                 | Description |
|------------|----------------------|-------------|
| `$request` | **\WP_REST_Request** |             |

***

### get_endpoint_args_for_item_schema

```php
public get_endpoint_args_for_item_schema(string $method = null): array|mixed
```

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$method` | **string** |             |

***

### get_wp_query_params

Return the queries supported when getting a collection of objects

```php
public get_wp_query_params(): array
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
protected filter_object_by_attributes(mixed $object, mixed $attributes): array
```

**Parameters:**

| Parameter     | Type      | Description |
|---------------|-----------|-------------|
| `$object`     | **mixed** |             |
| `$attributes` | **mixed** |             |

***

### prepare_item_for_updating

```php
protected prepare_item_for_updating(mixed $object, mixed $new_values): \Tainacan\Entities\Entity
```

**Parameters:**

| Parameter     | Type      | Description |
|---------------|-----------|-------------|
| `$object`     | **mixed** |             |
| `$new_values` | **mixed** |             |

***

### prepare_filters

```php
protected prepare_filters(mixed $request): array
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$request` | **mixed** |             |

**Throws:**

- [`Exception`](../../../Exception)

***

### add_support_to_tax_query_like

```php
public add_support_to_tax_query_like(mixed $args): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$args`   | **mixed** |             |

***

### sanitize_value

```php
protected sanitize_value(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### contains_array

```php
protected contains_array(mixed $array, mixed $query): bool
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$array`  | **mixed** |             |
| `$query`  | **mixed** |             |

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

| Parameter     | Type                                  | Description |
|---------------|---------------------------------------|-------------|
| `$repository` | **\Tainacan\Repositories\Repository** |             |

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
