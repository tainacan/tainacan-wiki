
***

* Full name: `\Tainacan\Importer\Old_Tainacan`
* Parent class: [`\Tainacan\Importer\Importer`](./Importer)

## Properties

### tax_repo

```php
protected $tax_repo
```

***

### col_repo

```php
protected $col_repo
```

***

### items_repo

```php
protected $items_repo
```

***

### metadata_repo

```php
protected $metadata_repo
```

***

### term_repo

```php
protected $term_repo
```

***

### item_metadata_repo

```php
protected $item_metadata_repo
```

***

### steps

Declares what are the steps the importer will run, in the right order.

```php
protected array $steps
```

By default, there is only one step, and the callback is the process_collections method
that process items for the collections in the collections array.

Child classes may declare as many steps as they want and can keep this default step to use
this method for import the items. But it is optional.

***

### tainacan_api_address

```php
protected $tainacan_api_address
```

***

### wordpress_api_address

```php
protected $wordpress_api_address
```

***

### actual_collection

```php
protected $actual_collection
```

***

## Methods

### __construct

tainacan old importer construct

```php
public __construct(mixed $attributes = array()): mixed
```

**Parameters:**

| Parameter     | Type      | Description |
|---------------|-----------|-------------|
| `$attributes` | **mixed** |             |

***

### create_taxonomies

create taxonomies ( taxonomies in tainacan old in first level )
next create the terms

```php
public create_taxonomies(): mixed
```

***

### create_repo_metadata

create the repository metadata which each collection inherits by default

```php
public create_repo_metadata(): mixed
```

***

### create_collections

create all collections and its metadata

```php
public create_collections(): mixed
```

***

### link_relationships

Method responsible for links all relationships metadata

```php
public link_relationships(): int
```

***

### process_item

Method implemented by the child importer class to proccess each item

```php
public process_item(mixed $index, mixed $collection_id): int
```

**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$index`         | **mixed** |             |
| `$collection_id` | **mixed** |             |

***

### insert

insert processed item from source to Tainacan

```php
public insert(array $processed_item, \Tainacan\Importer\integet $collection_index): \Tainacan\Importer\Tainacan\Entities\Item
```

**Parameters:**

| Parameter           | Type                           | Description                                                                                  |
|---------------------|--------------------------------|----------------------------------------------------------------------------------------------|
| `$processed_item`   | **array**                      | Associative array with metadatum source's as index with
its value or values                  |
| `$collection_index` | **\Tainacan\Importer\integet** | The index in the $this->collections array of the collection the item is beeing inserted into |

**Return Value:**

Item inserted

***

### add_item_metadata

Method responsible to insert item metadata

```php
public add_item_metadata(mixed $item, mixed $metadata_old, mixed $collection_id): mixed
```

**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$item`          | **mixed** |             |
| `$metadata_old`  | **mixed** |             |
| `$collection_id` | **mixed** |             |

***

### get_total_items_from_source

Method implemented by the child importer class to return the number of items to be imported

```php
public get_total_items_from_source(mixed $collection_id): int
```

**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$collection_id` | **mixed** |             |

***

### get_all_items

Method that retrieves all items

```php
public get_all_items(mixed $collection_id): int
```

**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$collection_id` | **mixed** |             |

***

### decode_request

decode request from wp_remote

```php
protected decode_request(mixed $result, mixed $url): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$result` | **mixed** |             |
| `$url`    | **mixed** |             |

***

### fetch_collections

return all taxonomies from tainacan old

```php
protected fetch_collections(): array
```

***

### get_taxonomies

return all taxonomies from tainacan old

```php
protected get_taxonomies(): array
```

***

### get_repo_metadata

return all repository metadata from tainacan old

```php
protected get_repo_metadata(): array
```

***

### get_collection_metadata

return all metadata from collection

```php
protected get_collection_metadata(mixed $collection_id): array
```

