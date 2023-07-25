***

# Cli_Document





* Full name: `\Tainacan\Cli_Document`



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

### __invoke

index content of documents

```php
public __invoke(mixed $args, mixed $assoc_args): mixed
```

## OPTIONS
[--collection=<value>]
: <value> Specific ID of the collection into which the document content of the items will be indexed, or 'all' to all collections.


[--dry-run]
: only count the total of item which will index, just output a report

## EXAMPLES

wp tainacan index-content --collection=416
indexing documents of items to collection 416:  100% [====================================================] 0:00 / 0:00
Success:
7 items indexed


wp tainacan index-content --collection=all
indexing documents of items to collection 416:  100% [====================================================] 0:00 / 0:00
Success:
7 items indexed
indexing documents of items to collection 301:  100% [====================================================] 0:00 / 0:00
Success:
10 items indexed






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |
| `$assoc_args` | **mixed** |  |




***

### index_item_all_collections



```php
private index_item_all_collections(): mixed
```











***

### index_item



```php
private index_item(mixed $collection_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection_id` | **mixed** |  |




***

### index_content_document_item



```php
private index_content_document_item(mixed $item): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **mixed** |  |




***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
