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

### metadata

array of supported metadata, false for not validade the list format:
['slug'] => [
    'URI' => 'http://...',          // URI of the metadatum description
    'label' => 'Label',             // Label to show on UI
    'metadata_type' => 'date',         // Tainacan recomended metadatum type, default text
    'core_metadatum' => false   // if have a core tainacan metadatum, what?
['date' => [
    	'URI' => 'http://purl.org/dc/elements/1.1/date',
 	'label' => 'Date',
     'metadata_type' => 'date'
 ],
 'description' => [
 	'URI' => 'http://purl.org/dc/elements/1.1/description',
 	'label' => 'Description',
     'core_metadatum' => true
 ]]

```php
public array $metadata
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


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
