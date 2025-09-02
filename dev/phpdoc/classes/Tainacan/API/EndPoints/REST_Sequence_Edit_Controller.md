# REST_Sequence_Edit_Controller


***

* Full name: `\Tainacan\API\EndPoints\REST_Sequence_Edit_Controller`
* Parent class: [`\Tainacan\API\REST_Controller`](../REST_Controller)

## Properties

### items_repository

```php
private $items_repository
```

***

### collections_repository

```php
private $collections_repository
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

**Throws:**

- [`Exception`](../../../Exception)

***

### prepare_item_for_response

```php
public prepare_item_for_response(mixed $item, mixed $request): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$item`    | **mixed** |             |
| `$request` | **mixed** |             |

***

### sequence_edit_permissions_check

```php
public sequence_edit_permissions_check(mixed $request): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$request` | **mixed** |             |

***

### create_item

```php
public create_item(mixed $request): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$request` | **mixed** |             |

***

### get_item

```php
public get_item(mixed $request): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$request` | **mixed** |             |

***

### get_item_in_sequence

```php
public get_item_in_sequence(mixed $request): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$request` | **mixed** |             |

***

### get_create_params

```php
public get_create_params(null $object_name = null): array|void
```

**Parameters:**

| Parameter      | Type     | Description |
|----------------|----------|-------------|
| `$object_name` | **null** |             |

***

### get_sequence_params

```php
public get_sequence_params(): array|mixed
```

***

### get_sequence_index_params

```php
public get_sequence_index_params(): array|mixed
```

***

### get_sequence_schema

```php
public get_sequence_schema(): mixed
```

***

### get_sequence_index_schema

```php
public get_sequence_index_schema(): mixed
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
