***

# OAIPMH_List_Sets

Support Dublin Core Mapping
http://purl.org/dc/elements/1.1/



* Full name: `\Tainacan\OAIPMHExpose\OAIPMH_List_Sets`
* Parent class: [`\Tainacan\OAIPMHExpose\OAIPMH_Expose`](./OAIPMH_Expose.md)



## Properties


### working_node



```php
protected $working_node
```






***

### errors



```php
public $errors
```






***

### xml_creater



```php
public $xml_creater
```






***

### restoken



```php
public $restoken
```






***

### expirationdatetime



```php
public $expirationdatetime
```






***

### num_rows



```php
public $num_rows
```






***

### cursor



```php
public $cursor
```






***

### deliveredrecords



```php
public $deliveredrecords
```






***

### from



```php
public $from
```






***

### until



```php
public $until
```






***

### sets



```php
public $sets
```






***

### metadataPrefix



```php
public $metadataPrefix
```






***

### collection_repository



```php
public $collection_repository
```






***

## Methods


### __construct



```php
public __construct(): mixed
```











***

### list_collections



```php
public list_collections(): array
```











***

### limit_data



```php
public limit_data( $objects): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$objects` | **** |  |




***

### list_sets



```php
public list_sets(mixed $data): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$data` | **mixed** |  |




***

### initiate_variables



```php
public initiate_variables( $data): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$data` | **** |  |




***

### verify_resumption_token



```php
public verify_resumption_token( $numRows): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$numRows` | **** |  |




***

### add_resumption_token_xml



```php
public add_resumption_token_xml( $numRows): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$numRows` | **** |  |




***


## Inherited methods


### config



```php
public config(): mixed
```











***

### is_valid_uri



```php
public is_valid_uri( $url): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$url` | **** |  |




***

### is_valid_attrb



```php
public is_valid_attrb( $attrb): false|int
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$attrb` | **** |  |




***

### formatDatestamp



```php
public formatDatestamp( $datestamp): false|string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$datestamp` | **** |  |




***

### checkDateFormat



```php
public checkDateFormat( $date): bool|false|string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$date` | **** |  |




***

### prepare_set_names



```php
public prepare_set_names(): array
```











***

### oai_exit



```php
public oai_exit( $args,  $errors): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **** |  |
| `$errors` | **** |  |




***

### create_token_dir



```php
protected create_token_dir(): bool|string
```











***

### get_token

Generate a string based on the current Unix timestamp in microseconds for creating resumToken file name.

```php
public get_token(): mixed
```











***

### createResumToken

Create a token file.

```php
public createResumToken(mixed $cursor, mixed $from, mixed $until, mixed $sets, mixed $metadataPrefix): mixed
```

It has three parts which is separated by '#': cursor, extension of query, metadataPrefix.
Called by listrecords.php.






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$cursor` | **mixed** |  |
| `$from` | **mixed** |  |
| `$until` | **mixed** |  |
| `$sets` | **mixed** |  |
| `$metadataPrefix` | **mixed** |  |




***

### readResumToken

Read a saved ResumToken

```php
public readResumToken(mixed $resumptionToken): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$resumptionToken` | **mixed** |  |




***

### oai_error

utility funciton to mapping error codes to readable messages

```php
public oai_error(mixed $code, mixed $argument = &#039;&#039;, mixed $value = &#039;&#039;): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$code` | **mixed** |  |
| `$argument` | **mixed** |  |
| `$value` | **mixed** |  |




***

### get_metadata_formats

function get_metadata_formats

```php
public get_metadata_formats(int $item_id = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_id` | **int** |  |




***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
