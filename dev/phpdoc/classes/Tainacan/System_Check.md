***

# System_Check





* Full name: `\Tainacan\System_Check`



## Properties


### min_php_version



```php
private $min_php_version
```






***

### mysql_min_version_check



```php
private $mysql_min_version_check
```






***

### mysql_rec_version_check



```php
private $mysql_rec_version_check
```






***

### mariadb



```php
public $mariadb
```






***

### mysql_server_version



```php
private $mysql_server_version
```






***

### health_check_mysql_rec_version



```php
private $health_check_mysql_rec_version
```






***

### health_check_mysql_min_version



```php
private $health_check_mysql_min_version
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

### admin_page



```php
public admin_page(): mixed
```











***

### test_php_version



```php
public test_php_version(): mixed
```











***

### prepare_sql_data



```php
private prepare_sql_data(): mixed
```











***

### check_permalink_settings



```php
public check_permalink_settings(): mixed
```











***

### check_php_timeout



```php
public check_php_timeout(): mixed
```











***

### check_upload_permission



```php
public check_upload_permission(): mixed
```











***

### check_max_upload_size



```php
public check_max_upload_size(): mixed
```











***

### test_wordpress_version

Tests for WordPress version and outputs it.

```php
public test_wordpress_version(): void
```









**Return Value:**

It is an AJAX call.



***

### child_test_php_extension_availability



```php
public child_test_php_extension_availability(mixed $extension = null, mixed $function = null): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$extension` | **mixed** |  |
| `$function` | **mixed** |  |




***

### test_php_extensions



```php
public test_php_extensions(): mixed
```











***

### test_sql_server



```php
public test_sql_server(): mixed
```











***

### test_utf8mb4_support



```php
public test_utf8mb4_support(): mixed
```











***

### check_protected_upload_folders



```php
public check_protected_upload_folders(): mixed
```











***

### get_tainacan_version



```php
public get_tainacan_version(): mixed
```











***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
