# Roles


This file contains the Tainacan Roles class, which manages the roles and capabilities
used in the Tainacan plugin.

***

* Full name: `\Tainacan\Roles`

## Properties

### capabilities

```php
private $capabilities
```

***

### meta_caps

```php
private $meta_caps
```

***

### meta_section_caps

```php
private $meta_section_caps
```

***

### filters_caps

```php
private $filters_caps
```

***

## Methods

### init

```php
private init(): mixed
```

***

### populate_tainacan_capabilities

```php
public populate_tainacan_capabilities(): mixed
```

***

### get_tainacan_roles

Tainacan default roles

```php
public get_tainacan_roles(): array
```

**Return Value:**

Tainacan roles

***

### translate_user_roles

Callback to gettext_with_context hook to translate custom ueser roles.

```php
public translate_user_roles(mixed $translations, mixed $text, mixed $context, mixed $domain): mixed
```

Since user roles are stored in the database, we have to translate them on the fly
using translate_user_role() function.

**Parameters:**

| Parameter       | Type      | Description |
|-----------------|-----------|-------------|
| `$translations` | **mixed** |             |
| `$text`         | **mixed** |             |
| `$context`      | **mixed** |             |
| `$domain`       | **mixed** |             |

**See Also:**

* https://wordpress.stackexchange.com/questions/141551/how-to-auto-translate-custom-user-roles

***

### get_all_caps

```php
public get_all_caps(): mixed
```

***

### get_collection_caps

```php
public get_collection_caps(): mixed
```

***

### get_repository_caps

```php
public get_repository_caps(): mixed
```

***

### get_all_caps_slugs

```php
public get_all_caps_slugs(): mixed
```

***

### get_collection_caps_slugs

```php
public get_collection_caps_slugs(): mixed
```

***

### get_repository_caps_slugs

```php
public get_repository_caps_slugs(): mixed
```

***

### init_default_roles

```php
public init_default_roles(): mixed
```

***

### get_cap_generic_name

Gets the capabilty generic name as present in
Tainacan\Roles::capabilities

```php
public get_cap_generic_name(string $cap): string
```

For example: tnc_col_12_edit or tnc_col_all_edit will return tnc_col_%%d_edit

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$cap`    | **string** |             |

**Return Value:**

Capability slug as in the keys of $this->capabilities

***

### user_has_cap_filter

```php
public user_has_cap_filter(mixed $allcaps, mixed $caps, mixed $args, mixed $user): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$allcaps` | **mixed** |             |
| `$caps`    | **mixed** |             |
| `$args`    | **mixed** |             |
| `$user`    | **mixed** |             |

***

### add_dependencies

```php
public add_dependencies(mixed $role, mixed $cap): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$role`   | **mixed** |             |
| `$cap`    | **mixed** |             |

***

### map_meta_cap

```php
public map_meta_cap(mixed $caps, mixed $cap, mixed $user_id, mixed $args): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$caps`    | **mixed** |             |
| `$cap`     | **mixed** |             |
| `$user_id` | **mixed** |             |
| `$args`    | **mixed** |             |

***

## Inherited methods

### get_instance

```php
public static get_instance(): mixed
```

* This method is **static**.
***

### __construct

```php
private __construct(): mixed
```

***
