***

# Media

Class withe helpful methods to handle media in Tainacan



* Full name: `\Tainacan\Media`



## Properties


### instance



```php
private static $instance
```



* This property is **static**.


***

### file_handle



```php
private static $file_handle
```



* This property is **static**.


***

### file_name



```php
private static $file_name
```



* This property is **static**.


***

### attachment_html_url_base



```php
private $attachment_html_url_base
```






***

### THROW_EXCPTION_ON_FATAL_ERROR



```php
private $THROW_EXCPTION_ON_FATAL_ERROR
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
protected __construct(): mixed
```











***

### add_attachment_page_rewrite_rule



```php
public add_attachment_page_rewrite_rule(): mixed
```











***

### add_css



```php
public add_css(): mixed
```











***

### attachment_page_add_var



```php
public attachment_page_add_var(mixed $vars): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$vars` | **mixed** |  |




***

### flush_buffers



```php
private flush_buffers(): mixed
```











***

### insert_attachment_from_url

Insert an attachment from an URL address.

```php
public insert_attachment_from_url(string $url, int $post_id = null): int|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$url` | **string** |  |
| `$post_id` | **int** | (optional) the post this attachement should be attached to. empty for none |


**Return Value:**

Attachment ID. False on failure



***

### insert_attachment_from_file

Insert an attachment from a local file.

```php
public insert_attachment_from_file(string $filename, int $post_id = null): int|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$filename` | **string** | The path to the file |
| `$post_id` | **int** | (optional) the post this attachement should be attached to. empty for none |


**Return Value:**

Attachment ID. False on failure



***

### save_remote_file

Avoid memory overflow problems with large files (Exceeded maximum memory limit of PHP)

```php
public save_remote_file( $url): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$url` | **** |  |


**Return Value:**

the file path



***

### insert_attachment_from_blob

Insert an attachment from an URL address.

```php
public insert_attachment_from_blob(\Tainacan\blob $blob, string $filename, int $post_id = null): int|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$blob` | **\Tainacan\blob** | bitstream of the attachment |
| `$filename` | **string** | The filename that will be created |
| `$post_id` | **int** | (optional) the post this attachement should be attached to. empty for none |


**Return Value:**

Attachment ID. False on failure



***

### get_mime_content_type

Add support to get mime type content even when mime_content_type function is not available

```php
public get_mime_content_type(string $filename): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$filename` | **string** | The file name to check the mime type |


**Return Value:**

mime type           @see \mime_content_type()



***

### get_pdf_cover

Extract an image from the first page of a pdf file

```php
public get_pdf_cover(string $filepath): \Tainacan\blob
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$filepath` | **string** | The pdf filepath in the server |


**Return Value:**

bitstream of the image in jpg format



***

### shutdown_function



```php
public shutdown_function(): mixed
```











***

### index_pdf_content



```php
public index_pdf_content(mixed $file, mixed $item_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$file` | **mixed** |  |
| `$item_id` | **mixed** |  |




***

### get_attachment_html_url



```php
public get_attachment_html_url(mixed $attachment_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$attachment_id` | **mixed** |  |




***

### attachment_page



```php
public attachment_page(): mixed
```











***

### get_default_image_blurhash



```php
public get_default_image_blurhash(): mixed
```











***

### get_image_blurhash



```php
public get_image_blurhash(mixed $file_path, mixed $width, mixed $height): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$file_path` | **mixed** |  |
| `$width` | **mixed** |  |
| `$height` | **mixed** |  |




***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
