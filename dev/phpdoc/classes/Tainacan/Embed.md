***

# Embed





* Full name: `\Tainacan\Embed`



## Properties


### aspect_ratios



```php
private static $aspect_ratios
```



* This property is **static**.


***

## Methods


### init



```php
protected init(): mixed
```












***

### filter_video_embed



```php
public filter_video_embed(mixed $video, mixed $attr, mixed $url, mixed $rawattr): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$video` | **mixed** |  |
| `$attr` | **mixed** |  |
| `$url` | **mixed** |  |
| `$rawattr` | **mixed** |  |





***

### filter_audio_embed



```php
public filter_audio_embed(mixed $audio, mixed $attr, mixed $url, mixed $rawattr): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$audio` | **mixed** |  |
| `$attr` | **mixed** |  |
| `$url` | **mixed** |  |
| `$rawattr` | **mixed** |  |





***

### pdf_embed_handler



```php
public pdf_embed_handler(mixed $matches, mixed $attr, mixed $url, mixed $rawattr): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$matches` | **mixed** |  |
| `$attr` | **mixed** |  |
| `$url` | **mixed** |  |
| `$rawattr` | **mixed** |  |





***

### oembed_get_thumbnail

Retrieves the thumbnail URL, if provided, for a given URL

```php
public oembed_get_thumbnail(mixed $url): string|null
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$url` | **mixed** |  |


**Return Value:**

The thumbnail URL or null on failure




***

### oembed_get_thumbnail_filter



```php
public oembed_get_thumbnail_filter(mixed $return, mixed $data, mixed $url): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$return` | **mixed** |  |
| `$data` | **mixed** |  |
| `$url` | **mixed** |  |





***

### add_css

Responsiveness

```php
public add_css(): mixed
```












***

### add_responsive_wrapper

Get responsive class based on aspect ratio
This code is heavily inspired by Gutenberg plugin's "getClassNames" function.

```php
public add_responsive_wrapper(mixed $html): mixed
```

Check their source code for more details: /packages/block-library/src/embed/util.js






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$html` | **mixed** |  |





***


## Inherited methods


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


***
> Automatically generated on 2025-09-02
