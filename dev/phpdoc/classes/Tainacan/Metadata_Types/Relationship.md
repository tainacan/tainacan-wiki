
Class TainacanMetadatumType

***

* Full name: `\Tainacan\Metadata_Types\Relationship`
* Parent class: [`\Tainacan\Metadata_Types\Metadata_Type`](./Metadata_Type)

## Methods

### __construct

```php
public __construct(): mixed
```

***

### get_form_labels

allow i18n from messages

```php
public get_form_labels(): mixed
```

***

### get_options_as_html

Gets print-ready version of the options list in html

```php
public get_options_as_html(): string
```

Checks if at least one option exists, otherwise return an empty string

**Return Value:**

An html content with labels and values for the options or an empty string

***

### validate_options

Validates the options Array

```php
public validate_options(\Tainacan\Entities\Metadatum $metadatum): true|array
```

This method should be declared by each metadatum type sub classes

**Parameters:**

| Parameter    | Type                             | Description                                   |
|--------------|----------------------------------|-----------------------------------------------|
| `$metadatum` | **\Tainacan\Entities\Metadatum** | The metadatum object that is beeing validated |

**Return Value:**

True if optinos are valid. If invalid, returns an array where keys are the metadatum keys and values are error messages.

***

### get_value_as_html

Return the value of an Item_Metadata_Entity using a metadatum of this metadatum type as an html string

```php
public get_value_as_html(\Tainacan\Metadata_Types\Item_Metadata_Entity $item_metadata): string
```

**Parameters:**

| Parameter        | Type                                              | Description |
|------------------|---------------------------------------------------|-------------|
| `$item_metadata` | **\Tainacan\Metadata_Types\Item_Metadata_Entity** |             |

**Return Value:**

The HTML representation of the value, containing one or multiple items names, linked to the item page

***

### can_display_item

```php
private can_display_item(mixed $item): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$item`   | **mixed** |             |

***

### get_item_html

```php
private get_item_html(mixed $item, mixed $search_meta_id, mixed $display_metas): mixed
```

**Parameters:**

| Parameter         | Type      | Description |
|-------------------|-----------|-------------|
| `$item`           | **mixed** |             |
| `$search_meta_id` | **mixed** |             |
| `$display_metas`  | **mixed** |             |

***

### get_item_link

```php
private get_item_link(mixed $item, mixed $search_meta_id): mixed
```

**Parameters:**

| Parameter         | Type      | Description |
|-------------------|-----------|-------------|
| `$item`           | **mixed** |             |
| `$search_meta_id` | **mixed** |             |

***

### get_item_thumbnail

```php
private get_item_thumbnail(mixed $thumbnail_id, mixed $item): mixed
```

**Parameters:**

| Parameter       | Type      | Description |
|-----------------|-----------|-------------|
| `$thumbnail_id` | **mixed** |             |
| `$item`         | **mixed** |             |

***

### get_meta_html

```php
private get_meta_html(\Tainacan\Entities\Item_Metadata_Entity $meta, \Tainacan\Entities\Item $item, mixed $value_link = false, mixed $thumbnail_id = false, mixed $should_display_thumbnail = true): mixed
```

**Parameters:**

| Parameter                   | Type                                        | Description |
|-----------------------------|---------------------------------------------|-------------|
| `$meta`                     | **\Tainacan\Entities\Item_Metadata_Entity** |             |
| `$item`                     | **\Tainacan\Entities\Item**                 |             |
| `$value_link`               | **mixed**                                   |             |
| `$thumbnail_id`             | **mixed**                                   |             |
| `$should_display_thumbnail` | **mixed**                                   |             |

***

### get_collection

Get related Collection object

```php
public get_collection(): \Tainacan\Entities\Collection|false
```

**Return Value:**

The Collection object or false

***

### get_options

Gets the options for this metadatum types, including default values for options
that were not set yet.

```php
public get_options(): array
```

**Return Value:**

Metadatum type options

***

## Inherited methods

### __construct

```php
public __construct(): mixed
```

***

### validate

```php
public validate(\Tainacan\Entities\Item_Metadata_Entity $item_metadata): mixed
```

**Parameters:**

| Parameter        | Type                                        | Description |
|------------------|---------------------------------------------|-------------|
| `$item_metadata` | **\Tainacan\Entities\Item_Metadata_Entity** |             |

***

### get_related_mapped_prop

```php
public get_related_mapped_prop(): mixed
```

***

### set_related_mapped_prop

