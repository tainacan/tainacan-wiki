***

# Cli_Move_Attachments





* Full name: `\Tainacan\Cli_Move_Attachments`



## Properties


### collections



```php
private $collections
```






***

### documents



```php
private $documents
```






***

## Methods


### __invoke

Moves the items documents and attachments to a $collection_id/$item_id directory structure

```php
public __invoke(mixed $args, mixed $assoc_args): mixed
```

This is only to be used to update the structure of intallations made before version 0.11 of Tainacan, when
this structure was implemented.

See (URL to docs) for more information

## OPTIONS

[--dry-run]
: Look for attachments but don't move them, just output a report






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |
| `$assoc_args` | **mixed** |  |




***

### is_item_attachment



```php
private is_item_attachment(mixed $att): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$att` | **mixed** |  |




***

### is_document



```php
private is_document(mixed $attachment_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$attachment_id` | **mixed** |  |




***

### get_collection



```php
private get_collection(mixed $id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$id` | **mixed** |  |




***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
