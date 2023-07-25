***

# Admin_Hooks





* Full name: `\Tainacan\Admin_Hooks`



## Properties


### registered_hooks



```php
private $registered_hooks
```






***

### instance



```php
private static $instance
```



* This property is **static**.


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
public init(): mixed
```











***

### get_available_positions



```php
public get_available_positions(): mixed
```











***

### get_available_contexts



```php
public get_available_contexts(): mixed
```











***

### get_registered_hooks



```php
public get_registered_hooks(): mixed
```











***

### register



```php
public register(string $context, callable $callback, string $position = &#039;end-left&#039;, array $conditional = null): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$context` | **string** | The context to add the hook to (collection, metadatum, item, taxonomy, term or filter) |
| `$callback` | **callable** | The callback that will output the form HTML |
| `$position` | **string** | The position inside the page to hook. (begin, end, begin-left, begin-right, end-left, end-right) |
| `$conditional` | **array** | Key-named array containing an &#039;attribute&#039; and a &#039;value&#039; that will be checked in the context form object before rendering the hook. |




***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
