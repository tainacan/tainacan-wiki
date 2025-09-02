
Abstract Tainacan\Background_Process_Base class.

***

* Full name: `\Tainacan\Background_Process_Base`
* Parent class: [`\Tainacan\Async_Request`](./Async_Request)
* This class is an **Abstract class**

## Properties

### action

Action

```php
protected string $action
```

(default value: 'background_process')

***

### start_time

Start time of current process.

```php
protected int $start_time
```

(default value: 0)

***

### cron_hook_identifier

Cron_hook_identifier

```php
protected mixed $cron_hook_identifier
```

***

### cron_interval_identifier

Cron_interval_identifier

```php
protected mixed $cron_interval_identifier
```

***

### cron_hook_check_identifier

cron_hook_check_identifier

```php
protected string $cron_hook_check_identifier
```

***

### process_lock_in_time

process_lock_in_time

```php
protected string $process_lock_in_time
```

***

### queue_lock_time

queue_lock_time

```php
protected string $queue_lock_time
```

***

### cron_interval

cron_interval

```php
protected string $cron_interval
```

***

## Methods

### __construct

Initiate new background process

```php
public __construct(): mixed
```

***

### dispatch

Dispatch

```php
public dispatch(): void
```

***

### push_to_queue

Push to queue

```php
public push_to_queue(mixed $data): $this
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$data`   | **mixed** | Data.       |

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

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$key`    | **string** | Key.        |
| `$data`   | **array**  | Data.       |

***

### delete

Delete queue

```php
public delete(string $key): $this
```

**Parameters:**

| Parameter | Type       | Description |
|-----------|------------|-------------|
| `$key`    | **string** | Key.        |

***

### generate_key

Generate key

```php
protected generate_key(int $length = 64): string
```

Generates a unique key based on microtime. Queue items are
given a unique key so that they can be merged upon save.

**Parameters:**

| Parameter | Type    | Description |
|-----------|---------|-------------|
| `$length` | **int** | Length.     |

***

### maybe_handle

Maybe process queue

```php
public maybe_handle(): mixed
```

Checks whether data exists within the queue and that
the process is not already running.

***

### is_queue_empty

Is queue empty

```php
protected is_queue_empty(): bool
```

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

### get_batch

Get batch

```php
protected get_batch(): \Tainacan\stdClass
```

**Return Value:**

Return the first batch from the queue

***

### handle

Handle

```php
protected handle(): mixed
```

Pass each queue item to the task handler, while remaining
within server memory and time limit constraints.

***

### memory_exceeded

Memory exceeded

```php
protected memory_exceeded(): bool
```

Ensures the batch process never exceeds 90%%
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

| Parameter    | Type      | Description |
|--------------|-----------|-------------|
| `$schedules` | **mixed** | Schedules.  |

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

| Parameter | Type      | Description                 |
|-----------|-----------|-----------------------------|
| `$item`   | **mixed** | Queue item to iterate over. |

***

### debug

desperate method to help debug bg processes

```php
public debug(mixed $message): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$message` | **mixed** |             |

***

## Inherited methods

### __construct

Initiate new async request

```php
public __construct(): mixed
```

***

### data

Set data used during the request

```php
public data(array $data): $this
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$data`   | **array** | Data.       |

***

### dispatch

Dispatch the async request

```php
public dispatch(): array|\Tainacan\WP_Error
```

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

### maybe_handle

Maybe handle

```php
public maybe_handle(): mixed
```

Check for correct nonce and pass to handler.

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
