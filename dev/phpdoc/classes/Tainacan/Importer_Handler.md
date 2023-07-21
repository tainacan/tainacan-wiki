***

# Importer_Handler





* Full name: `\Tainacan\Importer_Handler`



## Properties


### registered_importers



```php
private $registered_importers
```






***

## Methods


### __construct



```php
public __construct(): mixed
```











***

### init



```php
public init(): mixed
```











***

### enqueue_scripts



```php
public enqueue_scripts(): mixed
```











***

### add_to_queue



```php
public add_to_queue(\Tainacan\Importer\Importer $importer_object): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer_object` | **\Tainacan\Importer\Importer** |  |




***

### register_importer

Register Importer

```php
public register_importer(array $importer): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer` | **array** | {<br />Required. Array or string of arguments describing the importer<br /><br />@type string $nameThe name of the importer. e.g. &#039;Example Importer&#039;<br />@type string $slugA unique slug for the importer. e.g. &#039;This is an example importer description&#039;<br />@type string $descriptionThe importer description. e.g. &#039;example-importer&#039;<br />@type string $class_nameThe Importer Class. e.g. &#039;\Tainacan\Importer\Test_Importer&#039;<br />@type bool $manual_mappingWether Tainacan must present the user with an interface to manually map<br />the metadata from the source to the target collection.<br /><br />If set to true, Importer Class must implement the method<br />get_source_metadata() to return the metadatum found in the source.<br /><br />Note that this will only work when importing items to one single collection.<br /><br />@type bool $manual_collectionWether Tainacan will let the user choose a destination collection.<br /><br />If set to true, the API endpoints will handle Collection creation and will assign it to<br />the importer object using add_collection() method.<br /><br />Otherwise, the child importer class must create the collections and add them to the collections property also<br />using add_collection() |




***

### unregister_importer



```php
public unregister_importer(mixed $importer_slug): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer_slug` | **mixed** |  |




***

### get_registered_importers



```php
public get_registered_importers(): mixed
```











***

### get_importer



```php
public get_importer(mixed $importer_slug): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer_slug` | **mixed** |  |




***

### get_importer_by_object



```php
public get_importer_by_object(\Tainacan\Importer\Importer $importer_object): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer_object` | **\Tainacan\Importer\Importer** |  |




***

### initialize_importer



```php
public initialize_importer(mixed $importer_slug): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer_slug` | **mixed** |  |




***

### save_importer_instance

Save importer instance to the database

```php
public save_importer_instance(\Tainacan\Tainacan\Importer\Importer $importer): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer` | **\Tainacan\Tainacan\Importer\Importer** | The Importer object |




***

### get_importer_instance_by_session_id

Retrieves an Importer instance from the database based on its session_id

```php
public get_importer_instance_by_session_id(string $session_id): \Tainacan\Importer\Importer|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$session_id` | **string** | The Importer ID |


**Return Value:**

The Importer object, if found. False otherwise



***

### delete_importer_instance

Deletes this importer instance from the database

```php
public delete_importer_instance(\Tainacan\Tainacan\Importer\Importer $importer): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$importer` | **\Tainacan\Tainacan\Importer\Importer** | The Importer object |


**Return Value:**

True, if importer is successfully deleted. False on failure.



***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
