***

# Dublin_Core

Support Dublin Core Mapping
http://purl.org/dc/elements/1.1/



* Full name: `\Tainacan\Mappers\Dublin_Core`
* Parent class: [`\Tainacan\Mappers\Mapper`](./Mapper.md)


## Constants

| Constant | Visibility | Type | Value |
|:---------|:-----------|:-----|:------|
|`XML_DC_NAMESPACE`|public| |&#039;http://purl.org/dc/elements/1.1/&#039;|
|`XML_RDF_NAMESPACE`|public| |&#039;http://www.w3.org/1999/02/22-rdf-syntax-ns#&#039;|

## Properties


### slug



```php
public $slug
```






***

### name



```php
public $name
```






***

### allow_extra_metadata



```php
public $allow_extra_metadata
```






***

### context_url



```php
public $context_url
```






***

### header



```php
public $header
```






***

### prefixes



```php
public $prefixes
```






***

### XML_namespace



```php
public $XML_namespace
```






***

### XML_append_root



```php
public $XML_append_root
```






***

## Methods


### __construct

END: XML especial case *

```php
public __construct(): mixed
```












***


## Inherited methods


### _toArray



```php
public _toArray(): mixed
```












***

### get_url

Gets the semantic URL for a given metadatum of this mapper.

```php
public get_url(string $meta_slug): string
```

Basically it identifies the property prefix and replace it with the URL of that prefix






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$meta_slug` | **string** | The slug of the metadata present in this mapper to get the URL from |


**Return Value:**

The semantic URL for this metadata. Empty string in case of failure




***

### __construct



```php
public __construct(): mixed
```












***


***
> Automatically generated on 2025-09-02
