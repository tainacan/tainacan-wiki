# Log


Represents entity Log

***

* Full name: `\Tainacan\Entities\Log`
* Parent class: [`\Tainacan\Entities\Entity`](./Entity)

## Properties

### title

```php
protected $title
```

***

### order

```php
protected $order
```

***

### description

```php
protected $description
```

***

### blog_id

```php
protected $blog_id
```

***

### user_id

```php
protected $user_id
```

***

### date

```php
protected $date
```

***

### user_name

```php
protected $user_name
```

***

### collection_id

```php
protected $collection_id
```

***

### item_id

```php
protected $item_id
```

***

### object_type

```php
protected $object_type
```

***

### object_id

```php
protected $object_id
```

***

### old_value

```php
protected $old_value
```

***

### new_value

```php
protected $new_value
```

***

### post_type

The WordPress post_type for store this class if is needed, false otherwise

```php
public static string $post_type
```

* This property is **static**.

***

### repository

The repository of that entity

```php
protected string $repository
```

**See Also:**

* \Tainacan\Entities\Entity::repository

***

## Methods

### __construct

Create an instance of Entity

```php
public __construct(mixed $which): mixed
```

If ID or WP Post is passed, it retrieves the object from the database

Attention: If the ID or Post provided do not match the Entity post type, an Exception will be thrown

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$which`  | **mixed** |             |

***

### __toString

```php
public __toString(): mixed
```

***

### _toArray

```php
public _toArray(): array
```

***

### get_capabilities

Get the capabilities list for the post type of the entity

```php
public get_capabilities(): object
```

**Return Value:**

Object with all the capabilities as member variables.

***

### set_collection_id

```php
public set_collection_id(mixed $collection_id): mixed
```

**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$collection_id` | **mixed** |             |

***

### get_collection_id

```php
public get_collection_id(): mixed|null
```

***

### get_title

Return the Log title

```php
public get_title(): string
```

***

### get_user_name

```php
public get_user_name(): string
```

***

### get_date

Return the log date

```php
public get_date(): mixed|null
```

***

### get_slug

Return the log slug

```php
public get_slug(): mixed|null
```

***

### get_description

Return the Log description

```php
public get_description(): string
```

***

### get_user_id

Return User Id of who make the action

```php
public get_user_id(): int
```

**Return Value:**

User Id of logged action

***

### get_old_value

Get old value of log entry object

```php
public get_old_value(): void
```

***

### get_new_value

Get new value of log entry object

```php
public get_new_value(): void
```

***

### set_title

Set log tittle

```php
public set_title(string $value): void
```

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$value`  | **string** |             |

***

### set_description

Define the Log description

```php
public set_description(mixed $value): void
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### set_user_id

Define the user ID of log entry

```php
public set_user_id(mixed $value): void
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### set_old_value

Set old value of log entry

```php
public set_old_value(mixed $value): void
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### set_new_value

Set new value of log entry