**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$collection_id` | **mixed** |             |

***

### requester

executes the request

```php
protected requester(mixed $link): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$link`   | **mixed** |             |

***

### add_all_terms

create recursively the terms from tainacan OLD

```php
protected add_all_terms(\Tainacan\Entities\Taxonomy $taxonomy_father, array $children, mixed $term_father = null): array
```

**Parameters:**

| Parameter          | Type                            | Description                           |
|--------------------|---------------------------------|---------------------------------------|
| `$taxonomy_father` | **\Tainacan\Entities\Taxonomy** |                                       |
| `$children`        | **array**                       | Array of taxonomies from tainacan old |
| `$term_father`     | **mixed**                       |                                       |

***

### create_metadata

create the a Metadatum in tainacan

```php
protected create_metadata(mixed $node_metadata_old, mixed $collection_id = null): int
```

**Parameters:**

| Parameter            | Type      | Description |
|----------------------|-----------|-------------|
| `$node_metadata_old` | **mixed** |             |
| `$collection_id`     | **mixed** |             |

**Return Value:**

$metadatum_id

***

### create_collection

create the collection in tainacan

```php
protected create_collection(mixed $node_collection): int
```

**Parameters:**

| Parameter          | Type      | Description |
|--------------------|-----------|-------------|
| `$node_collection` | **mixed** |             |

**Return Value:**

$metadatum_id

***

### define_type

Define the class to create in new Tainacan

```php
private define_type(string $type): string
```

**Parameters:**

| Parameter | Type       | Description                |
|-----------|------------|----------------------------|
| `$type`   | **string** | The type from tainacan old |

**Return Value:**

the class name

***

### insert_files

create attachments, document and thumb from old

```php
private insert_files(object $node_old, mixed $item): string
```

**Parameters:**

| Parameter   | Type       | Description |
|-------------|------------|-------------|
| `$node_old` | **object** |             |
| `$item`     | **mixed**  |             |

**Return Value:**

the class name

***

## Inherited methods

### __construct

```php
public __construct(mixed $attributess = array()): mixed
```

**Parameters:**

| Parameter      | Type      | Description |
|----------------|-----------|-------------|
| `$attributess` | **mixed** |             |

***

### _to_Array

```php
public _to_Array(mixed $short = false): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$short`  | **mixed** |             |

***

### get_id

```php
public get_id(): string
```

***

### set_url

Set URL

```php
public set_url(mixed $url): bool
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$url`    | **mixed** | string      |

***

### get_url

```php
public get_url(): string
```

**Return Value:**

or bool

***

### get_current_step

```php
public get_current_step(): mixed
```

***

### set_current_step

```php
public set_current_step(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_in_step_count

```php
public get_in_step_count(): mixed
```

***

### set_in_step_count

```php
public set_in_step_count(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_current_collection

```php
public get_current_collection(): mixed
```

***

### set_current_collection

```php
public set_current_collection(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_current_collection_item

```php
public get_current_collection_item(): mixed
```

***

### set_current_collection_item

```php
public set_current_collection_item(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_tmp_file

```php
public get_tmp_file(): mixed
```

***

### set_tmp_file

```php
public set_tmp_file(mixed $filepath): mixed
```

**Parameters:**

| Parameter   | Type      | Description |
|-------------|-----------|-------------|
| `$filepath` | **mixed** |             |

***

### get_collections

```php
public get_collections(): mixed
```

***

### set_collections

```php
public set_collections(mixed $value): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### get_options

Gets the options for this importer, including default values for options
that were not set yet.

```php
public get_options(): array
```

**Return Value:**

Importer options

***

### set_options

Set the options array

```php
public set_options(array $options): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$options` | **array** |             |

***

### set_default_options

Set the default options values.

```php
protected set_default_options(array $options): mixed
```

Must be called from the __construct method of the child importer class to set default values.

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$options` | **array** |             |

***

### set_steps

```php
public set_steps(mixed $steps): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$steps`  | **mixed** |             |

***

### get_steps

```php
public get_steps(): mixed
```

***

### get_log

```php
public get_log(): mixed
```

***

### get_error_log

```php
public get_error_log(): mixed
```

***

### add_file

```php
public add_file(mixed $file): bool
```

**Parameters:**

| Parameter | Type      | Description                    |
|-----------|-----------|--------------------------------|
| `$file`   | **mixed** | File to be managed by importer |

***

### add_log

log the actions from importer

```php
public add_log(mixed $message): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$message` | **mixed** |             |

***

### add_error_log

```php
public add_error_log(mixed $message): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$message` | **mixed** |             |

***

### add_collection

```php
public add_collection(array $collection): mixed
```

**Parameters:**

| Parameter     | Type      | Description |
|---------------|-----------|-------------|
| `$collection` | **array** |             |

***

### remove_collection

```php
public remove_collection(mixed $col_id): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$col_id` | **mixed** |             |

***

### fetch_from_remote

get the content form url and creates a file

```php
public fetch_from_remote(mixed $url): array
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$url`    | **mixed** |             |

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

### add_import_method

Adds a new method accepeted by the importer

```php
public add_import_method(string $method): bool
```

Current possible methods are file and url

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$method` | **string** | file or url |

**Return Value:**

true for success, false if method does not exist

***

### remove_import_method

Removes method accepeted by the importer

```php
public remove_import_method(string $method): bool
```

Current possible methods are file and url

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$method` | **string** | file or url |

**Return Value:**

true for success, false if method does not exist

***

### add_transient

```php
public add_transient(mixed $key, mixed $data): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$key`    | **mixed** |             |
| `$data`   | **mixed** |             |

***

### delete_transient

```php
public delete_transient(mixed $key): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$key`    | **mixed** |             |

***

### get_transient

```php
public get_transient(mixed $key): mixed
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$key`    | **mixed** |             |

***

### is_finished

```php
public is_finished(): mixed
```

***

### cancel_abort

Cancel Scheduled abortion at the end of run()

```php
protected cancel_abort(): void
```

***

### abort

Schedule importer abortion at the end of run()

```php
protected abort(): void
```

***

### get_abort

Return whether importer should abort execution or not

```php
public get_abort(): bool
```

***

### get_progress_label

Gets the current label to be displayed below the progress bar to give
feedback to the user.

```php
public get_progress_label(): string
```

It automatically gets the attribute progress_label from the current step running.

Importers may change this label whenever they want

***

### get_progress_value

Gets the current value to build the progress bar and give feedback to the user
on the background process that is running the importer.

```php
public get_progress_value(): mixed
```

It does so by comparing the "size" attribute with the $in_step_count class attribute
where size indicates the total size of iterations the step will take and $this->in_step_count
is the current iteration.

For the step with "process_items" as a callback, this method will look for the the $this->collections array
and sum the value of all "total_items" attributes of each collection. Then it will look for
$this->get_current_collection and $this->set_current_collection_item to calculate the progress.

The value must be from 0 to 100

If a negative value is passed, it is assumed that the progress is unknown

***

### set_current_step_total

Sets the total attribute for the current step

```php
protected set_current_step_total(mixed $value): mixed
```

The "total" attribute of a step indicates the number of iterations this step will take to complete.

The iteration is counted using $this->in_step_count attribute, and comparing the two values gives us
the current progress of the process.

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$value`  | **mixed** |             |

***

### set_step_total

Sets the total attribute for a given step

```php
protected set_step_total(mixed $step, mixed $value): mixed
```

The "total" attribute of a step indicates the number of iterations this step will take to complete.

The iteration is counted using $this->in_step_count attribute, and comparing the two values gives us
the current progress of the process.

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$step`   | **mixed** |             |
| `$value`  | **mixed** |             |

***

### get_source_metadata

get the metadata of file/url to allow mapping
should return an array

```php
public get_source_metadata(): array
```

Used when $manual_mapping is set to true, to build the mapping interface

**Return Value:**

$metadata_source the metadata from the source

***

### process_item

get values for a single item

```php
public process_item(mixed $index, mixed $collection_id): array
```

* This method is **abstract**.
**Parameters:**

| Parameter        | Type      | Description |
|------------------|-----------|-------------|
| `$index`         | **mixed** |             |
| `$collection_id` | **mixed** |             |

**Return Value:**

with metadatum_source's as the index and values for the
item

Ex: [ 'Metadatum1' => 'value1', 'Metadatum2' => [ 'value2','value3' ]

***

### get_source_number_of_items

Method implemented by the child importer class to return the total number of items that will be imported

```php
public get_source_number_of_items(): int
```

Used to build the progress bar

***

### options_form

Method implemented by child importer to return the HTML of the Options Form to be rendered in the Importer page

```php
public options_form(): mixed
```

***

### get_output

Called when the process is finished. returns the final message to the user with a
short description of what happened. May contain HTML code and links

```php
public get_output(): string
```

***

### process_collections

process an item from the collections queue

```php
public process_collections(): mixed
```

***

### next_item

```php
protected next_item(): mixed
```

***

### next_collection

```php
protected next_collection(): mixed
```

***

### next_step

```php
protected next_step(): mixed
```

***

### insert

insert processed item from source to Tainacan

```php
public insert(array $processed_item, \Tainacan\Importer\integet $collection_index): \Tainacan\Entities\Item
```

**Parameters:**

| Parameter           | Type                           | Description                                                                                  |
|---------------------|--------------------------------|----------------------------------------------------------------------------------------------|
| `$processed_item`   | **array**                      | Associative array with metadatum source's as index with
its value or values                  |
| `$collection_index` | **\Tainacan\Importer\integet** | The index in the $this->collections array of the collection the item is beeing inserted into |

**Return Value:**

Item inserted

***

### after_inserted_item

allow importers executes process after item is insertes

```php
public after_inserted_item(array $insertedItem, int $collection_index): mixed
```

**Parameters:**

| Parameter           | Type      | Description                                                                                  |
|---------------------|-----------|----------------------------------------------------------------------------------------------|
| `$insertedItem`     | **array** | Associative array with inserted item                                                         |
| `$collection_index` | **int**   | The index in the $this->collections array of the collection the item is beeing inserted into |

***

### run

runs one iteration

```php
public run(): mixed
```

***

### create_new_metadata

```php
public create_new_metadata(mixed $metadata_description, mixed $collection_id, mixed $parent_id = null): bool
```

**Parameters:**

| Parameter               | Type      | Description |
|-------------------------|-----------|-------------|
| `$metadata_description` | **mixed** |             |
| `$collection_id`        | **mixed** |             |
| `$parent_id`            | **mixed** |             |

**Throws:**

- [`Exception`](../../Exception)

***
