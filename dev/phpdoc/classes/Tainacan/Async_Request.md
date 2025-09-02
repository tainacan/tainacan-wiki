
Abstract Async_Request class.

***

* Full name: `\Tainacan\Async_Request`
* This class is an **Abstract class**

## Properties

### prefix

Prefix

```php
protected string $prefix
```

(default value: 'wp')

***

### action

Action

```php
protected string $action
```

(default value: 'async_request')

***

### identifier

Identifier

```php
protected mixed $identifier
```

***

### data

Data

```php
protected array $data
```

(default value: array())

***

## Methods

### __construct

Initiate new async request

```php
public __construct(): mixed
```

***

### data

Set data used during the request

```php
public data(array $data): $this
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$data`   | **array** | Data.       |

***

### dispatch

Dispatch the async request

```php
public dispatch(): array|\Tainacan\WP_Error
```

***

### get_query_args

Get query args

```php
protected get_query_args(): array
```

***

### get_query_url

Get query URL

```php
protected get_query_url(): string
```

***

### get_post_args

Get post args

```php
protected get_post_args(): array
```

***

### maybe_handle

Maybe handle

```php
public maybe_handle(): mixed
```

Check for correct nonce and pass to handler.

***

### handle

Handle

```php
protected handle(): mixed
```

Override this method to perform any actions required
during the async request.

* This method is **abstract**.
***
