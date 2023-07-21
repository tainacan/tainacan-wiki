***

# Background_Exporter

Tainacan_Background_Process class.



* Full name: `\Tainacan\Background_Exporter`
* Parent class: [`\Tainacan\Background_Process`](./Background_Process.md)



## Properties


### action

Action

```php
protected string $action
```






***

## Methods


### __construct

Initiate new background process

```php
public __construct(): mixed
```











***

### task



```php
public task(mixed $batch): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$batch` | **mixed** |  |




***


## Inherited methods


### __construct

Initiate new async request

```php
public __construct(): mixed
```











***

### get_id



```php
public get_id(): mixed
```











***

### get_name

Gets the name of the process.

```php
public get_name(): string
```

Override this method to set a name to the process

Default "Background Process"









***

### set_name

Set name

```php
public set_name(mixed $name): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$name` | **mixed** |  |




***

### save

Save queue

```php
public save(): $this
```











***

### update

Update queue

```php
public update(string $key, array $data): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **string** | Key. |
| `$data` | **array** | Data. |




***

### open

Set batch as running

```php
public open(string $key): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **string** | Key. |




***

### close

Mark a process as done

```php
public close(string $key, mixed $status = &#039;finished&#039;): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **string** | Key. |
| `$status` | **mixed** |  |




***

### delete

Delete queue

```php
public delete(string $key): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **string** | Key. |




***

### is_queue_empty

Is queue empty

```php
protected is_queue_empty(): bool
```











***

### get_batch

Get batch

```php
protected get_batch(): \stdClass
```









**Return Value:**

Return the first batch from the queue



***

### handle

Handle

```php
protected handle(): mixed
```

Override this method to perform any actions required
during the async request.


* This method is **abstract**.






***

### delete_all_batches

Delete all batches.

```php
public delete_all_batches(): \Tainacan\WC_Background_Process
```











***

### kill_process

Kill process.

```php
public kill_process(): mixed
```

Stop processing queue items, clear cronjob and delete all batches.









***

### write_log_to_file

LOG

```php
protected write_log_to_file(mixed $key, array $log, mixed $type = &#039;&#039;): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **mixed** |  |
| `$log` | **array** |  |
| `$type` | **mixed** |  |




***

### write_log



```php
protected write_log(mixed $key, mixed $log): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **mixed** |  |
| `$log` | **mixed** |  |




***

### write_error_log



```php
protected write_error_log(mixed $key, mixed $log): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **mixed** |  |
| `$log` | **mixed** |  |




***

### recursive_stingify_log_array



```php
private recursive_stingify_log_array(array $log, mixed $break = true): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$log` | **array** |  |
| `$break` | **mixed** |  |




***

### has_errors



```php
private has_errors(mixed $key): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$key` | **mixed** |  |




***

### dispatch

Dispatch the async request

```php
public dispatch(): array|\WP_Error
```











***

### push_to_queue

Push to queue

```php
public push_to_queue(mixed $data): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$data` | **mixed** | Data. |




***

### generate_key

Generate key

```php
protected generate_key(int $length = 64): string
```

Generates a unique key based on microtime. Queue items are
given a unique key so that they can be merged upon save.






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$length` | **int** | Length. |




***

### maybe_handle

Maybe handle

```php
public maybe_handle(): mixed
```

Check for correct nonce and pass to handler.









***

### is_process_running

Is process running

```php
protected is_process_running(): mixed
```

Check whether the current process is already running
in a background process.









***

### lock_process

Lock process

```php
protected lock_process(): mixed
```

Lock the process so that multiple instances can't run simultaneously.
Override if applicable, but the duration should be greater than that
defined in the time_exceeded() method.









***

### unlock_process

Unlock process

```php
protected unlock_process(): $this
```

Unlock the process so that other instances can spawn.









***

### memory_exceeded

Memory exceeded

```php
protected memory_exceeded(): bool
```

Ensures the batch process never exceeds 90%
of the maximum WordPress memory.









***

### get_memory_limit

Get memory limit

```php
protected get_memory_limit(): int
```











***

### time_exceeded

Time exceeded.

```php
protected time_exceeded(): bool
```

Ensures the batch never exceeds a sensible time limit.
A timeout limit of 30s is common on shared hosting.









***

### complete

Complete.

```php
protected complete(): mixed
```

Override if applicable, but ensure that the below actions are
performed, or, call parent::complete().









***

### schedule_cron_healthcheck

Schedule cron healthcheck

```php
public schedule_cron_healthcheck(mixed $schedules): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$schedules` | **mixed** | Schedules. |




***

### handle_cron_healthcheck

Handle cron healthcheck

```php
public handle_cron_healthcheck(): mixed
```

Restart the background process if not already running
and data exists in the queue.









***

### handle_cron_healthcheck_check

Checks the healthcheck

```php
public handle_cron_healthcheck_check(): mixed
```

If there is an open process, not running, and not scheduled. schedule it.









***

### schedule_event

Schedule event

```php
protected schedule_event(): mixed
```











***

### clear_scheduled_event

Clear scheduled event

```php
protected clear_scheduled_event(): mixed
```











***

### cancel_process

Cancel Process

```php
public cancel_process(): mixed
```

Stop processing queue items, clear cronjob and delete batch.









***

### task

Task

```php
protected task(mixed $item): mixed
```

Override this method to perform any actions required on each
queue item. Return the modified item for further processing
in the next pass through. Or, return false to remove the
item from the queue.


* This method is **abstract**.



**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item` | **mixed** | Queue item to iterate over. |




***

### debug

desperate method to help debug bg processes

```php
public debug(mixed $message): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$message` | **mixed** |  |




***

### data

Set data used during the request

```php
public data(array $data): $this
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$data` | **array** | Data. |




***

### get_query_args

Get query args

```php
protected get_query_args(): array
```











***

### get_query_url

Get query URL

```php
protected get_query_url(): string
```











***

### get_post_args

Get post args

```php
protected get_post_args(): array
```











***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
