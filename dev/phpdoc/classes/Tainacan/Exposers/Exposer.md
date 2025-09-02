# Exposer


abstract class for implement exposer types

***

* Full name: `\Tainacan\Exposers\Exposer`
* This class is an **Abstract class**

## Properties

### mappers

```php
protected $mappers
```

***

### accept_no_mapper

```php
public $accept_no_mapper
```

***

### slug

```php
public $slug
```

***

### name

```php
private $name
```

***

### description

```php
private $description
```

***

## Methods

### set_name

Returns i18n exposer name

```php
protected set_name(mixed $name): string
```

Must be implemented by Exposer class

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$name`   | **mixed** |             |

***

### set_description

Sets i18n exposer description

```php
protected set_description(mixed $description): string
```

**Parameters:**

| Parameter      | Type      | Description |
|----------------|-----------|-------------|
| `$description` | **mixed** |             |

***

### get_name

Gets the exposer name

```php
public get_name(): string
```

**Return Value:**

exposer name

***

### get_description

Gets the exposer description

```php
public get_description(): string
```

**Return Value:**

exposer description

***

### _toArray

return exposer object as an array

```php
public _toArray(): array
```

***

### rest_request_after_callbacks

Change response after api callbacks

```php
public rest_request_after_callbacks(\WP_REST_Response $response, \WP_REST_Server $handler, \WP_REST_Request $request): \WP_REST_Response
```

* This method is **abstract**.
**Parameters:**

| Parameter   | Type                  | Description |
|-------------|-----------------------|-------------|
| `$response` | **\WP_REST_Response** |             |
| `$handler`  | **\WP_REST_Server**   |             |
| `$request`  | **\WP_REST_Request**  |             |

***

### get_mappers

Return list of supported mappers for this type

```php
public get_mappers(): array
```

**Return Value:**

List of mappers

***
