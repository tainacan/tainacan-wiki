***

# Cli_Collection





* Full name: `\Tainacan\Cli_Collection`



## Properties


### collection_repository



```php
private $collection_repository
```






***

### items_repository



```php
private $items_repository
```






***

### result_count



```php
private $result_count
```






***

### dry_run



```php
private $dry_run
```






***

## Methods


### __construct



```php
public __construct(): mixed
```











***

### list

Show a list of collections.

```php
public list(): mixed
```

## EXAMPLES

wp tainacan collection list
+------+-------------------+
| ID   | title             |
+------+-------------------+
| 1919 | Collection test 1 |
| 1201 | Collection test 1 |
| 1177 | Livros            |
| 1157 | autores           |
+------+-------------------+









***

### clean

remove items of specific collection.

```php
public clean(mixed $args, mixed $assoc_args): mixed
```

## OPTIONS
<collection_id>
: specifies the collection that will have your items removed.

[--permanently]
: skip trash and permanently delete items.

[--dry-run]
: only count the total of item which will remove, just output a report

## EXAMPLES

wp tainacan collection clean 1201 --permanently

cleaning collection items
100% [============================================================================================] 0:00 / 0:00
Success:
10 items removed
23 attachments removed






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |
| `$assoc_args` | **mixed** |  |




***

### delete_item



```php
private delete_item(mixed $item, mixed $permanently = false): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **mixed** |  |
| `$permanently` | **mixed** |  |




***

### delete_attachments



```php
private delete_attachments(mixed $item): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **mixed** |  |




***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
