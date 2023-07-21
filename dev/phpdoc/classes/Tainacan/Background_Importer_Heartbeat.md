***

# Background_Importer_Heartbeat





* Full name: `\Tainacan\Background_Importer_Heartbeat`




## Methods


### __construct



```php
public __construct(): mixed
```











***

### bg_process_feedback

Receive Heartbeat data and response.

```php
public bg_process_feedback(array $response, array $data): mixed
```

Processes data received via a Heartbeat request, and returns additional data to pass back to the front end.






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$response` | **array** | Heartbeat response data to pass back to front end. |
| `$data` | **array** | Data received from the front end (unslashed). |




***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
