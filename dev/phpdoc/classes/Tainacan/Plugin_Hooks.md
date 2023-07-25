***

# Plugin_Hooks

Class Plugins_Hooks



* Full name: `\Tainacan\Plugin_Hooks`



## Properties


### instance



```php
private static $instance
```



* This property is **static**.


***

### registered_plugin

Stores external vue plugin available to be used in Tainacan

```php
private $registered_plugin
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

### register_plugin



```php
public register_plugin(): mixed
```











***

### register_vuejs_plugin

Register a new vuejs plugin

```php
public register_vuejs_plugin(string $handle, string $script_path, array|string $args = []): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$handle` | **string** | name of the plugin. Should be unique. |
| `$script_path` | **string** | path of file plugin |
| `$args` | **array&#124;string** |  |




***

### get_registered_plugin

Get a list of all registered plugin

```php
public get_registered_plugin(): array
```









**Return Value:**

The list of registered plugin



***

### get_plugin

Get one specific plugin by its slug

```php
public get_plugin(string $handle): array|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$handle` | **string** | Name of the plugin |


**Return Value:**

The plugin definition or false if it is not found



***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