```php
public set_related_mapped_prop(mixed $related_mapped_prop): mixed
```

**Parameters:**

| Parameter              | Type      | Description |
|------------------------|-----------|-------------|
| `$related_mapped_prop` | **mixed** |             |

***

### get_validation_errors

```php
public get_validation_errors(): mixed
```

***

### get_primitive_type

```php
public get_primitive_type(): mixed
```

***

### set_primitive_type

```php
public set_primitive_type(mixed $primitive_type): mixed
```

**Parameters:**

| Parameter         | Type      | Description |
|-------------------|-----------|-------------|
| `$primitive_type` | **mixed** |             |

***

### get_errors

```php
public get_errors(): mixed
```

***

### get_component

```php
public get_component(): mixed
```

***

### set_component

```php
public set_component(mixed $component): mixed
```

**Parameters:**

| Parameter    | Type      | Description |
|--------------|-----------|-------------|
| `$component` | **mixed** |             |

***

### get_form_component

```php
public get_form_component(): mixed
```

***

### set_form_component

```php
public set_form_component(mixed $form_component): mixed
```

**Parameters:**

| Parameter         | Type      | Description |
|-------------------|-----------|-------------|
| `$form_component` | **mixed** |             |

***

### get_preview_template

```php
public get_preview_template(): mixed
```

***

### set_preview_template

```php
public set_preview_template(mixed $preview_template): mixed
```

**Parameters:**

| Parameter           | Type      | Description |
|---------------------|-----------|-------------|
| `$preview_template` | **mixed** |             |

***

### get_name

```php
public get_name(): mixed
```

***

### set_name

```php
public set_name(mixed $name): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$name`   | **mixed** |             |

***

### get_description

```php
public get_description(): mixed
```

***

### set_description

```php
public set_description(mixed $description): mixed
```

**Parameters:**

| Parameter      | Type      | Description |
|----------------|-----------|-------------|
| `$description` | **mixed** |             |

***

### add_error

```php
public add_error(mixed $msg): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$msg`    | **mixed** |             |

***

### set_options

```php
public set_options(mixed $options): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$options` | **mixed** |             |

***

### set_default_options

```php
public set_default_options(array $options): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$options` | **array** |             |

***

### get_options

Gets the options for this metadatum types, including default values for options
that were not set yet.

```php
public get_options(): array
```

**Return Value:**

Metadatum type options

***

### get_option

Gets one option from the options array.

```php
public get_option(string $key): mixed
```

Checks if option exist or if it have a default value. Otherwise return an empty string

**Parameters:**

| Parameter | Type       | Description        |
|-----------|------------|--------------------|
| `$key`    | **string** | the desired option |

**Return Value:**

the option value, the default value or an empty string

***

### get_options_as_html

Gets print-ready version of the options list in html

```php
public get_options_as_html(): string
```

Checks if at least one option exists, otherwise return an empty string

**Return Value:**

An html content with labels and values for the options or an empty string

***

### get_form_labels

allow i18n from messages

```php
public get_form_labels(): mixed
```

***

### form

generate the metadata for this metadatum type

```php
public form(): mixed
```

***

### validate_options

Validates the options Array

```php
public validate_options(\Tainacan\Entities\Metadatum $metadatum): true|array
```

This method should be declared by each metadatum type sub classes

**Parameters:**

| Parameter    | Type                             | Description                                   |
|--------------|----------------------------------|-----------------------------------------------|
| `$metadatum` | **\Tainacan\Entities\Metadatum** | The metadatum object that is beeing validated |

**Return Value:**

True if optinos are valid. If invalid, returns an array where keys are the metadatum keys and values are error messages.

***

### get_core

```php
public get_core(): mixed
```

***

### set_core

```php
public set_core(mixed $core): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$core`   | **mixed** |             |

***

### get_repository

```php
public get_repository(): mixed
```

***

### set_repository

```php
public set_repository(mixed $repository): mixed
```

**Parameters:**

| Parameter     | Type      | Description |
|---------------|-----------|-------------|
| `$repository` | **mixed** |             |

***

### get_sortable

```php
public get_sortable(): mixed
```

***

### set_sortable

```php
public set_sortable(mixed $sortable): mixed
```

**Parameters:**

| Parameter   | Type      | Description |
|-------------|-----------|-------------|
| `$sortable` | **mixed** |             |

***

### get_slug

Gets a slug based on the class name to represent the metadata type

```php
public get_slug(): mixed
```

***

### _toArray

```php
public _toArray(): mixed
```

***