```php
public set_new_value(mixed $value): void
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_log_diffs

```php
public get_log_diffs(): mixed|null
```

***

### get_object_type

```php
public get_object_type(): mixed
```

***

### set_object_type

```php
public set_object_type(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_object_id

```php
public get_object_id(): mixed
```

***

### set_object_id

```php
public set_object_id(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### set_item_id

```php
public set_item_id(mixed $item_id): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$item_id` | **mixed** |             |

***

### get_item_id

```php
public get_item_id(): mixed
```

***

### get_action

```php
public get_action(): mixed
```

***

### set_action

```php
public set_action(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### approve

{@inheritDoc}

```php
public approve(): mixed
```

**See Also:**

* \Tainacan\Repositories\Logs::approve

***

## Inherited methods

### __construct

Create an instance of Entity

```php
public __construct(mixed $which): mixed
```

If ID or WP Post is passed, it retrieves the object from the database

Attention: If the ID or Post provided do not match the Entity post type, an Exception will be thrown

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$which`  | **mixed** |             |

**Throws:**

- [`Exception`](../../Exception)

***

### get_repository

```php
public get_repository(): mixed
```

***

### get_date_i18n

```php
public get_date_i18n(mixed $date): string
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$date`   | **mixed** |             |

***

### get_mapped_property

return the value for a mapped property

```php
public get_mapped_property(string $prop): mixed
```

**Parameters:**

| Parameter | Type       | Description    |
|-----------|------------|----------------|
| `$prop`   | **string** | id of property |

**Return Value:**

property value

***

### set_mapped_property

set the value of a mapped property

```php
protected set_mapped_property(string $prop, mixed $value): mixed
```

This is a protected method. If you want to set an entity prop
using the prop name dynamically, use the set() method

**Parameters:**

| Parameter | Type       | Description            |
|-----------|------------|------------------------|
| `$prop`   | **string** | id of the property     |
| `$value`  | **mixed**  | the value to be setted |

***

### set

set the value property

```php
public set(string $prop, mixed $value): null|mixed
```

**Parameters:**

| Parameter | Type       | Description            |
|-----------|------------|------------------------|
| `$prop`   | **string** | id of the property     |
| `$value`  | **mixed**  | the value to be setted |

**Return Value:**

Null on failure, the value that was set on success

***

### get

get the value property

```php
public get(string $prop): null|mixed
```

**Parameters:**

| Parameter | Type       | Description        |
|-----------|------------|--------------------|
| `$prop`   | **string** | id of the property |

**Return Value:**

Null on failure, the value that was set on success

***

### set_status

set the status of the entity

```php
public set_status(string $value): mixed
```

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$value`  | **string** |             |

***

### validate

Validate the class values/properties, to be used before insert/save/update

```php
public validate(): bool
```

If Entity is not valid, validation error messages are available via get_errors() method

***

### validate_prop

Validate a single property

```php
public validate_prop(string $prop): bool
```

**Parameters:**

| Parameter | Type       | Description                       |
|-----------|------------|-----------------------------------|
| `$prop`   | **string** | id of the property to be validate |

***

### get_errors

```php
public get_errors(): mixed
```

***

### get_post_type

```php
public static get_post_type(): mixed
```

* This method is **static**.
***

### get_capability_type

```php
public static get_capability_type(): mixed
```

* This method is **static**.
***

### get_status

```php
public get_status(): mixed
```

***

### get_db_identifier

Get entity DB identifier

```php
public get_db_identifier(): string
```

This identifier is used to register the entity on database, ex.: post_type

***

### get_id

Get the entity ID

```php
public get_id(): int
```

***

### add_error

```php
public add_error(mixed $type, mixed $message): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$type`    | **mixed** |             |
| `$message` | **mixed** |             |

***

### reset_errors

Clear the errors array

```php
public reset_errors(): mixed
```

***

### get_validated

```php
public get_validated(): mixed
```

***

### set_validated

```php
protected set_validated(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### set_as_valid

```php
protected set_as_valid(): mixed
```

***

### _toArray

```php
public _toArray(): mixed
```

***

### _toJson

```php
public _toJson(): mixed
```

***

### can_read

Return if user can read this entity

```php
public can_read(int|\WP_User $user = null): bool
```

**Parameters:**

| Parameter | Type              | Description |
|-----------|-------------------|-------------|
| `$user`   | **int\|\WP_User** |             |

***

### can_edit

Return if user can edit this entity

```php
public can_edit(int|\WP_User|null $user = null): bool
```

**Parameters:**

| Parameter | Type                    | Description                                              |
|-----------|-------------------------|----------------------------------------------------------|
| `$user`   | **int\|\WP_User\|null** | the user for capability check, null for the current user |

***

### can_delete

Return if user can delete this entity

```php
public can_delete(int|\WP_User|null $user = null): bool
```

**Parameters:**

| Parameter | Type                    | Description                                              |
|-----------|-------------------------|----------------------------------------------------------|
| `$user`   | **int\|\WP_User\|null** | the user for capability check, null for the current user |

***

### can_publish

Return if user can publish this entity

```php
public can_publish(int|\WP_User|null $user = null): bool
```

**Parameters:**

| Parameter | Type                    | Description                                              |
|-----------|-------------------------|----------------------------------------------------------|
| `$user`   | **int\|\WP_User\|null** | the user for capability check, null for the current user |

***

### get_capabilities

Get the capabilities list for the post type of the entity

```php
public get_capabilities(): object
```

**Return Value:**

Object with all the capabilities as member variables.

***

### diff

Compare this entity props with self old values or with $which other entity

```php
public diff(\Tainacan\Entities\Entity|int|\WP_Post $which): array
```

**Parameters:**

| Parameter | Type                                         | Description                                             |
|-----------|----------------------------------------------|---------------------------------------------------------|
| `$which`  | **\Tainacan\Entities\Entity\|int\|\WP_Post** | default ($which = 0) to self compare with stored entity |

***
