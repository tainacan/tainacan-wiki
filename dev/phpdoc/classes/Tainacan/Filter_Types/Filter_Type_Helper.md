***

# Filter_Type_Helper

Class FilterTypeHelper



* Full name: `\Tainacan\Filter_Types\Filter_Type_Helper`



## Properties


### instance



```php
private static $instance
```



* This property is **static**.


***

### registered_filter_type

Stores external filter type available to be used in Tainacan

```php
private $registered_filter_type
```






***

### Tainacan_Filters



```php
private $Tainacan_Filters
```






***

## Methods


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

### init



```php
private init(): mixed
```











***

### register_filter_type_compoment



```php
public register_filter_type_compoment(): mixed
```











***

### register_filter_type

Register a new Filter Type

```php
public register_filter_type(string $handle, mixed $class_name, mixed $script_path, array|string $args = []): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$handle` | **string** | name of the component. Should be unique. |
| `$class_name` | **mixed** |  |
| `$script_path` | **mixed** |  |
| `$args` | **array&#124;string** |  |




***

### get_registered_filter_type

Get a list of all registered filter type

```php
public get_registered_filter_type(): array
```









**Return Value:**

The list of registered filter type



***

### get_filter_type

Get one specific filter type by its slug

```php
public get_filter_type(string $handle): array|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$handle` | **string** | Name of the component |


**Return Value:**

The filter type definition or false if it is not found



***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
