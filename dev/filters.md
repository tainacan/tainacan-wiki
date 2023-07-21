# Hooks

## Filters

### `tainacan-oai-maxrecords`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`100` |  | 

Source: [/src/tainacan/src/classes/oaipmh/class-tainacan-oaipmh-expose.php](src/classes/oaipmh/class-tainacan-oaipmh-expose.php), [line 73](src/classes/oaipmh/class-tainacan-oaipmh-expose.php#L73-L73)

### `tainacan-oai-token-valid`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`24 * 3600` |  | 

Source: [/src/tainacan/src/classes/oaipmh/class-tainacan-oaipmh-expose.php](src/classes/oaipmh/class-tainacan-oaipmh-expose.php), [line 76](src/classes/oaipmh/class-tainacan-oaipmh-expose.php#L76-L76)

### `tainacan-extract-pdf-cover`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`null` |  | 
`$filepath` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 202](src/classes/class-tainacan-media.php#L202-L202)

### `tainacan-index-pdf`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`null` |  | 
`$file` |  | 
`$item_id` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 265](src/classes/class-tainacan-media.php#L265-L265)

### `tainacan-default-image-blurhash`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`"V4P?:h00Rj~qM{of%MRjWBRjD%%MRjayofj[%M-;RjRj"` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 353](src/classes/class-tainacan-media.php#L353-L353)

### `https_local_ssl_verify`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`false` |  | 

Source: [/src/tainacan/src/classes/libs/wp-async-request.php](src/classes/libs/wp-async-request.php), [line 133](src/classes/libs/wp-async-request.php#L133-L133)

### `{$this->identifier}_queue_lock_time`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$lock_duration` |  | 

Source: [/src/tainacan/src/classes/libs/wp-background-process.php](src/classes/libs/wp-background-process.php), [line 246](src/classes/libs/wp-background-process.php#L246-L246)

### `{$this->identifier}_memory_exceeded`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$return` |  | 

Source: [/src/tainacan/src/classes/libs/wp-background-process.php](src/classes/libs/wp-background-process.php), [line 367](src/classes/libs/wp-background-process.php#L367-L367)

### `{$this->identifier}_default_time_limit`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`20` |  | 

Source: [/src/tainacan/src/classes/libs/wp-background-process.php](src/classes/libs/wp-background-process.php), [line 400](src/classes/libs/wp-background-process.php#L400-L400)

### `{$this->identifier}_time_exceeded`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$return` |  | 

Source: [/src/tainacan/src/classes/libs/wp-background-process.php](src/classes/libs/wp-background-process.php), [line 407](src/classes/libs/wp-background-process.php#L407-L407)

### `{$this->identifier}_cron_interval`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`5` |  | 

Source: [/src/tainacan/src/classes/libs/wp-background-process.php](src/classes/libs/wp-background-process.php), [line 429](src/classes/libs/wp-background-process.php#L429-L429)

### `{$this->identifier}_cron_interval`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->cron_interval` |  | 

Source: [/src/tainacan/src/classes/libs/wp-background-process.php](src/classes/libs/wp-background-process.php), [line 432](src/classes/libs/wp-background-process.php#L432-L432)

### `tainacan-the-modified-author`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$last_user->display_name` |  | 

Source: [/src/tainacan/src/classes/exporter/class-tainacan-csv.php](src/classes/exporter/class-tainacan-csv.php), [line 165](src/classes/exporter/class-tainacan-csv.php#L165-L165)

### `tainacan-exporter-step-length-items`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`20` |  | 
`$this->get_current_step()` |  | 

Source: [/src/tainacan/src/classes/exporter/class-tainacan-exporter.php](src/classes/exporter/class-tainacan-exporter.php), [line 253](src/classes/exporter/class-tainacan-exporter.php#L253-L253)

### `tainacan-get-mapper-from-request`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$return_mapper` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/mappers/class-tainacan-mappers-handler.php](src/classes/mappers/class-tainacan-mappers-handler.php), [line 159](src/classes/mappers/class-tainacan-mappers-handler.php#L159-L159)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['name' => ['map' => 'post_title', 'title' => __('Name', 'tainacan'), 'type' => 'string', 'description' => __('Name of the taxonomy', 'tainacan'), 'on_error' => __('The taxonomy name should be a text value and should not be empty.', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The taxonomy description', 'tainacan'), 'default' => '', 'validation' => ''], 'slug' => ['map' => 'post_name', 'title' => __('Slug', 'tainacan'), 'type' => 'string', 'description' => __('The taxonomy slug', 'tainacan'), 'validation' => ''], 'allow_insert' => [
    'map' => 'meta',
    'title' => __('Allow insert', 'tainacan'),
    'type' => 'string',
    'description' => __('Allow/Deny the creation of new terms in the taxonomy', 'tainacan'),
    'on_error' => __('Invalid insertion, allowed values are ( yes/no )', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'enum' => ['yes', 'no'],
    'default' => 'yes',
], 'hierarchical' => [
    'map' => 'meta',
    'title' => __('Allow terms hierarchy', 'tainacan'),
    'type' => 'string',
    'description' => __('Allow/Deny the existence of terms children to build a hierarchy', 'tainacan'),
    'on_error' => __('Invalid insertion, allowed values are ( yes/no )', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'enum' => ['yes', 'no'],
    'default' => 'yes',
], 'enabled_post_types' => ['map' => 'meta_multi', 'title' => __('Enabled for post types', 'tainacan'), 'type' => ['array', 'string'], 'description' => __('Also enable this taxonomy for other WordPress post types', 'tainacan'), 'on_error' => __('Error enabling this taxonomy for post types', 'tainacan'), 'validation' => '', 'default' => []], 'collections_ids' => ['map' => 'meta_multi', 'title' => __('Collections', 'tainacan'), 'type' => 'string', 'description' => __('The IDs of collection where the taxonomy is used', 'tainacan'), 'validation' => '']]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-taxonomies.php](src/classes/repositories/class-tainacan-taxonomies.php), [line 36](src/classes/repositories/class-tainacan-taxonomies.php#L36-L96)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'taxonomies'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-taxonomies.php](src/classes/repositories/class-tainacan-taxonomies.php), [line 208](src/classes/repositories/class-tainacan-taxonomies.php#L208-L208)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[
    'title' => ['map' => 'post_title', 'title' => __('Title', 'tainacan'), 'type' => 'string', 'description' => __('The title of the log', 'tainacan'), 'on_error' => __('The title should be a text value and not empty', 'tainacan'), 'validation' => ''],
    'date' => ['map' => 'post_date', 'title' => __('Log date', 'tainacan'), 'type' => 'string', 'description' => __('The moment when the log was registered', 'tainacan')],
    'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The log description'), 'default' => '', 'validation' => ''],
    'slug' => ['map' => 'post_name', 'title' => __('Slug', 'tainacan'), 'type' => 'string', 'description' => __('The log slug'), 'validation' => ''],
    'user_id' => ['map' => 'post_author', 'title' => __('User ID', 'tainacan'), 'type' => 'integer', 'description' => __('Unique identifier'), 'validation' => ''],
    'item_id' => ['map' => 'meta', 'title' => __('Item ID', 'tainacan'), 'description' => __('Item ID', 'tainacan'), 'type' => 'integer'],
    // 'value'          => [
    // 	'map'         => 'meta',
    // 	'title'       => __( 'Actual value', 'tainacan' ),
    // 	'type'        => 'string',
    // 	'description' => __( 'The actual log value' ),
    // 	'validation'  => ''
    // ],
    'log_diffs' => [
        // deprecated
        'map' => 'meta',
        'title' => __('Log differences', 'tainacan'),
        'description' => __('Differences between old and new versions of object', 'tainacan'),
        'type' => 'string',
    ],
    'collection_id' => ['map' => 'meta', 'title' => __('Log collection relationship', 'tainacan'), 'description' => __('The ID of the collection that this log is related to', 'tainacan'), 'type' => 'string'],
    'object_id' => ['map' => 'meta', 'title' => __('Log item relationship', 'tainacan'), 'description' => __('The ID of the object that this log is related to', 'tainacan'), 'type' => ['string', 'integer']],
    'object_type' => ['map' => 'meta', 'title' => __('Log item relationship', 'tainacan'), 'description' => __('The type of the object that this log is related to', 'tainacan'), 'type' => 'string'],
    'old_value' => ['map' => 'meta', 'title' => __('Old value', 'tainacan'), 'description' => __('Value of the field previous to the edition registered by the log.', 'tainacan'), 'type' => 'string'],
    'new_value' => ['map' => 'meta', 'title' => __('New value', 'tainacan'), 'description' => __('Value of the field after the edition registered by the log.', 'tainacan'), 'type' => 'string'],
    'action' => ['map' => 'meta', 'title' => __('Action', 'tainacan'), 'description' => __('Type of action registered by the log.', 'tainacan'), 'type' => 'string'],
]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-logs.php](src/classes/repositories/class-tainacan-logs.php), [line 50](src/classes/repositories/class-tainacan-logs.php#L50-L142)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'logs'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-logs.php](src/classes/repositories/class-tainacan-logs.php), [line 229](src/classes/repositories/class-tainacan-logs.php#L229-L229)

### `tainacan-entity-diff`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$diff` |  | 
`$unsaved` |  | 
`$old` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-logs.php](src/classes/repositories/class-tainacan-logs.php), [line 449](src/classes/repositories/class-tainacan-logs.php#L449-L449)

### `tainacan-entity-diff`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$diff` |  | 
`$unsaved` |  | 
`$old` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-logs.php](src/classes/repositories/class-tainacan-logs.php), [line 476](src/classes/repositories/class-tainacan-logs.php#L476-L476)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['name' => ['map' => 'post_title', 'title' => __('Name', 'tainacan'), 'type' => 'string', 'description' => __('Name of the metadata', 'tainacan'), 'on_error' => __('The name should be a text value and not empty', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'slug' => ['map' => 'post_name', 'title' => __('Slug', 'tainacan'), 'type' => 'string', 'description' => __('A unique and sanitized string representation of the metadata', 'tainacan')], 'order' => ['map' => 'menu_order', 'title' => __('Order', 'tainacan'), 'type' => ['string', 'integer'], 'description' => __('Metadata order. This metadata will be used if collections were manually ordered.', 'tainacan'), 'on_error' => __('The menu order should be a numeric value', 'tainacan')], 'parent' => ['map' => 'post_parent', 'title' => __('Parent', 'tainacan'), 'type' => 'integer', 'description' => __('Parent metadata', 'tainacan'), 'default' => 0], 'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The metadatum description. This may provide information on how to fill this metadatum, which will appear inside a tooltip alongside the input label, or below it.', 'tainacan'), 'default' => ''], 'description_bellow_name' => [
    'map' => 'meta',
    'title' => __('Description below name', 'tainacan'),
    'type' => 'string',
    'description' => __('Whether the metadatum description should be displayed below the input label instead of inside a tooltip.', 'tainacan'),
    'on_error' => __('Please set the "Description below name" value as "yes" or "no"', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'enum' => ['yes', 'no'],
    'default' => 'no',
], 'placeholder' => ['map' => 'meta', 'title' => __('Placeholder', 'tainacan'), 'type' => 'string', 'description' => __('The metadatum placeholder. This is a simple message that will appear inside textual input and may indicate to the user what kind of information is expected.', 'tainacan'), 'default' => ''], 'metadata_type' => ['map' => 'meta', 'title' => __('Type', 'tainacan'), 'type' => 'string', 'description' => __('The metadata type class name, such as Tainacan\\Metadata_Types\\Core_Title', 'tainacan'), 'on_error' => __('Metadata type is empty', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'required' => [
    'map' => 'meta',
    'title' => __('Required', 'tainacan'),
    'type' => 'string',
    'description' => __('The metadata is required. All items in this collection must fill this field', 'tainacan'),
    'on_error' => __('The metadata content is invalid', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'enum' => ['yes', 'no'],
    'default' => 'no',
], 'collection_key' => [
    'map' => 'meta',
    'title' => __('Unique value', 'tainacan'),
    'type' => 'string',
    'description' => __('Metadata value should be unique accross all items in this collection', 'tainacan'),
    'on_error' => __('You cannot have two items with the same value for this metadatum', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'enum' => ['yes', 'no'],
    'default' => 'no',
], 'multiple' => [
    'map' => 'meta',
    'title' => __('Multiple', 'tainacan'),
    'type' => 'string',
    'description' => __('Allow items to have more than one value for this metadatum', 'tainacan'),
    'on_error' => __('Invalid multiple metadata', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no. It cant be multiple if its collection_key
    'enum' => ['yes', 'no'],
    'default' => 'no',
], 'cardinality' => ['map' => 'meta', 'title' => __('Maximum number of values', 'tainacan'), 'type' => ['string', 'number'], 'description' => __('Limit the amount of possible metadata values', 'tainacan'), 'on_error' => __('This number of multiple metadata is not allowed', 'tainacan')], 'default_value' => ['map' => 'meta', 'title' => __('Default value', 'tainacan'), 'type' => 'string', 'description' => __('The default value for the metadata', 'tainacan')], 'metadata_type_options' => [
    // not showed in form
    'map' => 'meta',
    'title' => __('Metadata type options', 'tainacan'),
    'type' => ['array', 'object'],
    'items' => ['type' => ['array', 'string', 'integer', 'object']],
    'description' => __('Specific options for metadata type', 'tainacan'),
], 'collection_id' => [
    // not showed in form
    'map' => 'meta',
    'title' => __('Collection', 'tainacan'),
    'type' => ['integer', 'string'],
    'description' => __('The collection ID', 'tainacan'),
], 'accept_suggestion' => ['map' => 'meta', 'title' => __('Metadata Value Accepts Suggestions', 'tainacan'), 'type' => 'boolean', 'description' => __('Allow community to suggest different values for the metadata', 'tainacan'), 'default' => false, 'validation' => v::boolType()], 'exposer_mapping' => [
    'map' => 'meta',
    'title' => __('Relationship metadata mapping', 'tainacan'),
    'type' => ['array', 'object', 'string'],
    'items' => ['type' => ['array', 'string', 'integer', 'object']],
    'description' => __('The metadata mapping options. Metadata can be configured to match another type of data distribution.', 'tainacan'),
    'on_error' => __('Invalid Metadata Mapping', 'tainacan'),
    //'validation' =>  v::arrayType(),
    'default' => [],
], 'display' => ['map' => 'meta', 'title' => __('Display', 'tainacan'), 'type' => 'string', 'validation' => v::stringType()->in(['yes', 'no', 'never']), 'enum' => ['yes', 'no', 'never'], 'description' => __('Display by default on listing or do not display or never display.', 'tainacan'), 'default' => 'no'], 'semantic_uri' => ['map' => 'meta', 'title' => __('The semantic metadatum description URI'), 'type' => 'string', 'validation' => v::optional(v::url()), 'description' => __('The semantic metadatum description URI like: ', 'tainacan') . 'https://schema.org/URL', 'default' => ''], 'repository_level' => [
    'map' => 'meta',
    'title' => __('Repository metadata', 'tainacan'),
    'type' => 'string',
    'description' => __('Makes this metadatum a repository level metadatum instead of collection metadatum', 'tainacan'),
    'on_error' => __('Invalid value for repository metadata', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    'enum' => ['yes', 'no'],
    // yes or no. It cant be multiple if its collection_key
    'default' => 'no',
], 'metadata_section_id' => ['map' => 'meta_multi', 'title' => __('Metadata section', 'tainacan'), 'type' => ['integer', 'string', 'array'], 'description' => __('The metadata section ID', 'tainacan'), 'default' => \Tainacan\Entities\Metadata_Section::$default_section_slug]]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 55](src/classes/repositories/class-tainacan-metadata.php#L55-L235)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'metadata'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 378](src/classes/repositories/class-tainacan-metadata.php#L378-L378)

### `tainacan-fetch-all-metadatum-values`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`null` |  | 
`$metadatum` |  | 
`$args` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1243](src/classes/repositories/class-tainacan-metadata.php#L1243-L1243)

### `tainacan-terms-hierarchy-html-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'>'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1393](src/classes/repositories/class-tainacan-metadata.php#L1393-L1393)

### `tainacan-item-get-author-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$name` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1480](src/classes/repositories/class-tainacan-metadata.php#L1480-L1480)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['name' => ['map' => 'post_title', 'title' => __('Name', 'tainacan'), 'type' => 'string', 'description' => __('The title of the collection', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'status' => ['map' => 'post_status', 'title' => __('Status', 'tainacan'), 'type' => 'string', 'default' => '', 'description' => __('The current situation of the collection. It also affects the visibility of the collection items, as public items from private collections do not appear in the site.', 'tainacan')], 'author_id' => ['map' => 'post_author', 'title' => __('Author ID', 'tainacan'), 'type' => 'string', 'description' => __('The collection author\'s user ID (numeric string)', 'tainacan')], 'creation_date' => ['map' => 'post_date', 'title' => __('Creation Date', 'tainacan'), 'type' => 'string', 'description' => __('The collection creation date', 'tainacan')], 'modification_date' => ['map' => 'post_modified', 'title' => __('Modification Date', 'tainacan'), 'type' => 'string', 'description' => __('The collection modification date', 'tainacan')], 'order' => ['map' => 'order', 'title' => __('Order', 'tainacan'), 'type' => 'string', 'description' => __('Collection order. This metadata is used if collections are manually ordered.', 'tainacan')], 'parent' => ['map' => 'post_parent', 'title' => __('Parent Collection', 'tainacan'), 'type' => 'integer', 'description' => __('Original collection from which features are inherited', 'tainacan')], 'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('An introductory text describing the collection', 'tainacan'), 'default' => ''], 'slug' => ['map' => 'post_name', 'title' => __('Slug', 'tainacan'), 'type' => 'string', 'description' => __('An unique and sanitized string representation of the collection, used to build the collection URL. It must not contain any special characters or spaces.', 'tainacan')], 'default_orderby' => ['map' => 'meta', 'title' => __('Default order metadata', 'tainacan'), 'type' => ['string', 'array', 'object'], 'description' => __('Default property that items in this collections will be ordered by', 'tainacan'), 'default' => 'date'], 'default_order' => ['map' => 'meta', 'title' => __('Default order', 'tainacan'), 'description' => __('Default order for items in this collection. ASC or DESC', 'tainacan'), 'type' => 'string', 'default' => 'ASC', 'enum' => ['ASC', 'DESC'], 'validation' => v::stringType()->in(['ASC', 'DESC'])], 'default_displayed_metadata' => ['map' => 'meta', 'title' => __('Default Displayed Metadata', 'tainacan'), 'type' => ['array', 'object', 'string'], 'items' => ['type' => ['array', 'string', 'integer', 'object']], 'default' => [], 'description' => __('List of collection properties that will be displayed in the table view', 'tainacan')], 'default_view_mode' => ['map' => 'meta', 'title' => __('Default view mode', 'tainacan'), 'type' => 'string', 'description' => __('Collection default visualization mode', 'tainacan'), 'default' => 'table'], 'enabled_view_modes' => ['map' => 'meta', 'title' => __('Enabled view modes', 'tainacan'), 'type' => 'array', 'description' => __('Which visualization modes will be available for the public to choose from', 'tainacan'), 'default' => ['table', 'cards'], 'items' => ['type' => 'string']], 'metadata_section_order' => ['map' => 'meta', 'title' => __('Metadata order', 'tainacan'), 'type' => 'array', 'items' => ['type' => 'object', 'properties' => ['id' => ['description' => __('Metadata Section ID', 'tainacan'), 'type' => ['integer', 'string']], 'enabled' => ['description' => __('Whether the metadata section is enabled or not.', 'tainacan'), 'type' => 'boolean'], 'metadata_order' => ['type' => 'array', 'description' => __('Array containing the metadata order inside the section', 'tainacan'), 'items' => ['type' => 'object', 'properties' => ['id' => ['description' => __('Metadata ID', 'tainacan'), 'type' => 'integer'], 'enabled' => ['description' => __('Whether the metadata is enabled or not.', 'tainacan'), 'type' => 'boolean']]]]]], 'description' => __('The order of the metadata section in the collection', 'tainacan')], 'metadata_order' => ['map' => 'meta', 'title' => __('Metadata order', 'tainacan'), 'type' => 'array', 'description' => __('The order of the metadata in the collection', 'tainacan'), 'items' => ['type' => 'object', 'properties' => ['id' => ['description' => __('Metadata ID', 'tainacan'), 'type' => 'integer'], 'enabled' => ['description' => __('Whether the metadata is enabled or not.', 'tainacan'), 'type' => 'boolean']]]], 'filters_order' => ['map' => 'meta', 'title' => __('Filters order', 'tainacan'), 'type' => 'array', 'description' => __('The order of the filters in the collection', 'tainacan'), 'items' => ['type' => 'object', 'properties' => ['id' => ['description' => __('Filter ID', 'tainacan'), 'type' => 'integer'], 'enabled' => ['description' => __('Whether the filter is enabled or not.', 'tainacan'), 'type' => 'boolean']]]], 'enable_cover_page' => [
    'map' => 'meta',
    'title' => __('Enable Cover Page', 'tainacan'),
    'type' => 'string',
    'description' => __('To use this page as the home page of this collection', 'tainacan'),
    'on_error' => __('Value should be yes or no', 'tainacan'),
    'enum' => ['yes', 'no'],
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'default' => 'no',
], 'cover_page_id' => [
    'map' => 'meta',
    'title' => __('Cover Page ID', 'tainacan'),
    'type' => ['integer', 'string'],
    'description' => __('If enabled, this custom page will be used as cover for this collection, instead of default items list.', 'tainacan'),
    'on_error' => __('Invalid page', 'tainacan'),
    //'validation' => v::numeric(),
    'default' => '',
], 'header_image_id' => [
    'map' => 'meta',
    'title' => __('Header Image', 'tainacan'),
    'type' => 'string',
    'description' => __('The image to be used in collection header, if the theme has one.', 'tainacan'),
    'on_error' => __('Invalid image', 'tainacan'),
    //'validation' => v::numeric(),
    'default' => '',
], '_thumbnail_id' => ['map' => 'meta', 'title' => __('Thumbnail', 'tainacan'), 'description' => __('Squared reduced-size version of a picture that helps recognizing and organizing files', 'tainacan'), 'type' => ['integer', 'string']], 'comment_status' => ['map' => 'comment_status', 'title' => __('Comment Status', 'tainacan'), 'type' => 'string', 'description' => __('Collection comment status: "open" means comments are allowed, "closed" means comments are not allowed.', 'tainacan'), 'default' => get_default_comment_status(Entities\Collection::get_post_type()), 'enum' => ['open', 'closed'], 'validation' => v::optional(v::stringType()->in(['open', 'closed']))], 'allow_comments' => ['map' => 'meta', 'title' => __('Allow enabling comments on items', 'tainacan'), 'type' => 'string', 'description' => __('If this option is enabled, items of this collection can be set to enable a comments section on their page. "open" means comments are allowed, "closed" means comments are not allowed.', 'tainacan'), 'default' => 'closed', 'enum' => ['open', 'closed'], 'validation' => v::optional(v::stringType()->in(['open', 'closed']))], 'submission_anonymous_user' => ['map' => 'meta', 'title' => __('Allows submission by anonymous user', 'tainacan'), 'type' => 'string', 'description' => __('If enabled, allows submission by anonymous users, whose does not have to be logged in with permissions on the WordPress system.', 'tainacan'), 'default' => 'no', 'on_error' => __('Value should be yes or no', 'tainacan'), 'enum' => ['yes', 'no'], 'validation' => v::stringType()->in(['yes', 'no'])], 'submission_default_status' => ['map' => 'meta', 'title' => __('Default submission item status', 'tainacan'), 'type' => 'string', 'description' => __('The default status of the item that will be created in the collection after submission.', 'tainacan'), 'default' => 'draft'], 'allows_submission' => ['map' => 'meta', 'title' => __('Allows item submission', 'tainacan'), 'type' => 'string', 'description' => __('If enabled, the collection allows item submission, for example via the Item Submission block.', 'tainacan'), 'default' => 'no', 'enum' => ['yes', 'no'], 'on_error' => __('Value should be yes or no', 'tainacan'), 'validation' => v::stringType()->in(['yes', 'no'])], 'hide_items_thumbnail_on_lists' => [
    'map' => 'meta',
    'title' => __('Hide items thumbnail on lists', 'tainacan'),
    'type' => 'string',
    'description' => __('Enable this option to never display the item thumbnail on the items list. This is ment for collections made of mainly textual content.', 'tainacan'),
    'on_error' => __('Value should be yes or no', 'tainacan'),
    'enum' => ['yes', 'no'],
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'default' => 'no',
], 'submission_use_recaptcha' => ['map' => 'meta', 'title' => __('Use reCAPTCHA verification on submission form', 'tainacan'), 'type' => 'string', 'description' => __('If enabled, the collection allows item submission using a reCAPTCHA', 'tainacan'), 'default' => 'no', 'on_error' => __('Value should be yes or no', 'tainacan'), 'enum' => ['yes', 'no'], 'validation' => v::stringType()->in(['yes', 'no'])], 'default_metadata_section_properties' => ['map' => 'meta', 'title' => __('Default metadata section properties', 'tainacan'), 'type' => 'object', 'description' => __('The default metadata section properties', 'tainacan'), 'properties' => ['name' => ['type' => 'string', 'description' => __('The name of the default metadata section', 'tainacan')], 'description' => ['type' => 'string', 'description' => __('The description of the default metadata section', 'tainacan')], 'description_bellow_name' => ['type' => 'string', 'description' => __('Whether the description should appear bellow the metadata section.', 'tainacan'), 'enum' => ['yes', 'no']]]]]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-collections.php](src/classes/repositories/class-tainacan-collections.php), [line 31](src/classes/repositories/class-tainacan-collections.php#L31-L333)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'collections'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-collections.php](src/classes/repositories/class-tainacan-collections.php), [line 461](src/classes/repositories/class-tainacan-collections.php#L461-L461)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['name' => ['map' => 'post_title', 'title' => __('Name', 'tainacan'), 'type' => 'string', 'description' => __('Name of the filter', 'tainacan'), 'on_error' => __('The filter name should be a text value and not empty', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'order' => ['map' => 'menu_order', 'title' => __('Order', 'tainacan'), 'type' => ['string', 'integer'], 'description' => __('Filter order. This metadata is used if filters were manually ordered.', 'tainacan'), 'validation' => ''], 'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The filter description', 'tainacan'), 'validation' => '', 'default' => ''], 'filter_type_options' => ['map' => 'meta', 'title' => __('Filter type options', 'tainacan'), 'type' => ['array', 'object', 'string'], 'items' => ['type' => ['array', 'string', 'integer', 'object']], 'description' => __('The filter type options', 'tainacan'), 'validation' => ''], 'filter_type' => ['map' => 'meta', 'title' => __('Type', 'tainacan'), 'type' => 'string', 'description' => __('The filter type class name, such as filter_type: Tainacan\\Filter_Types\\Checkbox', 'tainacan'), 'validation' => ''], 'begin_with_filter_collapsed' => [
    'map' => 'meta',
    'title' => __('Begin with filter collapsed', 'tainacan'),
    'type' => 'string',
    'description' => __('With this option enabled, the filter will appear as a button with an add icon, that should be pressed prior to loading any facet information.', 'tainacan'),
    'on_error' => __('Please set the "Begin with filter collapsed" value as "yes" or "no"', 'tainacan'),
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'enum' => ['yes', 'no'],
    'default' => 'no',
], 'collection_id' => ['map' => 'meta', 'title' => __('Collection', 'tainacan'), 'type' => ['integer', 'string'], 'description' => __('The collection ID', 'tainacan'), 'validation' => ''], 'metadatum_id' => ['map' => 'meta', 'title' => __('Metadata', 'tainacan'), 'type' => 'integer', 'description' => __('Filter metadata', 'tainacan'), 'validation' => ''], 'max_options' => ['map' => 'meta', 'title' => __('Max of options', 'tainacan'), 'type' => ['integer', 'string'], 'description' => __('The max number of options to be showed in filter sidebar.', 'tainacan'), 'validation' => '', 'default' => 4]]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-filters.php](src/classes/repositories/class-tainacan-filters.php), [line 33](src/classes/repositories/class-tainacan-filters.php#L33-L104)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'filters'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-filters.php](src/classes/repositories/class-tainacan-filters.php), [line 240](src/classes/repositories/class-tainacan-filters.php#L240-L240)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['title' => ['map' => 'post_title', 'title' => __('Title', 'tainacan'), 'type' => 'string', 'description' => __('Title of the item', 'tainacan'), 'on_error' => __('The title should be a text value and not empty', 'tainacan')], 'status' => ['map' => 'post_status', 'title' => __('Status', 'tainacan'), 'type' => 'string', 'default' => 'draft', 'description' => __('The current situation of the item. Notice that the item visibility also depends on the collection status.', 'tainacan')], 'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The item description', 'tainacan'), 'default' => '', 'validation' => ''], 'collection_id' => ['map' => 'meta', 'title' => __('Collection', 'tainacan'), 'type' => 'integer', 'description' => __('The collection ID', 'tainacan'), 'validation' => ''], 'author_id' => ['map' => 'post_author', 'title' => __('Author', 'tainacan'), 'type' => 'string', 'description' => __('The item author\'s user ID (numeric string)', 'tainacan')], 'creation_date' => ['map' => 'post_date', 'title' => __('Creation Date', 'tainacan'), 'type' => 'string', 'description' => __('The item creation date', 'tainacan')], 'modification_date' => ['map' => 'post_modified', 'title' => __('Modification Date', 'tainacan'), 'type' => 'string', 'description' => __('The item modification date', 'tainacan')], 'terms' => ['map' => 'terms', 'title' => __('Term IDs', 'tainacan'), 'type' => 'array', 'description' => __('The item term IDs', 'tainacan'), 'items' => ['type' => ['string', 'integer']]], 'document_type' => ['map' => 'meta', 'title' => __('Document Type', 'tainacan'), 'type' => 'string', 'description' => __('The document type, can be a local attachment, an external URL or a text', 'tainacan'), 'on_error' => __('Invalid document type', 'tainacan'), 'enum' => ['attachment', 'url', 'text', 'empty'], 'validation' => v::stringType()->in(['attachment', 'url', 'text', 'empty']), 'default' => 'empty'], 'document' => ['map' => 'meta', 'title' => __('Document', 'tainacan'), 'type' => 'string', 'description' => __('The document itself. An ID in case of attachment, an URL in case of link or a text in the case of text.', 'tainacan'), 'on_error' => __('Invalid document', 'tainacan'), 'default' => ''], 'document_options' => ['map' => 'meta', 'title' => __('Document options', 'tainacan'), 'type' => 'object', 'description' => __('Object of options related to the document display.', 'tainacan'), 'on_error' => __('Invalid document options', 'tainacan'), 'properties' => array('forced_iframe' => array('description' => __('Render content in iframe', 'tainacan'), 'type' => 'boolean', 'context' => array('view', 'edit', 'embed'), 'default' => false), 'is_image' => array('title' => __('Is link to external image', 'tainacan'), 'description' => __('Is link to external image', 'tainacan'), 'type' => 'boolean', 'context' => array('view', 'edit', 'embed'), 'default' => false), 'forced_iframe_height' => array('description' => __('Iframe height (px)', 'tainacan'), 'type' => 'number', 'context' => array('view', 'edit', 'embed'), 'default' => 450), 'forced_iframe_width' => array('description' => __('Iframe width (px)', 'tainacan'), 'type' => 'number', 'context' => array('view', 'edit', 'embed'), 'default' => 600))], '_thumbnail_id' => ['map' => 'meta', 'title' => __('Thumbnail', 'tainacan'), 'description' => __('Squared reduced-size version of a picture that helps recognizing and organizing files', 'tainacan'), 'type' => ['integer', 'string']], 'comment_status' => ['map' => 'comment_status', 'title' => __('Comment Status', 'tainacan'), 'type' => 'string', 'description' => __('Item comment status: "open" means comments are allowed, "closed" means comments are not allowed.', 'tainacan'), 'default' => get_default_comment_status(Entities\Collection::get_post_type()), 'enum' => ['open', 'closed'], 'validation' => v::optional(v::stringType()->in(['open', 'closed']))]]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-items.php](src/classes/repositories/class-tainacan-items.php), [line 36](src/classes/repositories/class-tainacan-items.php#L36-L159)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'items'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-items.php](src/classes/repositories/class-tainacan-items.php), [line 368](src/classes/repositories/class-tainacan-items.php#L368-L368)

### `tainacan-get-thumbnail-id-from-document`

*Hook to get thumbnail from document*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`null` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-items.php](src/classes/repositories/class-tainacan-items.php), [line 507](src/classes/repositories/class-tainacan-items.php#L507-L510)

### `tainacan_add_related_item`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_arr` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-items.php](src/classes/repositories/class-tainacan-items.php), [line 659](src/classes/repositories/class-tainacan-items.php#L659-L659)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['term_id' => ['map' => 'term_id', 'title' => __('ID', 'tainacan'), 'type' => 'integer', 'description' => __('Unique identifier', 'tainacan')], 'name' => ['map' => 'name', 'title' => __('Name', 'tainacan'), 'type' => 'string', 'description' => __('Name of the term', 'tainacan'), 'on_error' => __('The name is empty', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'parent' => ['map' => 'parent', 'title' => __('Parent', 'tainacan'), 'type' => 'integer', 'description' => __('The parent of the term', 'tainacan'), 'default' => 0], 'description' => ['map' => 'description', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The term description', 'tainacan'), 'default' => ''], 'taxonomy' => ['map' => 'taxonomy', 'title' => __('Taxonomy', 'tainacan'), 'type' => 'string', 'description' => __('The term taxonomy', 'tainacan'), 'on_error' => __('The taxonomy is empty', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'user' => ['map' => 'termmeta', 'title' => __('User', 'tainacan'), 'type' => 'integer', 'description' => __('The term creator', 'tainacan'), 'on_error' => __('The user is empty or invalid', 'tainacan'), 'default' => get_current_user_id()], 'header_image_id' => [
    'map' => 'termmeta',
    'title' => __('Header Image', 'tainacan'),
    'type' => 'string',
    'description' => __('The image to be used in term header', 'tainacan'),
    'on_error' => __('Invalid image', 'tainacan'),
    //'validation' => v::numeric(),
    'default' => '',
], 'hide_empty' => ['map' => 'hide_empty', 'title' => __('Hide empty', 'tainacan'), 'type' => 'boolean', 'description' => __('Hide empty terms', 'tainacan')]]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 34](src/classes/repositories/class-tainacan-terms.php#L34-L98)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$required_validation_statuses` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 126](src/classes/repositories/class-tainacan-repository.php#L126-L126)

### `tainacan-get-map-{$name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['name' => ['map' => 'post_title', 'title' => __('Name', 'tainacan'), 'type' => 'string', 'description' => __('Name of the metadata section', 'tainacan'), 'on_error' => __('The name should be a text value and not empty', 'tainacan'), 'validation' => v::stringType()->notEmpty()], 'slug' => ['map' => 'post_name', 'title' => __('Slug', 'tainacan'), 'type' => 'string', 'description' => __('A unique and sanitized string representation of the metadata sction', 'tainacan')], 'status' => ['map' => 'post_status', 'title' => __('Status', 'tainacan'), 'type' => 'string', 'default' => 'publish', 'description' => __('Status', 'tainacan')], 'description' => ['map' => 'post_content', 'title' => __('Description', 'tainacan'), 'type' => 'string', 'description' => __('The metadata section description.', 'tainacan'), 'default' => ''], 'description_bellow_name' => [
    'map' => 'meta',
    'title' => __('Description below name', 'tainacan'),
    'type' => 'string',
    'description' => __('Whether the section metadata description should be displayed below the name instead of inside a tooltip.', 'tainacan'),
    'on_error' => __('Please set the "Description below name" value as "yes" or "no"', 'tainacan'),
    'enum' => ['yes', 'no'],
    'validation' => v::stringType()->in(['yes', 'no']),
    // yes or no
    'default' => 'no',
], 'collection_id' => ['map' => 'meta', 'title' => __('Collection', 'tainacan'), 'type' => ['integer', 'string'], 'description' => __('The collection ID', 'tainacan')], 'is_conditional_section' => ['map' => 'meta', 'title' => __('Enable conditional section', 'tainacan'), 'type' => 'string', 'description' => __('Binds this section visibility to a set of rules related to some metadata values.', 'tainacan'), 'on_error' => __('Value should be "yes" or "no"', 'tainacan'), 'enum' => ['yes', 'no'], 'validation' => v::stringType()->in(['yes', 'no']), 'default' => 'no'], 'conditional_section_rules' => ['map' => 'meta', 'title' => __('Conditional section rules', 'tainacan'), 'type' => ['object', 'array'], 'description' => __('The conditions that will allow this section to be displayed, based on metadata values.', 'tainacan')]]` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata-sections.php](src/classes/repositories/class-tainacan-metadata-sections.php), [line 37](src/classes/repositories/class-tainacan-metadata-sections.php#L37-L98)

### `tainacan-fetch-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`'metadata-section'` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata-sections.php](src/classes/repositories/class-tainacan-metadata-sections.php), [line 220](src/classes/repositories/class-tainacan-metadata-sections.php#L220-L220)

### `tainacan-api-prepare-items-args`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$args` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/class-tainacan-rest-controller.php](src/classes/api/class-tainacan-rest-controller.php), [line 152](src/classes/api/class-tainacan-rest-controller.php#L152-L152)

### `tainacan-api-role-prepare-for-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$return` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-roles-controller.php](src/classes/api/endpoints/class-tainacan-rest-roles-controller.php), [line 391](src/classes/api/endpoints/class-tainacan-rest-roles-controller.php#L391-L391)

### `tainacan-api-response-item-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 259](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L259-L266)

### `tainacan-api-items-prepare-for-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_arr` |  | 
`$item` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 354](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L354-L354)

### `tainacan-rest-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$response` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 381](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L381-L381)

### `the_content`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$post->post_content` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 427](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L427-L427)

### `tainacan-rest-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$attachments` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 442](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L442-L442)

### `tainacan-item-get-author-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$name` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 576](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L576-L576)

### `{$filter_name}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`array('filter' => $f, 'metadatum' => $m, 'arg_type' => $arg_type, 'value' => $meta_value, 'label' => $meta_label, 'compare' => isset($meta['compare']) ? $meta['compare'] : '=', 'type' => $meta_type)` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 592](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L592-L600)

### `tainacan-api-get-items-alternate`

*allow plugins to hijack the process.*

If it returns a \WP_REST_Response, the method will return it and ignore the rest of the script

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`false` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 631](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L631-L636)

### `tainacan-api-items-filters-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 678](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L678-L678)

### `tainacan-api-items-filters-arguments-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$filters_args` |  | 
`$args` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 679](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L679-L679)

### `tainacan-api-items-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$response` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 744](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L744-L744)

### `tainacan-submission-item-data`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$metadata` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 1213](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L1213-L1213)

### `tainacan-api-response-metadata-section-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-metadata-sections-controller.php](src/classes/api/endpoints/class-tainacan-rest-metadata-sections-controller.php), [line 188](src/classes/api/endpoints/class-tainacan-rest-metadata-sections-controller.php#L188-L195)

### `tainacan-api-response-metadatum-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-metadata-sections-controller.php](src/classes/api/endpoints/class-tainacan-rest-metadata-sections-controller.php), [line 241](src/classes/api/endpoints/class-tainacan-rest-metadata-sections-controller.php#L241-L248)

### `tainacan-api-response-taxonomy-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-taxonomies-controller.php](src/classes/api/endpoints/class-tainacan-rest-taxonomies-controller.php), [line 184](src/classes/api/endpoints/class-tainacan-rest-taxonomies-controller.php#L184-L191)

### `tainacan-rest-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$prepared_item` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-item-metadata-controller.php](src/classes/api/endpoints/class-tainacan-rest-item-metadata-controller.php), [line 180](src/classes/api/endpoints/class-tainacan-rest-item-metadata-controller.php#L180-L180)

### `tainacan-rest-response`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$prepared_item` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-item-metadata-controller.php](src/classes/api/endpoints/class-tainacan-rest-item-metadata-controller.php), [line 206](src/classes/api/endpoints/class-tainacan-rest-item-metadata-controller.php#L206-L206)

### `tainacan-api-response-term-meta`

*Use this filter to add additional term_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-terms-controller.php](src/classes/api/endpoints/class-tainacan-rest-terms-controller.php), [line 551](src/classes/api/endpoints/class-tainacan-rest-terms-controller.php#L551-L558)

### `tainacan-api-response-collection-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-collections-controller.php](src/classes/api/endpoints/class-tainacan-rest-collections-controller.php), [line 369](src/classes/api/endpoints/class-tainacan-rest-collections-controller.php#L369-L376)

### `tainacan-api-response-filter-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-filters-controller.php](src/classes/api/endpoints/class-tainacan-rest-filters-controller.php), [line 335](src/classes/api/endpoints/class-tainacan-rest-filters-controller.php#L335-L342)

### `tainacan-api-response-metadatum-meta`

*Use this filter to add additional post_meta to the api response
Use the $request object to get the context of the request and other variables
For example, id context is edit, you may want to add your meta or not.*

Also take care to do any permissions verification before exposing the data

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[]` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-metadata-controller.php](src/classes/api/endpoints/class-tainacan-rest-metadata-controller.php), [line 339](src/classes/api/endpoints/class-tainacan-rest-metadata-controller.php#L339-L346)

### `tainacan-terms-hierarchy-html-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'>'` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-elastic-press.php](src/classes/class-tainacan-elastic-press.php), [line 745](src/classes/class-tainacan-elastic-press.php#L745-L745)

### `tainacan-terms-hierarchy-html-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'>'` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-elastic-press.php](src/classes/class-tainacan-elastic-press.php), [line 826](src/classes/class-tainacan-elastic-press.php#L826-L826)

### `tainacan-item-metadata-get-multivalue-prefix`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item-metadata-entity.php](src/classes/entities/class-tainacan-item-metadata-entity.php), [line 87](src/classes/entities/class-tainacan-item-metadata-entity.php#L87-L87)

### `tainacan-item-metadata-get-multivalue-suffix`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item-metadata-entity.php](src/classes/entities/class-tainacan-item-metadata-entity.php), [line 109](src/classes/entities/class-tainacan-item-metadata-entity.php#L109-L109)

### `tainacan-item-metadata-get-multivalue-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item-metadata-entity.php](src/classes/entities/class-tainacan-item-metadata-entity.php), [line 131](src/classes/entities/class-tainacan-item-metadata-entity.php#L131-L131)

### `tainacan-item-metadata-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$as_array` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item-metadata-entity.php](src/classes/entities/class-tainacan-item-metadata-entity.php), [line 304](src/classes/entities/class-tainacan-item-metadata-entity.php#L304-L304)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$validation_statuses` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item-metadata-entity.php](src/classes/entities/class-tainacan-item-metadata-entity.php), [line 478](src/classes/entities/class-tainacan-item-metadata-entity.php#L478-L478)

### `tainacan-log-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_title()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-log.php](src/classes/entities/class-tainacan-log.php), [line 44](src/classes/entities/class-tainacan-log.php#L44-L44)

### `tainacan-log-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$array_log` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-log.php](src/classes/entities/class-tainacan-log.php), [line 55](src/classes/entities/class-tainacan-log.php#L55-L55)

### `tainacan-log-set-title`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-log.php](src/classes/entities/class-tainacan-log.php), [line 181](src/classes/entities/class-tainacan-log.php#L181-L181)

### `tainacan-metadata-section-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_name()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-metadata-section.php](src/classes/entities/class-tainacan-metadata-section.php), [line 35](src/classes/entities/class-tainacan-metadata-section.php#L35-L35)

### `tainacan-taxonomy-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_name()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-taxonomy.php](src/classes/entities/class-tainacan-taxonomy.php), [line 49](src/classes/entities/class-tainacan-taxonomy.php#L49-L49)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-taxonomy.php](src/classes/entities/class-tainacan-taxonomy.php), [line 257](src/classes/entities/class-tainacan-taxonomy.php#L257-L261)

### `tainacan-item-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_title()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 50](src/classes/entities/class-tainacan-item.php#L50-L50)

### `tainacan-item-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$array_item` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 62](src/classes/entities/class-tainacan-item.php#L62-L62)

### `tainacan-item-get-attachments`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$attachments` |  | 
`$exclude` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 107](src/classes/entities/class-tainacan-item.php#L107-L107)

### `tainacan-item-get-author-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$name` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 117](src/classes/entities/class-tainacan-item.php#L117-L117)

### `tainacan-item-get-thumbnail`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$thumbs` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 141](src/classes/entities/class-tainacan-item.php#L141-L141)

### `comments_open`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_mapped_property('comment_status')` |  | 
`$this->get_id()` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 310](src/classes/entities/class-tainacan-item.php#L310-L310)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 443](src/classes/entities/class-tainacan-item.php#L443-L447)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 488](src/classes/entities/class-tainacan-item.php#L488-L492)

### `tainacan-get-item-metadatum-as-html-before`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 770](src/classes/entities/class-tainacan-item.php#L770-L770)

### `tainacan-get-item-metadatum-as-html-before--type-{$item_metadatum_metadata_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 771](src/classes/entities/class-tainacan-item.php#L771-L771)

### `tainacan-get-item-metadatum-as-html-before--id-{$item_metadatum_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 772](src/classes/entities/class-tainacan-item.php#L772-L772)

### `tainacan-get-item-metadatum-as-html-before--index-{$metadatum_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 774](src/classes/entities/class-tainacan-item.php#L774-L774)

### `tainacan-get-item-metadatum-as-html-before-title`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_title_before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 782](src/classes/entities/class-tainacan-item.php#L782-L782)

### `tainacan-get-item-metadatum-as-html-after-title`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_title_after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 784](src/classes/entities/class-tainacan-item.php#L784-L784)

### `tainacan-get-item-metadatum-as-html-before-value`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_value_before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 789](src/classes/entities/class-tainacan-item.php#L789-L789)

### `tainacan-get-item-metadatum-as-html-after-value`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_value_after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 791](src/classes/entities/class-tainacan-item.php#L791-L791)

### `tainacan-get-item-metadatum-as-html-after--index-{$metadatum_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 798](src/classes/entities/class-tainacan-item.php#L798-L798)

### `tainacan-get-item-metadatum-as-html-after--id-{$item_metadatum_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 802](src/classes/entities/class-tainacan-item.php#L802-L802)

### `tainacan-get-item-metadatum-as-html-after--type-{$item_metadatum_metadata_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 803](src/classes/entities/class-tainacan-item.php#L803-L803)

### `tainacan-get-item-metadatum-as-html-after`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 804](src/classes/entities/class-tainacan-item.php#L804-L804)

### `tainacan-item-get-document-as-html`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`wp_kses_tainacan($output)` |  | 
`$img_size` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 883](src/classes/entities/class-tainacan-item.php#L883-L883)

### `tainacan-get-metadata-section-as-html-before`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1220](src/classes/entities/class-tainacan-item.php#L1220-L1220)

### `tainacan-get-metadata-section-as-html-before--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1221](src/classes/entities/class-tainacan-item.php#L1221-L1221)

### `tainacan-get-metadata-section-as-html-before--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1223](src/classes/entities/class-tainacan-item.php#L1223-L1223)

### `tainacan-get-metadata-section-as-html-before-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1238](src/classes/entities/class-tainacan-item.php#L1238-L1238)

### `tainacan-get-metadata-section-as-html-before-name--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1239](src/classes/entities/class-tainacan-item.php#L1239-L1239)

### `tainacan-get-metadata-section-as-html-before-name--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1241](src/classes/entities/class-tainacan-item.php#L1241-L1241)

### `tainacan-get-metadata-section-as-html-after-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1248](src/classes/entities/class-tainacan-item.php#L1248-L1248)

### `tainacan-get-metadata-section-as-html-after-name--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1249](src/classes/entities/class-tainacan-item.php#L1249-L1249)

### `tainacan-get-metadata-section-as-html-after-name--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1251](src/classes/entities/class-tainacan-item.php#L1251-L1251)

### `tainacan-get-metadata-section-as-html-before-metadata-list`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1270](src/classes/entities/class-tainacan-item.php#L1270-L1270)

### `tainacan-get-metadata-section-as-html-before-metadata-list--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1271](src/classes/entities/class-tainacan-item.php#L1271-L1271)

### `tainacan-get-metadata-section-as-html-before-metadata-list--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1273](src/classes/entities/class-tainacan-item.php#L1273-L1273)

### `tainacan-get-metadata-section-as-html-after-metadata-list`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1305](src/classes/entities/class-tainacan-item.php#L1305-L1305)

### `tainacan-get-metadata-section-as-html-after-metadata-list--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1306](src/classes/entities/class-tainacan-item.php#L1306-L1306)

### `tainacan-get-metadata-section-as-html-after-metadata-list--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1308](src/classes/entities/class-tainacan-item.php#L1308-L1308)

### `tainacan-get-metadata-section-as-html-after--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1319](src/classes/entities/class-tainacan-item.php#L1319-L1319)

### `tainacan-get-metadata-section-as-html-after--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1321](src/classes/entities/class-tainacan-item.php#L1321-L1321)

### `tainacan-get-metadata-section-as-html-after`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-item.php](src/classes/entities/class-tainacan-item.php), [line 1322](src/classes/entities/class-tainacan-item.php#L1322-L1322)

### `tainacan-entity-get-property`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$prop` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-entity.php](src/classes/entities/class-tainacan-entity.php), [line 173](src/classes/entities/class-tainacan-entity.php#L173-L173)

### `tainacan-entity-set-property`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$prop` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-entity.php](src/classes/entities/class-tainacan-entity.php), [line 187](src/classes/entities/class-tainacan-entity.php#L187-L187)

### `tainacan-set-post-status`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-entity.php](src/classes/entities/class-tainacan-entity.php), [line 225](src/classes/entities/class-tainacan-entity.php#L225-L225)

### `tainacan-get-post-status`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-entity.php](src/classes/entities/class-tainacan-entity.php), [line 314](src/classes/entities/class-tainacan-entity.php#L314-L314)

### `{$hook_prefix}-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$attributes` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-entity.php](src/classes/entities/class-tainacan-entity.php), [line 374](src/classes/entities/class-tainacan-entity.php#L374-L374)

### `tainacan-metadatum-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_name()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-metadatum.php](src/classes/entities/class-tainacan-metadatum.php), [line 53](src/classes/entities/class-tainacan-metadatum.php#L53-L53)

### `tainacan-collection-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_name()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 73](src/classes/entities/class-tainacan-collection.php#L73-L73)

### `tainacan-collection-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$array_collection` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 86](src/classes/entities/class-tainacan-collection.php#L86-L86)

### `tainacan-collection-get-attachments`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$attachments` |  | 
`$exclude` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 233](src/classes/entities/class-tainacan-collection.php#L233-L233)

### `tainacan-collection-get-author-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$name` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 241](src/classes/entities/class-tainacan-collection.php#L241-L241)

### `tainacan-collection-get-thumbnail`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$thumbs` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 257](src/classes/entities/class-tainacan-collection.php#L257-L257)

### `tainacan-collection-get-header-image`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$header_image` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 265](src/classes/entities/class-tainacan-collection.php#L265-L265)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-collection.php](src/classes/entities/class-tainacan-collection.php), [line 897](src/classes/entities/class-tainacan-collection.php#L897-L901)

### `tainacan-filter-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_name()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-filter.php](src/classes/entities/class-tainacan-filter.php), [line 35](src/classes/entities/class-tainacan-filter.php#L35-L35)

### `tainacan-filter-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$filter_array` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-filter.php](src/classes/entities/class-tainacan-filter.php), [line 59](src/classes/entities/class-tainacan-filter.php#L59-L59)

### `tainacan-term-to-string`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->get_name()` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-term.php](src/classes/entities/class-tainacan-term.php), [line 55](src/classes/entities/class-tainacan-term.php#L55-L55)

### `tainacan-terms-hierarchy-html-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'>'` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-term.php](src/classes/entities/class-tainacan-term.php), [line 63](src/classes/entities/class-tainacan-term.php#L63-L63)

### `tainacan-term-to-array`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$term_array` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-term.php](src/classes/entities/class-tainacan-term.php), [line 76](src/classes/entities/class-tainacan-term.php#L76-L76)

### `tainacan-term-get-thumbnail`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$thumbs` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-term.php](src/classes/entities/class-tainacan-term.php), [line 185](src/classes/entities/class-tainacan-term.php#L185-L185)

### `tainacan-term-to-html`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$return` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/entities/class-tainacan-term.php](src/classes/entities/class-tainacan-term.php), [line 302](src/classes/entities/class-tainacan-term.php#L302-L302)

### `tainacan-exposer-jsonld`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$jsonld` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-json-ld.php](src/classes/exposers/class-tainacan-json-ld.php), [line 45](src/classes/exposers/class-tainacan-json-ld.php#L45-L45)

### `tainacan-exposer-numeric-item-prefix`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`__('item', 'tainacan') . '-'` |  | 
`get_class($this)` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-xml.php](src/classes/exposers/class-tainacan-xml.php), [line 57](src/classes/exposers/class-tainacan-xml.php#L57-L57)

### `tainacan-exporser-type-mappers`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->mappers` |  | 
`$this` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-exposer.php](src/classes/exposers/class-tainacan-exposer.php), [line 86](src/classes/exposers/class-tainacan-exposer.php#L86-L86)

### `tainacan-exposer-head`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'<?xml version="1.0" encoding="UTF-8"?>
			<oai_dc:dc 
    			xmlns:oai_dc="http://www.openarchives.org/OAI/2.0/oai_dc/" 
    			xmlns:dc="http://purl.org/dc/elements/1.1/" 
    			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    			xsi:schemaLocation="http://www.openarchives.org/OAI/2.0/oai_dc/ 
    			http://www.openarchives.org/OAI/2.0/oai_dc.xsd">
			</oai_dc:dc>'` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-oai-pmh.php](src/classes/exposers/class-tainacan-oai-pmh.php), [line 23](src/classes/exposers/class-tainacan-oai-pmh.php#L23-L31)

### `tainacan-oai-pmh-namespace`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`\Tainacan\Exposers\Mappers\Dublin_Core::XML_DC_NAMESPACE` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-oai-pmh.php](src/classes/exposers/class-tainacan-oai-pmh.php), [line 32](src/classes/exposers/class-tainacan-oai-pmh.php#L32-L32)

### `tainacan-oai-pmh-root`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$xml` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-oai-pmh.php](src/classes/exposers/class-tainacan-oai-pmh.php), [line 33](src/classes/exposers/class-tainacan-oai-pmh.php#L33-L33)

### `tainacan-exposer-html`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$html` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-html.php](src/classes/exposers/class-tainacan-html.php), [line 83](src/classes/exposers/class-tainacan-html.php#L83-L83)

### `tainacan-exposer-numeric-item-prefix`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`__('item', 'tainacan') . '-'` |  | 
`get_class($this)` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-html.php](src/classes/exposers/class-tainacan-html.php), [line 100](src/classes/exposers/class-tainacan-html.php#L100-L100)

### `tainacan-exposer-txt`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$txt` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-txt.php](src/classes/exposers/class-tainacan-txt.php), [line 23](src/classes/exposers/class-tainacan-txt.php#L23-L23)

### `tainacan-exposer-numeric-item-prefix`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`__('item', 'tainacan') . '-'` |  | 
`get_class($this)` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-txt.php](src/classes/exposers/class-tainacan-txt.php), [line 37](src/classes/exposers/class-tainacan-txt.php#L37-L37)

### `tainacan-get-the-document`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item->get_document_as_html($item_id, $img_size)` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 80](src/classes/theme-helper/template-tags.php#L80-L80)

### `tainacan_get_the_document_raw`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item->get_document($item_id)` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 98](src/classes/theme-helper/template-tags.php#L98-L98)

### `tainacan_get_the_item_document_url`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item->get_document_download_url()` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 107](src/classes/theme-helper/template-tags.php#L107-L107)

### `tainacan_get_the_document_type`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item->get_document_type()` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 116](src/classes/theme-helper/template-tags.php#L116-L116)

### `tainacan-get-collection-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`esc_html($name)` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 216](src/classes/theme-helper/template-tags.php#L216-L216)

### `tainacan-get-collection-description`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`esc_html($description)` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 252](src/classes/theme-helper/template-tags.php#L252-L252)

### `tainacan-get-collection-url`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`esc_url($url)` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 626](src/classes/theme-helper/template-tags.php#L626-L626)

### `tainacan-default-view-mode-for-themes`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'masonry'` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 646](src/classes/theme-helper/template-tags.php#L646-L646)

### `tainacan-enabled-view-modes-for-themes`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$registered_view_modes_slugs` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 652](src/classes/theme-helper/template-tags.php#L652-L652)

### `tainacan-get-term-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`esc_html($name)` |  | 
`$term` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 760](src/classes/theme-helper/template-tags.php#L760-L760)

### `tainacan-get-term-description`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`esc_html($description)` |  | 
`$term` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 783](src/classes/theme-helper/template-tags.php#L783-L783)

### `tainacan-get-the-attachments`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item->get_attachments($exclude)` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 810](src/classes/theme-helper/template-tags.php#L810-L810)

### `tainacan-get-initials`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$result` |  | 
`$string` |  | 
`$one` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 937](src/classes/theme-helper/template-tags.php#L937-L937)

### `tainacan_single_taxonomy_terms_query`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$terms_query_args` |  | 
`$post` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 1351](src/classes/theme-helper/template-tags.php#L1351-L1351)

### `tainacan-terms-hierarchy-html-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'>'` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 1363](src/classes/theme-helper/template-tags.php#L1363-L1363)

### `tainacan_get_single_taxonomy_content`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['content' => $content, 'total_terms' => $total_terms]` |  | 
`$post` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 1510](src/classes/theme-helper/template-tags.php#L1510-L1510)

### `tainacan_get_taxonomies_orderby`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$html` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 1574](src/classes/theme-helper/template-tags.php#L1574-L1574)

### `tainacan_get_taxonomies_search`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$html` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 1631](src/classes/theme-helper/template-tags.php#L1631-L1631)

### `tainacan_get_taxonomies_pagination`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$html` |  | 

Source: [/src/tainacan/src/classes/theme-helper/template-tags.php](src/classes/theme-helper/template-tags.php), [line 1666](src/classes/theme-helper/template-tags.php#L1666-L1666)

### `tainacan_single_item_content`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$content` |  | 
`$item` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 221](src/classes/theme-helper/class-tainacan-theme-helper.php#L221-L221)

### `tainacan_repository_archive_template_hierarchy`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['tainacan/archive-repository.php', 'index.php']` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 714](src/classes/theme-helper/class-tainacan-theme-helper.php#L714-L714)

### `tainacan-get-item-metadatum-as-html-before`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1747](src/classes/theme-helper/class-tainacan-theme-helper.php#L1747-L1747)

### `tainacan-get-item-metadatum-as-html-before--type-{$metadatum_metadata_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1748](src/classes/theme-helper/class-tainacan-theme-helper.php#L1748-L1748)

### `tainacan-get-item-metadatum-as-html-before--id-{$metadatum_hook_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1749](src/classes/theme-helper/class-tainacan-theme-helper.php#L1749-L1749)

### `tainacan-get-item-metadatum-as-html-before-title`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_title_before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1756](src/classes/theme-helper/class-tainacan-theme-helper.php#L1756-L1756)

### `tainacan-get-item-metadatum-as-html-after-title`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_title_after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1758](src/classes/theme-helper/class-tainacan-theme-helper.php#L1758-L1758)

### `tainacan-get-item-metadatum-as-html-before-value`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_value_before` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1763](src/classes/theme-helper/class-tainacan-theme-helper.php#L1763-L1763)

### `tainacan-get-item-metadatum-as-html-after-value`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$metadatum_value_after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1765](src/classes/theme-helper/class-tainacan-theme-helper.php#L1765-L1765)

### `tainacan-get-item-metadatum-as-html-after--id-{$metadatum_hook_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1773](src/classes/theme-helper/class-tainacan-theme-helper.php#L1773-L1773)

### `tainacan-get-item-metadatum-as-html-after--type-{$metadatum_metadata_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1774](src/classes/theme-helper/class-tainacan-theme-helper.php#L1774-L1774)

### `tainacan-get-item-metadatum-as-html-after`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$item_metadatum` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1775](src/classes/theme-helper/class-tainacan-theme-helper.php#L1775-L1775)

### `tainacan-get-metadata-section-as-html-before`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1947](src/classes/theme-helper/class-tainacan-theme-helper.php#L1947-L1947)

### `tainacan-get-metadata-section-as-html-before--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1948](src/classes/theme-helper/class-tainacan-theme-helper.php#L1948-L1948)

### `tainacan-get-metadata-section-as-html-before--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1950](src/classes/theme-helper/class-tainacan-theme-helper.php#L1950-L1950)

### `tainacan-get-metadata-section-as-html-before-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1965](src/classes/theme-helper/class-tainacan-theme-helper.php#L1965-L1965)

### `tainacan-get-metadata-section-as-html-before-name--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1966](src/classes/theme-helper/class-tainacan-theme-helper.php#L1966-L1966)

### `tainacan-get-metadata-section-as-html-before-name--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1968](src/classes/theme-helper/class-tainacan-theme-helper.php#L1968-L1968)

### `tainacan-get-metadata-section-as-html-after-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1975](src/classes/theme-helper/class-tainacan-theme-helper.php#L1975-L1975)

### `tainacan-get-metadata-section-as-html-after-name--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1976](src/classes/theme-helper/class-tainacan-theme-helper.php#L1976-L1976)

### `tainacan-get-metadata-section-as-html-after-name--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_name` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1978](src/classes/theme-helper/class-tainacan-theme-helper.php#L1978-L1978)

### `tainacan-get-metadata-section-as-html-before-metadata-list`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1997](src/classes/theme-helper/class-tainacan-theme-helper.php#L1997-L1997)

### `tainacan-get-metadata-section-as-html-before-metadata-list--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 1998](src/classes/theme-helper/class-tainacan-theme-helper.php#L1998-L1998)

### `tainacan-get-metadata-section-as-html-before-metadata-list--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$before_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2000](src/classes/theme-helper/class-tainacan-theme-helper.php#L2000-L2000)

### `tainacan-get-metadata-section-as-html-after-metadata-list`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2029](src/classes/theme-helper/class-tainacan-theme-helper.php#L2029-L2029)

### `tainacan-get-metadata-section-as-html-after-metadata-list--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2030](src/classes/theme-helper/class-tainacan-theme-helper.php#L2030-L2030)

### `tainacan-get-metadata-section-as-html-after-metadata-list--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after_description` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2032](src/classes/theme-helper/class-tainacan-theme-helper.php#L2032-L2032)

### `tainacan-get-metadata-section-as-html-after--index-{$section_index}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2043](src/classes/theme-helper/class-tainacan-theme-helper.php#L2043-L2043)

### `tainacan-get-metadata-section-as-html-after--id-{$section_id}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2045](src/classes/theme-helper/class-tainacan-theme-helper.php#L2045-L2045)

### `tainacan-get-metadata-section-as-html-after`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$after` |  | 
`$metadata_section` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2046](src/classes/theme-helper/class-tainacan-theme-helper.php#L2046-L2046)

### `tainacan-default-taxonomy-terms-order`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'ASC'` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2203](src/classes/theme-helper/class-tainacan-theme-helper.php#L2203-L2203)

### `tainacan-default-taxonomy-terms-orderby`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'name'` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2204](src/classes/theme-helper/class-tainacan-theme-helper.php#L2204-L2204)

### `tainacan-default-taxonomy-terms-perpage`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`12` |  | 

Source: [/src/tainacan/src/classes/theme-helper/class-tainacan-theme-helper.php](src/classes/theme-helper/class-tainacan-theme-helper.php), [line 2206](src/classes/theme-helper/class-tainacan-theme-helper.php#L2206-L2206)

### `tainacan-i18n`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`[
    // Comparators
    'is_equal_to' => __('Equal', 'tainacan'),
    'is_not_equal_to' => __('Not equal', 'tainacan'),
    'contains' => __('Contains', 'tainacan'),
    'not_contains' => __('Do not contain', 'tainacan'),
    'greater_than' => __('Greater than', 'tainacan'),
    'less_than' => __('Less than', 'tainacan'),
    'greater_than_or_equal_to' => __('Greater than or equal to', 'tainacan'),
    'less_than_or_equal_to' => __('Less than or equal to', 'tainacan'),
    'before' => __('Before', 'tainacan'),
    'after' => __('After', 'tainacan'),
    'before_or_on_day' => __('Before (inclusive)', 'tainacan'),
    'after_or_on_day' => __('After (inclusive)', 'tainacan'),
    // Tainacan common terms
    'repository' => __('Repository', 'tainacan'),
    'collections' => __('Collections', 'tainacan'),
    'items' => __('Items', 'tainacan'),
    /* translators: Plural, a list of metadata */
    'metadata' => __('Metadata', 'tainacan'),
    'metadata_types' => __('Metadata types', 'tainacan'),
    'filters' => __('Filters', 'tainacan'),
    'taxonomies' => __('Taxonomies', 'tainacan'),
    'activities' => __('Activities', 'tainacan'),
    'collection' => __('Collection', 'tainacan'),
    'item' => __('Item', 'tainacan'),
    /* translators: The singular unit of metadata */
    'metadatum' => __('Metadatum', 'tainacan'),
    'filter' => __('Filter', 'tainacan'),
    'taxonomy' => __('Taxonomy', 'tainacan'),
    'activity' => __('Activity', 'tainacan'),
    'term' => __('Term', 'tainacan'),
    'terms' => __('Terms', 'tainacan'),
    'mapping' => __('Mapping', 'tainacan'),
    'importers' => __('Importers', 'tainacan'),
    'processes' => __('Processes', 'tainacan'),
    'sequence' => __('Sequence', 'tainacan'),
    'exporters' => __('Exporters', 'tainacan'),
    'capabilities' => __('Capabilities', 'tainacan'),
    // Actions
    'close' => __('Close', 'tainacan'),
    'edit' => __('Edit', 'tainacan'),
    'settings' => __('Settings', 'tainacan'),
    'new' => __('New', 'tainacan'),
    'add_value' => __('Add value', 'tainacan'),
    'import' => __('Import', 'tainacan'),
    'export' => __('Export', 'tainacan'),
    'cancel' => __('Cancel', 'tainacan'),
    'remove_point' => __('Remove point', 'tainacan'),
    'remove_value' => __('Remove value', 'tainacan'),
    'remove_a_value' => __('Remove a value', 'tainacan'),
    'clear_values' => __('Clear values', 'tainacan'),
    'remove_filter' => __('Remove filter', 'tainacan'),
    'save' => __('Save', 'tainacan'),
    'next' => __('Next', 'tainacan'),
    'previous' => __('Previous', 'tainacan'),
    'back' => __('Back', 'tainacan'),
    'exit' => __('Exit', 'tainacan'),
    'see' => __('View', 'tainacan'),
    'search' => __('Search', 'tainacan'),
    'advanced_search' => __('Advanced search', 'tainacan'),
    'continue' => __('Continue', 'tainacan'),
    'approve_item' => __('Approve', 'tainacan'),
    'not_approve_item' => __('Not approve', 'tainacan'),
    'add_one_item' => __('Add one item', 'tainacan'),
    'add_items_bulk' => __('Bulk add items', 'tainacan'),
    'add_items_external_source' => __('Add items from an external source', 'tainacan'),
    'new_mapped_item' => __('New mapped collection', 'tainacan'),
    'new_blank_collection' => __('New blank collection', 'tainacan'),
    'split' => __('Split', 'tainacan'),
    'unified' => __('Unified', 'tainacan'),
    'add_another_search_criterion' => __('Add another search criterion', 'tainacan'),
    'add_one_search_criterion' => __('Add one search criterion', 'tainacan'),
    'remove_search_criterion' => __('Remove search criterion', 'tainacan'),
    'clear_search' => __('Clear search', 'tainacan'),
    'run' => __('Run', 'tainacan'),
    'edit_search' => __('Edit search', 'tainacan'),
    'apply' => __('Apply', 'tainacan'),
    'add_another_bulk_edit' => __('Add another bulk edit criterion', 'tainacan'),
    'add_one_bulk_edit' => __('Add one bulk edit criterion', 'tainacan'),
    'remove_bulk_edit' => __('Remove bulk edit criterion', 'tainacan'),
    'set_new_value' => __('Set new value', 'tainacan'),
    'replace_value' => __('Replace value', 'tainacan'),
    'copy_value' => __('Copy value from', 'tainacan'),
    'finish' => __('Finish', 'tainacan'),
    'select_to_create' => __('select to create', 'tainacan'),
    'new_bulk_edit_criterion' => __('New bulk edit criterion', 'tainacan'),
    'undo' => __('Undo', 'tainacan'),
    'delete' => __('Delete', 'tainacan'),
    'skip' => __('Skip', 'tainacan'),
    'add' => __('Add', 'tainacan'),
    // Wordpress Comments Status
    'comments_status_open' => __('Open', 'tainacan'),
    'comments_status_closed' => __('Closed', 'tainacan'),
    // Wordpress Status
    /* translators: The noun for the public/published status */
    'status_publish' => __('Publish', 'tainacan'),
    /* translators: Also the noun for the public/published status */
    'status_public' => __('Public', 'tainacan'),
    /* translators: The noun for the draft status, not the verb */
    'status_draft' => __('Draft', 'tainacan'),
    'status_private' => __('Private', 'tainacan'),
    /* translators: The noun for the trash status, not the verb */
    'status_trash' => __('Trash', 'tainacan'),
    'status_auto-draft' => __('Automatic draft', 'tainacan'),
    'label_open_access' => __('Open access', 'tainacan'),
    'label_restrict_access' => __('Restrict access', 'tainacan'),
    // Page Titles (used mainly on Router)
    'title_repository_collections_page' => __('Repository Collections', 'tainacan'),
    'title_items_page' => __('All items from all collections', 'tainacan'),
    'title_repository_metadata_page' => __('Repository Metadata', 'tainacan'),
    'title_repository_filters_page' => __('Repository Filters', 'tainacan'),
    'title_taxonomies_page' => __('Taxonomies', 'tainacan'),
    'title_terms_page' => __('Terms', 'tainacan'),
    'title_repository_activities_page' => __('Repository Activities', 'tainacan'),
    'title_collection_page' => __('Items from Collection', 'tainacan'),
    'title_item_page' => __('Item', 'tainacan'),
    'title_metadatum_page' => __('Metadata', 'tainacan'),
    'title_collection_activities' => __('Collection Activities', 'tainacan'),
    'title_filter_page' => __('Filter', 'tainacan'),
    'title_taxonomy_page' => __('Taxonomy', 'tainacan'),
    'title_term_edit' => __('Term edit', 'tainacan'),
    'title_term_creation' => __('Create a new term', 'tainacan'),
    'title_activity_page' => __('Activity', 'tainacan'),
    'title_create_collection' => __('Collection Creation', 'tainacan'),
    'title_create_taxonomy_page' => __('Taxonomy Creation', 'tainacan'),
    'title_create_item_collection' => __('Create Item on Collection', 'tainacan'),
    'title_create_filter' => __('Filter Creation', 'tainacan'),
    'title_collection_settings' => __('Settings of Collection', 'tainacan'),
    'title_edit_item' => __('Edit Item', 'tainacan'),
    'title_taxonomy_edit_page' => __('Edit Taxonomy', 'tainacan'),
    'title_filter_edit' => __('Edit Filter', 'tainacan'),
    'title_metadatum_edit' => __('Edit Metadata', 'tainacan'),
    'title_collection_metadata_edit' => __('Edit Metadata of', 'tainacan'),
    'title_collection_filters_edit' => __('Edit Filters of', 'tainacan'),
    'title_importer_page' => __('Importer', 'tainacan'),
    'title_importer_mapping_page' => __("Metadata Mapping", 'tainacan'),
    'title_importers_page' => __('Importers', 'tainacan'),
    'title_export_collection_page' => __('Export Collection Page', 'tainacan'),
    'title_export_item_page' => __('Export Item', 'tainacan'),
    'title_exporters_page' => __('Exporters', 'tainacan'),
    'title_processes_page' => __('Processes', 'tainacan'),
    'title_item_bulk_add' => __('Bulk Add Items', 'tainacan'),
    'title_exporter_page' => __('Exporter', 'tainacan'),
    'title_collection_capabilities' => __('Capabilities Related to the Collection', 'tainacan'),
    'title_repository_capabilities' => __('Capabilities Related to the Repository', 'tainacan'),
    'title_slides-help-modal' => __('Welcome to the slides view mode', 'tainacan'),
    // Labels (used mainly on Aria Labels and Inputs)
    'label' => __('Label', 'tainacan'),
    /* translators: The verb to clear */
    'label_clean' => __('Clear', 'tainacan'),
    'label_none' => __('None', 'tainacan'),
    'label_clear_filters' => __('Clear filters', 'tainacan'),
    'label_and' => __('and', 'tainacan'),
    'label_selected' => __('Selected', 'tainacan'),
    'label_nothing_selected' => __('Nothing selected', 'tainacan'),
    'label_relationship_new_search' => __('New Search', 'tainacan'),
    'label_relationship_items_found' => __('Items found', 'tainacan'),
    'label_menu' => __('Menu', 'tainacan'),
    'label_main_menu' => __('Main Menu', 'tainacan'),
    'label_collection_menu' => __('Collection Menu', 'tainacan'),
    'label_title' => __('Title', 'tainacan'),
    'label_settings' => __('Settings', 'tainacan'),
    'label_actions' => __('Actions', 'tainacan'),
    'label_name' => __('Name', 'tainacan'),
    'label_description' => __('Description', 'tainacan'),
    'label_status' => __('Status', 'tainacan'),
    'label_slug' => __('Slug', 'tainacan'),
    'label_image' => __('Image', 'tainacan'),
    'label_thumbnail' => __('Thumbnail', 'tainacan'),
    'label_thumbnail_alt' => __('Alternative text', 'tainacan'),
    'label_empty_thumbnail' => __('Empty thumbnail', 'tainacan'),
    'label_empty_term_image' => __('Empty term image', 'tainacan'),
    'label_parent_collection' => __('Parent collection', 'tainacan'),
    'label_no_parent_collection' => __('No parent collection', 'tainacan'),
    'label_button_view' => __('Button View', 'tainacan'),
    'label_button_edit' => __('Button Edit', 'tainacan'),
    'label_button_delete' => __('Button Delete', 'tainacan'),
    'label_button_untrash' => __('Button Remove from Trash', 'tainacan'),
    'label_button_delete_header_image' => __('Button Delete Header Image', 'tainacan'),
    'label_button_edit_thumb' => __('Button Edit Thumbnail', 'tainacan'),
    'label_button_edit_header_image' => __('Button Edit Header Image', 'tainacan'),
    'label_button_edit_document' => __('Button Edit Document', 'tainacan'),
    'label_button_delete_document' => __('Button Delete Document', 'tainacan'),
    'label_choose_thumb' => __('Choose Thumbnail', 'tainacan'),
    'label_button_delete_thumb' => __('Button Delete Thumbnail', 'tainacan'),
    'label_collections_per_page' => __('Collections per Page:', 'tainacan'),
    'label_taxonomies_per_page' => __('Taxonomies per Page:', 'tainacan'),
    'label_terms_per_page' => __('Terms per Page:', 'tainacan'),
    'label_activities_per_page' => __('Activities per Page:', 'tainacan'),
    'label_items_per_page' => __('Items per Page:', 'tainacan'),
    'label_attachments_per_page' => __('Attachments per Page:', 'tainacan'),
    'label_processes_per_page' => __('Processes per Page:', 'tainacan'),
    'label_go_to_page' => __('Go to Page:', 'tainacan'),
    /* translators: 'Active' here refers to a mode that the metadata are, not a verb or action */
    'label_active_metadata' => __('Active Metadata', 'tainacan'),
    'label_available_metadata' => __('Available Metadata', 'tainacan'),
    'label_available_metadata_types' => __('Available Metadata Types', 'tainacan'),
    /* translators: 'Active' here refers to a mode that the filters are, not a verb or action */
    'label_active_filters' => __('Active Filters', 'tainacan'),
    'label_filter_type' => __('Filter Type', 'tainacan'),
    'label_available_filters' => __('Available Filters', 'tainacan'),
    'label_available_filter_types' => __('Available Filter Types', 'tainacan'),
    'label_per_page' => __('per Page', 'tainacan'),
    'label_displayed_metadata' => __('Displayed metadata', 'tainacan'),
    'label_required' => __('Required', 'tainacan'),
    'label_allow_multiple' => __('Allow multiple values', 'tainacan'),
    'label_default_value' => __('Default value', 'tainacan'),
    'label_unique_value' => __('Unique value', 'tainacan'),
    'label_yes' => __('Yes', 'tainacan'),
    'label_no' => __('No', 'tainacan'),
    'label_approved' => __('Approved', 'tainacan'),
    'label_collection_related' => __('Collection related', 'tainacan'),
    'label_metadata_for_search' => __('Metadata for search', 'tainacan'),
    'label_select_taxonomy' => __('Select taxonomy', 'tainacan'),
    'label_select_taxonomy_input_type' => __('Input type', 'tainacan'),
    'label_taxonomy_allow_new_terms' => __('Allow new terms', 'tainacan'),
    'label_selectbox_init' => __('Select', 'tainacan'),
    'label_insert_options' => __('Insert options', 'tainacan'),
    'label_insert_items' => __('Insert items', 'tainacan'),
    'label_available_terms' => __('Available terms', 'tainacan'),
    'label_some_available_terms' => __('Some available terms', 'tainacan'),
    'label_attachments' => __('Attachments', 'tainacan'),
    'label_attachment' => __('Attachment', 'tainacan'),
    'label_enabled' => __('Enabled', 'tainacan'),
    'label_disabled' => __('Disabled', 'tainacan'),
    'label_creation' => __('Creation', 'tainacan'),
    'label_creation_date' => __('Creation date', 'tainacan'),
    'label_modification_date' => __('Modification date', 'tainacan'),
    'label_collection_items' => __('Collection Items', 'tainacan'),
    'label_collection_metadata' => __('Collection Metadata', 'tainacan'),
    'label_collection_filters' => __('Collection Filters', 'tainacan'),
    'label_parent_term' => __('Parent Term', 'tainacan'),
    'label_children_terms' => __('children terms', 'tainacan'),
    'label_new_term' => __('New Term', 'tainacan'),
    'label_create_new_term' => __('Create New Term', 'tainacan'),
    'label_create_and_select' => __('Create and Select', 'tainacan'),
    'label_new_child' => __('New Child', 'tainacan'),
    'label_taxonomy_terms' => __('Taxonomy Terms', 'tainacan'),
    'label_no_parent_term' => __('No parent term', 'tainacan'),
    'label_term_without_name' => __('Term without name', 'tainacan'),
    'label_inherited' => __('Inherited', 'tainacan'),
    /* translators: 'Core' as in 'main' - the most important and default title */
    'label_core_title' => __('Core Title', 'tainacan'),
    /* translators: 'Core' as in 'main' - the most important and default description */
    'label_core_description' => __('Core Description', 'tainacan'),
    /* translators: 'Core' as in 'main' - the most important and default section */
    'label_default_section' => __('Default Section', 'tainacan'),
    /* translators: noun, not the verb. This comes after options to be sorted by */
    'label_sorting' => __('Sorting', 'tainacan'),
    /* translators: noun, not the verb. This comes after options 'ASC' and 'DESC' */
    'label_sorting_direction' => __('Sorting direction', 'tainacan'),
    /* translators: shorter version of the 'sorting' noun label */
    'label_sort' => __('Sort', 'tainacan'),
    'label_activity_date' => __('Activity date', 'tainacan'),
    'label_activity_title' => __('Activity', 'tainacan'),
    'label_header_image' => __('Header Image', 'tainacan'),
    'label_empty_header_image' => __('Empty Header Image', 'tainacan'),
    'label_enable_cover_page' => __('Enable Cover Page', 'tainacan'),
    'label_cover_page' => __('Cover Page', 'tainacan'),
    'label_allow_comments' => __('Allow comments', 'tainacan'),
    'label_comments' => __('Comments', 'tainacan'),
    'label_default_displayed_metadata' => __('Default Displayed Metadata', 'tainacan'),
    'label_display' => __('Display on listing', 'tainacan'),
    'label_display_default' => __('Display by default', 'tainacan'),
    'label_display_never' => __('Never displayed', 'tainacan'),
    'label_not_display' => __('Do not display by default', 'tainacan'),
    'label_no_terms_selected' => __('No terms selected', 'tainacan'),
    'label_attach_to_item' => __('Attach to item', 'tainacan'),
    /* translators: Document is the main content of the Item. It can be a file, a url link or a text */
    'label_document' => __('Document', 'tainacan'),
    'label_document_empty' => __('Empty document', 'tainacan'),
    'label_file' => __('File', 'tainacan'),
    'label_text' => __('Text', 'tainacan'),
    'label_url' => __('URL', 'tainacan'),
    'label_select_file' => __('Select file', 'tainacan'),
    'label_selected_file' => __('Selected file', 'tainacan'),
    /* translators: Label for collapsible, accordeon-like elements */
    'label_expand_all' => __('Expand all', 'tainacan'),
    /* translators: Label for collapsible, accordeon-like elements */
    'label_collapse_all' => __('Collapse all', 'tainacan'),
    /* translators: Label for collapsible, accordeon-like elements */
    'label_expand' => __('Expand', 'tainacan'),
    /* translators: Label for collapsible, accordeon-like elements */
    'label_collapse' => __('Collapse', 'tainacan'),
    'label_view_term' => __('View Term', 'tainacan'),
    /* translators: 'Published' here refers to the sum of public and private items, not including draft or trashed ones. The are visible to those with permission */
    'label_all_items' => __('All items', 'tainacan'),
    'label_all_collections' => __('All collections', 'tainacan'),
    'label_all_taxonomies' => __('All taxonomies', 'tainacan'),
    'label_bulk_actions' => __('Bulk actions', 'tainacan'),
    'label_delete_selected_collections' => __('Delete selected collections', 'tainacan'),
    'label_edit_selected_collections' => __('Edit selected collections', 'tainacan'),
    'label_delete_permanently' => __('Delete permanently', 'tainacan'),
    'label_send_to_trash' => __('Send to trash', 'tainacan'),
    'label_keep_on_trash' => __('Keep on trash', 'tainacan'),
    'label_delete_selected_taxonomies' => __('Delete selected taxonomies', 'tainacan'),
    'label_view_only_selected_items' => __('View only selected items', 'tainacan'),
    'label_bulk_edit_selected_items' => __('Bulk edit selected items', 'tainacan'),
    'label_sequence_edit_selected_items' => __('Edit selected items in sequence', 'tainacan'),
    'label_edit_selected_taxonomies' => __('Edit selected taxonomies', 'tainacan'),
    'label_select_all_collections_page' => __('Select all collections on page', 'tainacan'),
    'label_select_all_items_page' => __('Select all items on page', 'tainacan'),
    'label_select_all_taxonomies_page' => __('Select all taxonomies on page', 'tainacan'),
    'label_select_all_processes_page' => __('Select all processes on page', 'tainacan'),
    'label_select_all_terms' => __('Select all taxonomy terms', 'tainacan'),
    'label_all_terms_selected' => __('All terms selected', 'tainacan'),
    'label_add_or_update_attachments' => __('Add or update attachments', 'tainacan'),
    'label_blank_collection' => __('Blank collection', 'tainacan'),
    /* translators: the metadata scheme https://dublincore.org/ */
    'label_dublin_core' => __('Dublin Core', 'tainacan'),
    'label_created_by' => __('Created by', 'tainacan'),
    'label_apply_changes' => __('Apply changes', 'tainacan'),
    /* translators: view here is the noun, not the verb */
    'label_view_mode' => __('View mode', 'tainacan'),
    'label_default_view_mode' => __('Default view mode', 'tainacan'),
    'label_enabled_view_modes' => __('Enabled view modes', 'tainacan'),
    'label_view_modes_available' => __('View modes available', 'tainacan'),
    'label_warning' => __('Warning', 'tainacan'),
    'label_error' => __('Error', 'tainacan'),
    'label_thumbnails' => __('Thumbnails', 'tainacan'),
    /* translators: The 'thumbnails' view mode type, previously named 'Grid' */
    'label_grid' => __('Thumbnails', 'tainacan'),
    'label_table' => __('Table', 'tainacan'),
    'label_cards' => __('Cards', 'tainacan'),
    /* translators: The 'records' view mode, in the sense of a catalog file */
    'label_records' => __('Records', 'tainacan'),
    'label_masonry' => __('Masonry', 'tainacan'),
    /* translators: The 'list' view mode, an horizontal, full width version of the 'records' view mode */
    'label_list' => __('List', 'tainacan'),
    /* translators: label for the view modes dropdown, for example: Visualization - table */
    'label_visualization' => __('Visualization', 'tainacan'),
    /* translators: This should be a short term for 'visualization' such as 'View on - table' referring to the view modes dropdown */
    'label_view_on' => __('View on', 'tainacan'),
    'label_available_importers' => __('Available Importers', 'tainacan'),
    'label_target_collection' => __('Target Collection', 'tainacan'),
    /* translators: The collection into which the contents of a file will be imported */
    'label_source_file' => __('Source file', 'tainacan'),
    /* translators: The file from which the contents will be imported to a collection */
    'label_url_source_link' => __('URL Source link', 'tainacan'),
    /* translators: The link to the file from which the contents will be imported to a collection */
    'label_metadata_mapping' => __('Metadata mapping', 'tainacan'),
    'label_select_metadatum' => __('Select metadatum', 'tainacan'),
    'label_create_metadatum' => __('Create metadatum', 'tainacan'),
    'label_create_repository_metadata' => __('Create repository metadata', 'tainacan'),
    'label_select_metadatum_type' => __('Select a metadatum type', 'tainacan'),
    'label_add_more_metadata' => __('Add more metadata', 'tainacan'),
    /* translators: Header of the column where the metadata columns from file are in the Mapping Metadata Importer screen */
    'label_from_source_collection' => __('From source file', 'tainacan'),
    /* translators: Header of the column where the existing collection metadata are in the Mapping Metadata Importer screen */
    'label_to_target_collection' => __('To target collection', 'tainacan'),
    'label_from_source_mapper' => __('This collection metadata', 'tainacan'),
    'label_to_target_mapper' => __('Will be mapped as this metadata', 'tainacan'),
    'label_add_value' => __('Add value', 'tainacan'),
    'label_remove_value' => __('Remove value', 'tainacan'),
    'label_create_new_page' => __('Create new page', 'tainacan'),
    'label_total_items' => __('Total items', 'tainacan'),
    'label_total_terms' => __('Total terms', 'tainacan'),
    'label_view_all' => __('View all', 'tainacan'),
    'label_until' => __('until', 'tainacan'),
    'label_visibility' => __('Visibility', 'tainacan'),
    'label_discard' => __('Discard', 'tainacan'),
    'label_save_as_draft' => __('Save as draft', 'tainacan'),
    'label_update_draft' => __('Update draft', 'tainacan'),
    'label_return_to_draft' => __('Return to draft', 'tainacan'),
    /* translators: The verb 'to publish' not the 'publish' status */
    'label_verb_publish' => _x('Publish', 'verb', 'tainacan'),
    'label_verb_publish_privately' => _x('Publish privately', 'verb', 'tainacan'),
    /* translators: The status 'publish' not the verb 'to publish' */
    'label_publish' => _x('Publish', 'noun', 'tainacan'),
    'label_update' => __('Update', 'tainacan'),
    'label_mapper_metadata' => __('Metadata Mapper', 'tainacan'),
    'label_add_more_mapper_metadata' => __('Add more metadata mappers', 'tainacan'),
    /* translators: 'Exposer' here is not the same as 'Exporter'. These are links where you can see the items in different file formats such as CSV, JSON, etc, but not a download of a zip file. */
    'label_exposer_urls' => __('Exposer URLs'),
    'label_exposer_mapper_values' => __('values only, no metadata scheme'),
    /* translators: 'Exposer' here is not the same as 'Exporter'. These are links where you can see the items in different file formats such as CSV, JSON, etc, but not a download of a zip file. */
    'label_exposer' => __('exposer'),
    'label_mapper' => __('mapper'),
    'label_no_details_of_process' => __('There are no details about this process', 'tainacan'),
    'label_queued_on' => __('Queued on:', 'tainacan'),
    'label_last_processed_on' => __('Last processed on:', 'tainacan'),
    'label_progress' => __('Progress', 'tainacan'),
    'label_process_completed' => __('Process completed', 'tainacan'),
    'label_process_completed_with_errors' => __('Process completed with errors', 'tainacan'),
    'label_process_cancelled' => __('Process cancelled by user', 'tainacan'),
    'label_process_paused' => __('Process paused', 'tainacan'),
    'label_process_waiting' => __('Process waiting', 'tainacan'),
    'label_stop_process' => __('Stop process', 'tainacan'),
    'label_delete_process' => __('Delete process', 'tainacan'),
    'label_process_failed' => __('Process failed', 'tainacan'),
    'label_max_options_to_show' => __('Max options to show', 'tainacan'),
    'label_unnamed_process' => __('Unnamed process', 'tainacan'),
    'loading_processes' => __('Loading processes', 'tainacan'),
    'label_semantic_uri' => __('Semantic Uri', 'tainacan'),
    'label_view_collection_on_website' => __('View collection on website', 'tainacan'),
    'label_view_collections_on_website' => __('View collections on website', 'tainacan'),
    'label_view_taxonomies_on_website' => __('View taxonomies on website', 'tainacan'),
    'label_view_more' => __('View more', 'tainacan'),
    'label_log_file' => __('Log file', 'tainacan'),
    'label_error_log_file' => __('Error Log file', 'tainacan'),
    'label_import_items' => __('Import items', 'tainacan'),
    'label_hide_filters' => __('Hide filters panel', 'tainacan'),
    'label_show_filters' => __('Show filters panel', 'tainacan'),
    'label_select_all_items' => __('Select all items', 'tainacan'),
    'label_select_all' => __('Select all', 'tainacan'),
    'label_select_item' => __('Select item', 'tainacan'),
    'label_untrash_selected_items' => __('Restore from trash', 'tainacan'),
    'label_value_not_provided' => __('No value provided.', 'tainacan'),
    'label_description_not_provided' => __('No description provided.', 'tainacan'),
    'label_save_goto_metadata' => __('Save and Go to Metadata', 'tainacan'),
    'label_save_goto_filter' => __('Save and Go to Filters', 'tainacan'),
    'label_view_all_collections' => __('View all Collections', 'tainacan'),
    'label_view_on_theme' => __('View on Theme', 'tainacan'),
    'label_view_items_on_theme' => __('View all Items on Theme', 'tainacan'),
    'label_view_collections_on_theme' => __('View all Collections on Theme', 'tainacan'),
    'label_create_collection' => __('Create Collection', 'tainacan'),
    'label_hide_metadata' => __('Hide metadata', 'tainacan'),
    'label_show_metadata' => __('Show metadata', 'tainacan'),
    'label_all_terms' => __('All terms', 'tainacan'),
    'label_selected_terms' => __('Selected terms', 'tainacan'),
    'label_selected_term' => __('Selected term', 'tainacan'),
    'label_%s_selected_items' => __('%s selected items', 'tainacan'),
    'label_selected_item' => __('Selected item', 'tainacan'),
    'label_selected_items' => __('Selected items', 'tainacan'),
    'label_one_selected_item' => __('One selected item', 'tainacan'),
    'label_all_items_selected' => __('All items selected', 'tainacan'),
    /* translators: Here there is a number of items that are selected in this listing */
    'label_%s_on_this_page' => __('%s on this page', 'tainacan'),
    'label_all_metadatum_values' => __('All metadatum values', 'tainacan'),
    'label_selected_metadatum_values' => __('Selected metadatum values', 'tainacan'),
    /* translators: 'n.' here comes from 'number' */
    'label_editing_item_number' => __('Editing item n.', 'tainacan'),
    'label_sequence_editing_item' => __('Sequence editing: Item', 'tainacan'),
    /* translators: The amount of files remaining to be processed */
    'label_%s_files_remaining' => __('%s files remaining.', 'tainacan'),
    'label_one_file_remaining' => __('One file remaining.', 'tainacan'),
    'label_upload_file_prepare_items' => __('Uploading files and preparing items', 'tainacan'),
    'label_bulk_edit_items' => __('Bulk edit items', 'tainacan'),
    'label_sequence_edit_items' => __('Sequence edit items', 'tainacan'),
    'label_documents_upload' => __('Documents upload', 'tainacan'),
    'label_added_items' => __('Added items', 'tainacan'),
    'label_filters_from' => __('Filters from', 'tainacan'),
    'label_available_exporters' => __('Available Exporters', 'tainacan'),
    'label_source_collection' => __('Origin collection', 'tainacan'),
    'label_send_email' => __('Send me an email when done.', 'tainacan'),
    'label_urls' => __('URLs', 'tainacan'),
    'label_page' => __('Page', 'tainacan'),
    'label_item_page' => __('Item page', 'tainacan'),
    'label_activity_description' => __('Activity description', 'tainacan'),
    'label_activity_creation_date' => __('Activity creation date', 'tainacan'),
    'label_activity_author' => __('Activity author', 'tainacan'),
    'label_approbation' => __('Approbation', 'tainacan'),
    'label_urls_for_items_list' => __('URLs for Items List', 'tainacan'),
    'label_urls_for_item_page' => __('URLs for Item Page', 'tainacan'),
    'label_item_page_on_website' => __('Item page on website', 'tainacan'),
    'label_items_list_on_website' => __('Items list on website', 'tainacan'),
    'label_taxonomy_page_on_website' => __('Taxonomy page on website', 'tainacan'),
    'label_term_page_on_website' => __('Term page on website', 'tainacan'),
    'label_copy_link_url' => __('Copy link URL', 'tainacan'),
    'label_open_externally' => __('Open externally', 'tainacan'),
    'label_no_output_info' => __('No output info', 'tainacan'),
    'label_output' => __('Output', 'tainacan'),
    'label_no_mapping' => __('No mapping', 'tainacan'),
    /* translators: The sorting/order option 'desc'. A noun, not a verb */
    'label_descending' => __('Descending', 'tainacan'),
    /* translators: The sorting/order option 'asc'. A noun, not a verb */
    'label_ascending' => __('Ascending', 'tainacan'),
    /* translators: The slides/slideshow fullscreen view mode */
    'label_slides' => __('Slides', 'tainacan'),
    'label_items_list' => __('Items List', 'tainacan'),
    'label_items_list_results' => __('Items list results', 'tainacan'),
    'label_list_pagination' => __('List pagination', 'tainacan'),
    'label_sort_visualization' => __('Sorting and visualization control', 'tainacan'),
    'label_tainacan_api' => __('Tainacan API', 'tainacan'),
    'label_filter_type_preview' => __('Filter type preview', 'tainacan'),
    'label_metadatum_type_preview' => __('Metadatum type preview', 'tainacan'),
    'label_open_item_new_tab' => __('Open item in a new tab', 'tainacan'),
    'label_open_collection_new_tab' => __('Open collection in a new tab', 'tainacan'),
    'label_select_item' => __('Select item', 'tainacan'),
    'label_unselect_item' => __('Unselect item', 'tainacan'),
    'label_select_collection' => __('Select collection', 'tainacan'),
    'label_unselect_collection' => __('Unselect collection', 'tainacan'),
    'label_delete_item' => __('Delete item', 'tainacan'),
    'label_delete_collection' => __('Delete collection', 'tainacan'),
    'label_no_collections_using_taxonomy' => __('There is no collection using this taxonomy', 'tainacan'),
    'label_collections_using' => __('Collections using', 'tainacan'),
    /* translators: The amount of items selected */
    'label_select_all_%s_items' => __('Select all %s items', 'tainacan'),
    'label_next_page' => __('Next page', 'tainacan'),
    'label_previous_page' => __('Previous page', 'tainacan'),
    'label_page' => __('Page', 'tainacan'),
    'label_current_page' => __('Current page', 'tainacan'),
    'label_shrink_menu' => __('Shrink menu', 'tainacan'),
    'label_expand_menu' => __('Expand menu', 'tainacan'),
    'label_document_uploaded' => __('Document uploaded', 'tainacan'),
    /* translators: Filter of the repository, not a repository of filter! */
    'label_repository_filter' => __('Filter inherited from the repository', 'tainacan'),
    /* translators: Metadatum of the repository, not a repository of metadatum! */
    'label_repository_metadatum' => __('Metadatum inherited from the repository', 'tainacan'),
    /* translators: Metadata of the repository, not a repository of metadata! */
    'label_repository_metadata' => __('Repository metadata', 'tainacan'),
    /* translators: Filters of the repository, not a repository of filters! */
    'label_collection_filter' => __('Collection filter', 'tainacan'),
    'label_collection_metadatum' => __('Collection metadatum', 'tainacan'),
    'label_collection_capabilities' => __('Collection capabilities', 'tainacan'),
    'label_recover_from_trash' => __('Recover from trash', 'tainacan'),
    'label_show_children_terms' => __('Show children terms', 'tainacan'),
    'label_begin_slide_transition' => __('Begin slide transition', 'tainacan'),
    'label_pause_slide_transition' => __('Pause slide transition', 'tainacan'),
    'label_next_group_slides' => __('Next group of slides', 'tainacan'),
    'label_previous_group_slides' => __('Previous group of slides', 'tainacan'),
    'label_plugin_home_page' => __('Plugin home page', 'tainacan'),
    'label_wordpress_admin_page' => __('WordPress Admin Page', 'tainacan'),
    /* translators: Number of collections */
    'label_view_all_%s_collections' => __('View all %s collections', 'tainacan'),
    'label_view_collections_list' => __('View collections list', 'tainacan'),
    'label_comparator' => __('Comparator', 'tainacan'),
    'label_table_of_items' => __('Table of Items', 'tainacan'),
    'label_create_another_item' => __('Create another item', 'tainacan'),
    'label_recent_collections' => __('Recent Collections', 'tainacan'),
    'label_%s_items_copy_success' => __('%s item copies were created with success!', 'tainacan'),
    'label_one_item_copy_success' => __('The item copy was created with success!', 'tainacan'),
    'label_item_copy_failure' => __('Something wrong happened... Item copy failed!', 'tainacan'),
    'label_preset_success' => __('The preset was applied with success!', 'tainacan'),
    'label_create_another_taxonomy' => __('Create another Taxonomy', 'tainacan'),
    'label_make_copies_of_item' => __('Make copies of item', 'tainacan'),
    'label_number_of_copies' => __('Number of copies', 'tainacan'),
    'label_return_to_list' => __('Return to list', 'tainacan'),
    'label_expose_only_displayed_metadata' => __('Expose only displayed metadata', 'tainacan'),
    'label_allowed' => __('Allowed', 'tainacan'),
    'label_not_allowed' => __('Not allowed', 'tainacan'),
    /* translators: Label for the button that opens the Exposers modal */
    'label_view_as' => __('View as...', 'tainacan'),
    'label_day' => __('Day', 'tainacan'),
    'label_month' => __('Month', 'tainacan'),
    'label_year' => __('Year', 'tainacan'),
    'label_related_to' => __('Related to', 'tainacan'),
    'label_user_roles' => __('User roles', 'tainacan'),
    'label_associated_roles' => __('Associated roles', 'tainacan'),
    'label_inherited_roles' => __('Inherited roles', 'tainacan'),
    'label_editing_capability' => __('Editing capability', 'tainacan'),
    'label_default_author_user' => __('Set the item author as default value', 'tainacan'),
    'label_create_new_item' => __('Create new item', 'tainacan'),
    'label_submit' => __('Submit', 'tainacan'),
    'label_know_more' => __('Know more', 'tainacan'),
    'label_request_details' => __('Request details', 'tainacan'),
    'label_root_terms' => __('Root terms', 'tainacan'),
    'label_see_on_fullscreen' => __('See on fullscreen slides', 'tainacan'),
    'label_slides_help' => __('Help with the slides view mode', 'tainacan'),
    /* translators: The 'SPACE' key on keyboard */
    'label_space_key' => __('SPACE', 'tainacan'),
    /* translators: The 'ESC' key on keyboard */
    'label_esc_key' => __('ESC', 'tainacan'),
    'label_view_selected_items_as' => __('View selected items as...', 'tainacan'),
    'label_actions_for_the_selection' => __('Actions for the selection', 'tainacan'),
    'label_upload_custom_thumbnail' => __('Upload custom thumbnail', 'tainacan'),
    'label_switch_document_type' => __('Switch document type', 'tainacan'),
    'label_sending_form' => __('Sending form...', 'tainacan'),
    'label_form_not_loaded' => __('This form could not be loaded', 'tainacan'),
    'label_terms_not_used' => __('Terms not used', 'tainacan'),
    'label_terms_used' => __('Terms used', 'tainacan'),
    'label_number_of_terms' => __('Number of terms', 'tainacan'),
    'label_number_of_items' => __('Number of items', 'tainacan'),
    'label_number_of_metadata' => __('Number of metadata', 'tainacan'),
    'label_usage_of_terms_per_taxonomy' => __('Usage of terms per taxonomy', 'tainacan'),
    'label_items_per_term' => __('Items per term', 'tainacan'),
    'label_items_per_term_from_taxonomy' => __('Items per term from taxonomy:', 'tainacan'),
    'label_items_per_term_from_taxonomy_metadatum' => __('Items per term from taxonomy metadatum:', 'tainacan'),
    'label_items_per_child_terms_of' => __('Items per child terms of:', 'tainacan'),
    'label_items_per_collection' => __('Items per collection', 'tainacan'),
    'label_loading_report' => __('Loading report...', 'tainacan'),
    'label_metadata_fill_distribution' => __('Metadata fill distribution', 'tainacan'),
    'label_not_filled' => __('Not filled yet', 'tainacan'),
    'label_filled' => __('Already filled', 'tainacan'),
    /* translators: To be displayed with the number of Taxonomies not used in the collection */
    'label_not_used' => __('Not used', 'tainacan'),
    /* translators: To be displayed with the number of Taxonomies used in the collection */
    'label_select_a_taxonomy' => __('Select a taxonomy', 'tainacan'),
    'label_used' => __('Used', 'tainacan'),
    'label_select_a_taxonomy_metadatum' => __('Select a taxonomy metadatum', 'tainacan'),
    'label_items_with_this_metadatum_value' => __('Items with this metadatum value', 'tainacan'),
    'label_amount_of_items_per_metadatum_value' => __('Amount of items per metadatum value', 'tainacan'),
    'label_activities_during_year' => __('Activities during the year', 'tainacan'),
    'label_compact_list' => __('Compact list', 'tainacan'),
    'label_detailed_list' => __('Detailed list', 'tainacan'),
    'label_view_metadata_details' => __('View metadata details', 'tainacan'),
    'label_filter_by_metadata_type' => __('Filter by metadatum type', 'tainacan'),
    'label_pie_chart' => __('Pie chart', 'tainacan'),
    'label_bar_chart' => __('Bar chart', 'tainacan'),
    'label_terms_per_page' => __('Terms per page', 'tainacan'),
    'label_anonymous_user' => __('Anonymous User', 'tainacan'),
    'label_select_a_year' => __('Select a year', 'tainacan'),
    'label_all_users' => __('All users', 'tainacan'),
    'label_activity_per_user' => __('Activities per user', 'tainacan'),
    'label_report_generated_on' => __('Report generated on', 'tainacan'),
    'label_get_latest_report' => __('Get latest report', 'tainacan'),
    'label_decrease' => __('Decrease', 'tainacan'),
    'label_increase' => __('Increase', 'tainacan'),
    'label_set_all_create_metadata' => __('Set every metadata to be created', 'tainacan'),
    'label_manage_collection' => __('Manage collection', 'tainacan'),
    'label_chart_controls' => __('Chart controls', 'tainacan'),
    'label_increase_zoom' => __('Increase zoom', 'tainacan'),
    'label_decrease_zoom' => __('Decrease zoom', 'tainacan'),
    'label_zoom_by_selection' => __('Zoom by selection', 'tainacan'),
    'label_pan_selection' => __('Pan selection', 'tainacan'),
    'label_reset_zoom' => __('Reset zoom', 'tainacan'),
    'label_chart_export_options' => __('Chart export options', 'tainacan'),
    'label_related_items' => __('Items related to this', 'tainacan'),
    'label_view_all_%s_related_items' => __('View all %s related items', 'tainacan'),
    'label_back_to_related_item' => __('Back to related item', 'tainacan'),
    'label_options_of_the_%s_metadata_type' => __('Options of the %s metadata type', 'tainacan'),
    'label_advanced_metadata_options' => __('Advanced metadata options', 'tainacan'),
    'label_maximum_of_%s_values' => __('maximum of %s values', 'tainacan'),
    'label_document_option_forced_iframe' => __('Render content in iframe', 'tainacan'),
    'label_amount_of_metadata_of_type' => __('Amount of metadata of this type', 'tainacan'),
    'label_document_option_iframe_height' => __('Iframe height (px)', 'tainacan'),
    'label_document_option_iframe_width' => __('Iframe width (px)', 'tainacan'),
    'label_document_option_is_image' => __('Is link to external image', 'tainacan'),
    'label_limit_max_values' => __('Limit the amount of multiple values', 'tainacan'),
    'label_items_selection' => __('Items selection', 'tainacan'),
    'label_default_orderby' => __('Initial default sorting', 'tainacan'),
    'label_focus_mode' => __('Focus mode', 'tainacan'),
    'label_start_focus_mode' => __('Start focus mode', 'tainacan'),
    'label_close_search' => __('Close search', 'tainacan'),
    'label_remove_all_criteria' => __('Remove all criteria', 'tainacan'),
    'label_string_to_search_for' => __('String to search for', 'tainacan'),
    'label_number_to_search_for' => __('Number to search for', 'tainacan'),
    'label_date_to_search_for' => __('Date to search for', 'tainacan'),
    'label_criterion_to_compare' => __('Criterion to compare', 'tainacan'),
    'label_metadata_and_sections' => __('Metadata and Sections', 'tainacan'),
    'label_metadata_%s_and_sections_%s' => __('Metadata (%1$s) and Sections (%2$s)', 'tainacan'),
    'label_view_activity_logs' => __('View activity logs', 'tainacan'),
    'label_item_activities' => __('Item activities', 'tainacan'),
    'label_add_new_section' => __('Add new section', 'tainacan'),
    'label_new_metadata_section' => __('New metadata section', 'tainacan'),
    'label_show_more_details' => __('Show more details', 'tainacan'),
    'label_show_less_details' => __('Show less details', 'tainacan'),
    'label_move_up' => __('Move up', 'tainacan'),
    'label_move_down' => __('Move down', 'tainacan'),
    'label_view_modes_public_list' => __('Items view modes in the public list', 'tainacan'),
    'label_default' => __('Default', 'tainacan'),
    'label_tainacan_mobile_panel' => __('Tainacan Mobile Panel', 'tainacan'),
    'label_close_panel' => __('Close panel', 'tainacan'),
    'label_shortcuts' => __('Shortcuts', 'tainacan'),
    'label_all_metadata' => __('All metadata', 'tainacan'),
    'label_document_and_thumbnail' => __('Document and thumbnail', 'tainacan'),
    'label_all_attachments' => __('All attachments', 'tainacan'),
    'label_only_required_metadata' => __('Only required metadata', 'tainacan'),
    'label_update_as_public' => __('Update as public', 'tainacan'),
    'label_update_as_private' => __('Update as private', 'tainacan'),
    'label_change_to_private' => __('Change to private', 'tainacan'),
    'label_change_to_draft' => __('Change to draft', 'tainacan'),
    'label_create_item' => __('Create item', 'tainacan'),
    'label_ready_to_create_item' => __('Ready to create this item?', 'tainacan'),
    'label_only_required' => __('Only required', 'tainacan'),
    'label_create_collection_from_mapper' => __('Create a new collection from a mapper', 'tainacan'),
    'label_create_collection_from_preset' => __('Create a preset collection', 'tainacan'),
    'label_preset_collections' => __('Preset collections', 'tainacan'),
    'label_from_a_mapper' => __('From a metadata mapper', 'tainacan'),
    'label_using_a_preset' => __('Using a preset', 'tainacan'),
    'label_use_search_separated_words' => __('Search each word separatelly', 'tainacan'),
    'label_map' => __('Map', 'tainacan'),
    'label_show_item_location_on_map' => __('Show item location on map', 'tainacan'),
    /* translators: This appears before a select where you choose possible geocoorinate metadata */
    'label_showing_locations_for' => __('Showing locations for:', 'tainacan'),
    'label_one_selected_location' => __('One location selected', 'tainacan'),
    'label_%s_selected_locations' => __('%s locations selected', 'tainacan'),
    'label_update_parent' => __('Change parent term', 'tainacan'),
    'label_select_child_terms_long' => __('Select all child terms', 'tainacan'),
    /* translators: This relates to taxonomy terms selections. It is a shorter version of "select all child terms" */
    'label_select_child_terms_short' => __('All children', 'tainacan'),
    'label_select_root_terms_long' => __('Select all root terms', 'tainacan'),
    /* translators: This relates to taxonomy terms selections. It is a shorter version of "select all root terms" */
    'label_select_root_terms_short' => __('All root terms', 'tainacan'),
    'label_all_root_terms_selected' => __('All root terms selected', 'tainacan'),
    'label_terms_child_of_%s_selected' => __('Terms child of %s selected', 'tainacan'),
    'label_remove_selected_term' => __('Remove only the selected term', 'tainacan'),
    'label_remove_term_and_descendants' => __('Remove term and its descendants', 'tainacan'),
    'label_remove_selected_terms' => __('Remove only selected terms', 'tainacan'),
    'label_remove_terms_and_descendants' => __('Remove terms and their descendants', 'tainacan'),
    'label_%s_selected_terms' => __('%s terms selected', 'tainacan'),
    'label_one_selected_term' => __('One term selected', 'tainacan'),
    'label_no_parent_root_term' => __('No parent (set as root term)', 'tainacan'),
    /* translators: This relates to terms that are in use by some item via a taxonomy. */
    'label_used_by_items' => __('In use by some item', 'tainacan'),
    'label_multiple_terms_insertion' => __('Multiple terms insertion', 'tainacan'),
    'label_multiple_terms' => __('Multiple terms', 'tainacan'),
    'label_multiple' => __('Multiple', 'tainacan'),
    'label_separator' => __('Separator', 'tainacan'),
    // Instructions. More complex sentences to guide user and placeholders
    'instruction_delete_selected_collections' => __('Delete selected collections', 'tainacan'),
    'instruction_delete_selected_items' => __('Delete selected items', 'tainacan'),
    'instruction_delete_selected_taxonomies' => __('Delete selected taxonomies', 'tainacan'),
    'instruction_image_upload_box' => __('Drop an image here or click to upload.', 'tainacan'),
    'instruction_select_a_status' => __('Select a status:', 'tainacan'),
    'instruction_select_a_status2' => __('Select a status', 'tainacan'),
    'instruction_select_a_comments_status' => __('Select a comments status', 'tainacan'),
    'instruction_click_to_select_a_filter_type' => __('Click to select a filter type:', 'tainacan'),
    'instruction_select_a_parent_term' => __('Select a parent term:', 'tainacan'),
    'instruction_select_a_metadatum' => __('Select a metadatum', 'tainacan'),
    'instruction_cover_page' => __('Search a Page to choose.', 'tainacan'),
    'instruction_type_search_users' => __('Search users...', 'tainacan'),
    'instruction_type_search_users_filter' => __('Search users to filter...', 'tainacan'),
    'instruction_type_search_metadata_filter' => __('Search metadata to filter...', 'tainacan'),
    'instruction_type_search_filter_filter' => __('Search filters to filter...', 'tainacan'),
    'instruction_type_search_roles_filter' => __('Search roles to filter...', 'tainacan'),
    'instruction_select_a_parent_collection' => __('Select a parent collection.', 'tainacan'),
    'instruction_select_collection_thumbnail' => __('Select a thumbnail image for collection', 'tainacan'),
    'instruction_select_item_thumbnail' => __('Select a thumbnail image for item', 'tainacan'),
    'instruction_select_collection_header_image' => __('Select a header image for collection', 'tainacan'),
    'instruction_select_term_header_image' => __('Select a header image for term', 'tainacan'),
    'instruction_select_files_to_attach_to_item' => __('Select files to attach to item', 'tainacan'),
    'instruction_select_document_file_for_item' => __('Select a document file for item', 'tainacan'),
    'instruction_insert_url' => __('Insert URL', 'tainacan'),
    'instruction_write_text' => __('Write Text', 'tainacan'),
    /* translators: The verb to search, used in search box placeholder */
    'instruction_search' => __('Search', 'tainacan'),
    /* translators: The verb to search, used in search box placeholder */
    'instruction_search_in_repository' => __('Search in repository', 'tainacan'),
    'instruction_select_a_target_collection' => __('Select a target collection.', 'tainacan'),
    'instruction_select_a_mapper' => __('Select a mapper', 'tainacan'),
    'instruction_select_an_importer_type' => __('Select an importer from the options below:', 'tainacan'),
    'instruction_drop_file_or_click_to_upload' => __('Drop your source file or click here to upload.', 'tainacan'),
    'instruction_select_metadatum_type' => __('Select a metadatum type', 'tainacan'),
    'instruction_configure_new_metadatum' => __('Configure new metadatum', 'tainacan'),
    'instruction_configure_the_metadatum' => __('Configure the metadatum', 'tainacan'),
    'instruction_configure_new_metadata_section' => __('Configure new metadata section', 'tainacan'),
    'instruction_configure_the_metadata_section' => __('Configure the metadata section', 'tainacan'),
    'instruction_insert_mapper_metadatum_info' => __('Insert the new mapper\'s metadatum info', 'tainacan'),
    'instruction_select_max_options_to_show' => __('Select maximum options to show', 'tainacan'),
    'instruction_select_collection_fetch_items' => __('Select a collection to fetch items', 'tainacan'),
    'instruction_select_a_action' => __('Select an action', 'tainacan'),
    'instruction_parent_term' => __('Type to search a Parent Term to choose.', 'tainacan'),
    'instruction_type_existing_item' => __('Type to add an existing item...', 'tainacan'),
    'instruction_type_existing_term' => __('Type to add an existing term...', 'tainacan'),
    'instruction_select_an_exporter_type' => __('Select an exporter from the options below:', 'tainacan'),
    'instruction_select_a_collection' => __('Select a collection', 'tainacan'),
    'instruction_hover_a_filter_type_to_preview' => __('Hover a filter type to preview', 'tainacan'),
    'instruction_never_show_message_again' => __('Never show me this message again', 'tainacan'),
    'instruction_click_or_drag_filter_create' => __('Click or drag and drop to create a new filter', 'tainacan'),
    'instruction_click_or_drag_metadatum_create' => __('Click or drag and drop to create a new metadatum', 'tainacan'),
    'instruction_drag_and_drop_filter_sort' => __('Drag and drop to change filter order', 'tainacan'),
    'instruction_drag_and_drop_metadatum_sort' => __('Drag and drop to change metadatum order', 'tainacan'),
    'instruction_drag_and_drop_metadata_sections_sort' => __('Drag and drop to change metadata sections order', 'tainacan'),
    'instruction_filter_activities_date' => __('Range of dates', 'tainacan'),
    'instruction_select_a_date' => __('Select a date', 'tainacan'),
    'instruction_select_a_month' => __('Select a month', 'tainacan'),
    'instruction_type_value_year' => __('Type year value', 'tainacan'),
    'instruction_select_the_amount_of_copies' => __('Select the amount of copies of the item that you want to create', 'tainacan'),
    'instruction_select_a_interval' => __('Select an interval', 'tainacan'),
    'instruction_select_title_mapping' => __('Before running import, consider selecting the title source metadata', 'tainacan'),
    'instruction_click_error_to_go_to_metadata' => __('Click on the error to go to the metadata:', 'tainacan'),
    'instruction_click_to_see_or_search' => __('Click to see options or type to search...', 'tainacan'),
    'instruction_select_one_or_more_collections' => __('Select one or more collections', 'tainacan'),
    'instruction_thumbnail_alt' => __('Type here a descriptive text for the image thumbnail...', 'tainacan'),
    'instruction_click_to_see_%s_child_terms' => __('Click to see %s child terms', 'tainacan'),
    'instruction_click_to_see_%s_child_term' => __('Click to see %s child term', 'tainacan'),
    'instruction_click_to_load_filter' => __('Click to load the filter', 'tainacan'),
    'instruction_collection_description' => __('Enter the collection description here...', 'tainacan'),
    'instruction_collection_name' => __('Enter the collection name here...', 'tainacan'),
    'instruction_click_to_easily_see' => __('Click to easily see', 'tainacan'),
    'instruction_create_item_select_status' => __('Select a status for the item visiblity on the site. Remember, whichever you select will still be restricted by the collection status as well.', 'tainacan'),
    'instruction_edit_item_status' => __('To alter the item status, select a different update strategy in the footer below.', 'tainacan'),
    /* translators: At the end of this sentence there will be a search query typed by the user wrapped in quotes. */
    'instruction_press_enter_to_search_for' => __('Press <kbd>ENTER</kbd> to search for', 'tainacan'),
    'instruction_type_geocoordinate' => __('Type a geo coordinate in the form of lat,lng', 'tainacan'),
    'instruction_click_to_add_a_point' => __('Drag to reposition or click to insert a marker', 'tainacan'),
    'instruction_select_geocoordinate_metadatum' => __('Select a geocoordinate metadatum', 'tainacan'),
    'instruction_multiple_terms_insertion' => __('Type or paste here a list of names using a separator to create multiple terms at once.', 'tainacan'),
    // Info. Other feedback to user.
    'info_items_tab_all' => __('Every item, except by those sent to trash.', 'tainacan'),
    'info_items_tab_publish' => __('Only items that are visible to everyone.', 'tainacan'),
    'info_items_tab_private' => __('Items visible only to editors.', 'tainacan'),
    'info_items_tab_draft' => __('Draft items, not published.', 'tainacan'),
    'info_items_tab_trash' => __('Items that were sent to trash.', 'tainacan'),
    'info_collections_tab_all' => __('Every published collection, including those visible only to editors.', 'tainacan'),
    'info_collections_tab_publish' => __('Only collections that are visible to everyone.', 'tainacan'),
    'info_collections_tab_private' => __('Collections visible only to editors.', 'tainacan'),
    'info_collections_tab_draft' => __('Draft collections, not published.', 'tainacan'),
    'info_collections_tab_trash' => __('Collections that were sent to trash.', 'tainacan'),
    'info_taxonomies_tab_all' => __('Every taxonomy, except by those sent to trash.', 'tainacan'),
    'info_taxonomies_tab_publish' => __('Only taxonomies that are visible to everyone.', 'tainacan'),
    'info_taxonomies_tab_private' => __('Taxonomies visible only to editors.', 'tainacan'),
    'info_taxonomies_tab_draft' => __('Draft taxonomies, not published.', 'tainacan'),
    'info_taxonomies_tab_trash' => __('Taxonomies that were sent to trash.', 'tainacan'),
    'info_error_invalid_date' => __('Invalid date', 'tainacan'),
    'info_search_results' => __('Advanced Search Results', 'tainacan'),
    'info_search_criteria' => __('Advanced Search Criteria', 'tainacan'),
    'info_name_is_required' => __('Name is required.', 'tainacan'),
    'info_no_collection_created' => __('No collection was created in this repository.', 'tainacan'),
    'info_no_items_publish' => __('No public items found.', 'tainacan'),
    'info_no_items_private' => __('No private items found.', 'tainacan'),
    'info_no_items_draft' => __('No draft items found.', 'tainacan'),
    'info_no_items_trash' => __('No items found on trash.', 'tainacan'),
    'info_no_collections_publish' => __('No public collections found.', 'tainacan'),
    'info_no_collections_private' => __('No private collections found.', 'tainacan'),
    'info_no_collections_draft' => __('No draft collections found.', 'tainacan'),
    'info_no_collections_trash' => __('No collections found on trash.', 'tainacan'),
    'info_no_taxonomies_publish' => __('No public taxonomies found.', 'tainacan'),
    'info_no_taxonomies_private' => __('No private taxonomies found.', 'tainacan'),
    'info_no_taxonomies_draft' => __('No draft taxonomies found.', 'tainacan'),
    'info_no_taxonomies_trash' => __('No taxonomies found on trash.', 'tainacan'),
    'info_item_publish' => __('This item is published as public and will be visible to any visitor on the website, as long as its collection is also public.', 'tainacan'),
    'info_item_private' => __('This item is published as private and will be visible only for editors with the required capabilities.', 'tainacan'),
    'info_item_draft' => __('This item is a draft and will be visible only for editors with the required capabilities. Also, in this state, no validation for required metadata is performed.', 'tainacan'),
    'info_item_trash' => __('This item is on trash and will not be visible outside of the admin panel.', 'tainacan'),
    'info_no_taxonomy_created' => __('No taxonomy was created in this repository.', 'tainacan'),
    'info_no_terms_created_on_taxonomy' => __('No term was created for this taxonomy.', 'tainacan'),
    'info_no_terms_found' => __('No term was found here', 'tainacan'),
    'info_no_more_terms_found' => __('No more terms found', 'tainacan'),
    'info_no_item_created' => __('No item was created so far.', 'tainacan'),
    'info_no_page_found' => __('No page was found with this name.', 'tainacan'),
    'info_no_user_found' => __('No user was found with this name.', 'tainacan'),
    'info_no_item_found_filter' => __('No item was found here with these filters.', 'tainacan'),
    'info_no_item_found' => __('No item was found.', 'tainacan'),
    'info_item_not_saved' => __('Warning: Item not saved.', 'tainacan'),
    'info_no_associated_role' => __('No associated role.', 'tainacan'),
    'info_error_deleting_collection' => __('Error on deleting collection.', 'tainacan'),
    'info_error_deleting_taxonomy' => __('Error on deleting taxonomy', 'tainacan'),
    'info_error_first_value_greater' => __('First value should be lower than second value', 'tainacan'),
    'info_error_value_must_be_number' => __('Value should be a number', 'tainacan'),
    'info_error_upload' => __('Error while uploading files.', 'tainacan'),
    'info_collection_deleted' => __('Collection deleted.', 'tainacan'),
    'info_item_deleted' => __('Item deleted.', 'tainacan'),
    'info_taxonomy_deleted' => __('Taxonomy deleted', 'tainacan'),
    'info_warning_attachment_delete' => __('Do you really want to delete this attachment?', 'tainacan'),
    'info_warning_collection_delete' => __('Do you really want to permanently delete this collection?', 'tainacan'),
    'info_warning_collection_trash' => __('Do you really want to trash this collection?', 'tainacan'),
    'info_warning_item_delete' => __('Do you really want to permanently delete this item?', 'tainacan'),
    'info_warning_remove_item_from_trash' => __('Do you really want to remove this item from trash?', 'tainacan'),
    'info_warning_item_trash' => __('Do you really want to trash this item?', 'tainacan'),
    'info_warning_metadatum_delete' => __('Do you really want to permanently delete this metadatum?', 'tainacan'),
    'info_warning_metadata_section_delete' => __('Do you really want to permanently delete this metadata section?', 'tainacan'),
    'info_warning_taxonomy_delete' => __('Do you really want to delete this taxonomy?', 'tainacan'),
    'info_warning_selected_collections_delete' => __('Do you really want to permanently delete the selected collections?', 'tainacan'),
    'info_warning_selected_collections_trash' => __('Do you really want to trash the selected collections?', 'tainacan'),
    'info_warning_selected_items_delete' => __('Do you really want to permanently delete the selected items?', 'tainacan'),
    'info_warning_selected_items_trash' => __('Do you really want to trash the selected items?', 'tainacan'),
    'info_warning_selected_taxonomies_delete' => __('Do you really want to delete the selected taxonomies?', 'tainacan'),
    'info_warning_collection_related' => __('The metadata Collection related is required', 'tainacan'),
    'info_warning_no_metadata_found' => __('No metadata found in this collection', 'tainacan'),
    /* translators: This is displayed before sentences like "Showing items 2 to 8 of 12 */
    'info_showing_items' => __('Showing items ', 'tainacan'),
    'info_showing_attachments' => __('Showing attachments ', 'tainacan'),
    'info_showing_collections' => __('Showing collections ', 'tainacan'),
    'info_showing_taxonomies' => __('Showing taxonomies ', 'tainacan'),
    'info_showing_activities' => __('Showing activities ', 'tainacan'),
    'info_showing_processes' => __('Showing processes ', 'tainacan'),
    'info_showing_capabilities' => __('Showing capabilities ', 'tainacan'),
    'info_no_capabilities_found' => __('No capabilities found.', 'tainacan'),
    'info_no_role_associated_capability' => __('No role associated to this capability', 'tainacan'),
    'info_associated_roles' => __('These are the roles that have this capability set. You may add or remove the capability to customize the role.', 'tainacan'),
    'info_inherited_roles' => __('These are the roles that have greater capabilities, which inherit this one. You cannot edit this as it will not have precedence over the greater capability.', 'tainacan'),
    'info_showing_terms' => __('Showing terms ', 'tainacan'),
    'info_warning_remove_from_trash_first' => __('Remove this item from trash first'),
    /* translators: This is displayed before sentences like "Showing items 2 to 8 of 12 */
    'info_to' => __(' to ', 'tainacan'),
    /* translators: This is displayed before sentences like "Showing items 2 to 8 of 12 */
    'info_of' => __(' of ', 'tainacan'),
    'info_created_by' => __('Created by: ', 'tainacan'),
    'info_by' => __('By: ', 'tainacan'),
    'info_date' => __('Date: ', 'tainacan'),
    'info_modification_date' => __('Last modification date: ', 'tainacan'),
    'info_not_saved' => __('Not saved ', 'tainacan'),
    'info_warning_item_not_saved' => __('Are you sure? The item is not saved, changes will be lost.', 'tainacan'),
    'info_warning_metadata_not_saved' => __('Are you sure? There are metadata not saved, changes will be lost.', 'tainacan'),
    'info_warning_filters_not_saved' => __('Are you sure? There are filters not saved, changes will be lost.', 'tainacan'),
    'info_no_description_provided' => __('No description provided.', 'tainacan'),
    'info_warning_taxonomy_not_saved' => __('Are you sure? The taxonomy is not saved, changes will be lost.', 'tainacan'),
    'info_warning_terms_not_saved' => __('Are you sure? There are terms not saved, changes will be lost.', 'tainacan'),
    'info_no_activities' => __('No activities found.', 'tainacan'),
    'info_logs_before' => __('Before', 'tainacan'),
    'info_logs_after' => __('After', 'tainacan'),
    'info_there_is_no_metadatum' => __('There is no metadata here yet.', 'tainacan'),
    'info_there_is_no_metadata_section' => __('There is no metadata section here yet.', 'tainacan'),
    'info_there_is_no_filter' => __('There is no filter here yet.', 'tainacan'),
    'info_changes' => __('Changes', 'tainacan'),
    'info_possible_external_sources' => __('Possible external sources: CSV, Instagram, YouTube, etc.', 'tainacan'),
    'info_help_term_name' => __('The term name', 'tainacan'),
    'info_help_term_description' => __('The description of the Term.', 'tainacan'),
    'info_help_parent_term' => __('The parent term', 'tainacan'),
    'info_no_attachments_on_item_yet' => __('The are no attachments on this item so far.', 'tainacan'),
    'info_repository_metadata_inheritance' => __('Repository Metadata will be inherited by all collections.', 'tainacan'),
    'info_repository_filters_inheritance' => __('Repository Filters will be inherited by all collections.', 'tainacan'),
    'info_create_filters' => __('Click or Drag and Drop Metadata here for creating a new Filter.', 'tainacan'),
    'info_create_metadata' => __('Click or Drag and Drop Metadata Types here for creating a new Metadata.', 'tainacan'),
    'info_create_section' => __('Click or Drag and Drop to create a new section for organizing your metadata list.', 'tainacan'),
    'info_create_child_metadata' => __('Drag and Drop Metadata Types here for creating a child Metadata.', 'tainacan'),
    'info_choose_your_metadata' => __('Choose your metadata.', 'tainacan'),
    'info_target_collection_helper' => __('The collection where imported item will be added. Only those that you have permission are listed.', 'tainacan'),
    'info_source_file_upload' => __('The file containing the data to be imported.', 'tainacan'),
    'info_no_metadata_source_file' => __('No metadata was found from the source file.', 'tainacan'),
    'info_no_special_fields_available' => __('No special field was found.', 'tainacan'),
    'info_special_fields_mapped_default' => __('Mapped to default field on collection.', 'tainacan'),
    'info_metadata_mapping_helper' => __('Map each file metadata with the corresponding one in selected collection.', 'tainacan'),
    'info_upload_a_source_to_see_metadata' => __('Upload a source file to load metadata.', 'tainacan'),
    'info_select_collection_to_list_metadata' => __('Select a target collection to list metadata.', 'tainacan'),
    'info_url_source_link_helper' => __('Link to file containing the data to be imported.', 'tainacan'),
    'info_updated_at' => __('Updated at', 'tainacan'),
    'info_editing_metadata_values' => __('Editing metadata values...', 'tainacan'),
    'info_updating_metadata_values' => __('Updating metadata values...', 'tainacan'),
    'info_type_to_add_users' => __('Add users to filter...', 'tainacan'),
    'info_type_to_add_items' => __('Add items to filter...', 'tainacan'),
    'info_type_to_search_items' => __('Search items...', 'tainacan'),
    'info_type_to_add_terms' => __('Add terms to filter...', 'tainacan'),
    'info_type_to_search_metadata' => __('Search metadata...', 'tainacan'),
    'info_type_to_add_metadata' => __('Add metadata to filter...', 'tainacan'),
    'info_visibility_helper' => __('How the item will be available to visualization.', 'tainacan'),
    'info_errors_in_form' => __('There are errors in the form', 'tainacan'),
    'info_no_document_to_item' => __('No document was uploaded to this item.', 'tainacan'),
    'info_unfinished_processes' => __('unfinished processes', 'tainacan'),
    'info_no_process' => __('There are no processes executing.', 'tainacan'),
    'info_unknown_date' => __('Unknown date.', 'tainacan'),
    'info_there_are_no_metadata_to_search' => __('There are no metadata to search', 'tainacan'),
    'info_there_are_no_metadata_in_repository_level' => __('There are no metadata in repository level', 'tainacan'),
    'info_import_collection' => __('Import from external sources.', 'tainacan'),
    'info_import_items' => __('Import items from external sources.', 'tainacan'),
    'info_bulk_add_items' => __('Bulk add documents from your computer as items.', 'tainacan'),
    'info_editing_items_in_bulk' => __('Bulk edit items', 'tainacan'),
    'info_by_inner' => __('by', 'tainacan'),
    'info_bulk_edit_process_added' => __('Bulk edit added to process queue.', 'tainacan'),
    'info_no_parent_term_found' => __('No valid parent term was found with this name.', 'tainacan'),
    'info_warning_changing_parent_term' => __('Warning! Changing parent term will reload the terms list, thus unchecking any selection.', 'tainacan'),
    'info_warning_selected_items_remove_from_trash' => __('Do you really want to remove from trash the selected items?', 'tainacan'),
    'info_no_options_available_filtering' => __('No options for this filtering.', 'tainacan'),
    'info_no_options_found' => __('No options found.', 'tainacan'),
    'info_all_files_uploaded' => __('All files uploaded.', 'tainacan'),
    'info_there_are_%s_items_being_edited' => __('There are %s items being edited.', 'tainacan'),
    'info_there_is_one_item_being_edited' => __('There is one item being edited.', 'tainacan'),
    'info_no_preview_found' => __('No preview was found.', 'tainacan'),
    'info_leaving_bulk_edit' => __('You are leaving the bulk edit now.', 'tainacan'),
    'info_current_view_mode_metadata_not_allowed' => __('Current view mode does not allow displayed metadata selection.', 'tainacan'),
    'info_cant_select_metadata_without_items' => __('Can not select displayed metadata without items on list.', 'tainacan'),
    'info_process_status_finished' => __('Finished', 'tainacan'),
    'info_process_status_finished_errors' => __('Finished with errors', 'tainacan'),
    'info_process_status_errored' => __('Failed', 'tainacan'),
    'info_process_status_cancelled' => __('Cancelled', 'tainacan'),
    'info_process_status_paused' => __('Paused', 'tainacan'),
    'info_process_status_running' => __('Running', 'tainacan'),
    'info_warning_process_delete' => __('Are you sure? This process will be deleted.', 'tainacan'),
    'info_warning_process_cancelled' => __('Are you sure? This process will be cancelled.', 'tainacan'),
    'info_empty' => __('empty', 'tainacan'),
    'info_url_copied' => __('URL link copied', 'tainacan'),
    'info_other_options' => __('Other options: ', 'tainacan'),
    'info_other_item_listing_options' => __('Other items listing options: ', 'tainacan'),
    'info_send_email' => __('The exporter may take a while. Check this option to receive an e-mail when the process is done. You can also check the process status visiting the', 'tainacan'),
    'info_tainacan_api' => __('Tainacan API on JSON format.', 'tainacan'),
    'info_items_hidden_due_sorting' => __('When ordering by metadata value, items that have no value for the chosen metadata will not be listed. This list may have less elements than the total existing for current search criteria.', 'tainacan'),
    'info_sorting_by_metadata_value_%s' => __('Showing only items that have value for metadata %s.', 'tainacan'),
    'info_sorting_by_metadata_value_%s_empty_list' => __('No item found, but only items with values for metadata %s are shown. Try sorting by other metadata.', 'tainacan'),
    'info_await_while_item_copy' => __('Please wait while copy is being created...', 'tainacan'),
    'info_await_while_item_copies' => __('Please wait while copies are being created. This may take a while...', 'tainacan'),
    'info_expose_only_displayed_metadata' => __('By checking this option, only metadata that are displayed on the current list will be exposed', 'tainacan'),
    'info_initial_value' => __('Initial value', 'tainacan'),
    'info_final_value' => __('Final value', 'tainacan'),
    'info_show_interval_on_tag' => __('Show applied interval on tags', 'tainacan'),
    'info_title_mapping' => __('The title is the most relevant metadata, that shall identify your item on lists for different view modes. Select the title source metadata first, or skip to run importer as it is.', 'tainacan'),
    'info_can_not_edit_collection' => __('You are not allowed to edit this collection.', 'tainacan'),
    'info_can_not_edit_taxonomy' => __('You are not allowed to edit this taxonomy.', 'tainacan'),
    'info_can_not_edit_filters' => __('You are not allowed to edit filters.', 'tainacan'),
    'info_can_not_edit_metadata' => __('You are not allowed to edit metadata.', 'tainacan'),
    'info_can_not_edit_capabilities' => __('You are not allowed to edit capabilities.', 'tainacan'),
    'info_can_not_read_activities' => __('You are not allowed to read activities.', 'tainacan'),
    'info_can_not_edit_item' => __('You are not allowed to edit this item.', 'tainacan'),
    'info_can_not_bulk_edit_items_collection' => __('You are not allowed to bulk edit items from this collection.', 'tainacan'),
    'info_not_allowed_change_order_metadata' => __('Cannot change metadata order here.', 'tainacan'),
    'info_not_allowed_change_order_metadata_sections' => __('Cannot change metadata sections order here.', 'tainacan'),
    'info_not_allowed_change_order_filters' => __('Cannot change filters order here.', 'tainacan'),
    'info_no_value_compound_metadata' => __('No value has been added to this compound metadata.', 'tainacan'),
    /* translators: Refers to the hierarchy of compound metadata. Like in 'Metadata X (child of Metadata Y) */
    'info_child_of' => __('child of', 'tainacan'),
    /* translators: Refers to the hierarchy of taxonomy terms. Like in 'Macro (child of Photography) */
    'info_children_of_%s' => __('Children of %s', 'tainacan'),
    'info_slides_help_introduction' => __('Use the following commands to navigate through the items', 'tainacan'),
    'info_slides_previous_item' => __('to go to the previous item', 'tainacan'),
    'info_slides_next_item' => __('to go to the next item', 'tainacan'),
    'info_slides_hide_controls' => __('to hide the controls and focus on the document', 'tainacan'),
    'info_slides_start_transition' => __('to start or pause automatic transition every 3s', 'tainacan'),
    'info_slides_exit' => __('to leave the fullscreen slides view mode', 'tainacan'),
    'info_slides_help_end' => __('At any moment, you can also check the item metadata list by clicking on the metadata icon (%1$s) or go directly to the item page, where you will have all its details, by clicking on the eye icon (%2$s).', 'tainacan'),
    'info_thumbnail_custom' => __('Upload the desired image for the thumbnail', 'tainacan'),
    'info_thumbnail_default_from_document' => __('A thumbnail will be automatically generated from the submitted document file', 'tainacan'),
    'info_submission_processing' => __('Please wait while the submission is being processed', 'tainacan'),
    'info_submission_uploading' => __('Please wait while files are uploaded', 'tainacan'),
    'info_thumbnail_alt' => __('The alternative text of the thumbnail is visible only by screen readers and should be useful for users with visual impairments.', 'tainacan'),
    'info_edit_attachments' => __('Order, title or alternative text of the attachments, are edited via the WordPress media modal.', 'tainacan'),
    'info_recaptcha_link_%s' => __('Remember to configure your website reCAPTCHA keys on <a href="%s" target="_blank">the item submission repository page</a>.', 'tainacan'),
    'info_form_not_loaded' => __('There are probably not enough permissions to display it here.', 'tainacan'),
    'info_validating_slug' => __('Validating slug...', 'tainacan'),
    'info_no_taxonomy_metadata_created' => __('No taxonomy metadata created yet', 'tainacan'),
    'info_child_terms_chart' => __('Click on the term bar on the chart aside to see its child terms (if any) in this panel', 'tainacan'),
    'info_metadata_autocomplete_suggestions' => __('Some values already used on this metadatum:', 'tainacan'),
    'info_related_items' => __('These are items that are related to this item via their own relationship type metadata. You can edit such relation on their pages.', 'tainacan'),
    'info_document_option_forced_iframe' => __('Attempt to use an iframe to embed url content on the item page. You may use this option if the autoembed does not work.', 'tainacan'),
    'info_document_option_is_image' => __('If you are linking directly to an external image, use this option so it can be properly embedded.', 'tainacan'),
    'info_%s_applied_filters' => __('<strong>%s</strong> filters applied', 'tainacan'),
    'info_items_%s_found' => __('<strong>%s</strong> items found', 'tainacan'),
    'info_%s_applied_filter' => __('<strong>%s</strong> filter applied', 'tainacan'),
    'info_item_%s_found' => __('<strong>%s</strong> item found', 'tainacan'),
    'info_iframe_dimensions' => __('The dimension values will be passed to the iframe, but it\'s rendering may change according to the theme display settings. It is still important to keep an approximate aspect ratio to the inner content.', 'tainacan'),
    'info_metadata_mapper_helper' => __('Select the corresponding metadata so they can be exposed according to the mapper', 'tainacan'),
    'info_default_orderby' => __('These settings only affect the initial state of the items sorting. After changed, the value used will be the latest selected by the user.', 'tainacan'),
    'info_collection_thumbnail_and_header' => __('The thumbnail is a squared image that will represent the collection in listings. The header image is a complementary, decorative image that may or not be displayed by your theme in the items list. Keep in mind that it might be cropped.', 'tainacan'),
    'info_preset_collections' => __('Use mappers or standards as pre configuration', 'tainacan'),
    'info_create_collection_from_mapper' => __('Have the metadata preset by an installed mapper, such as Dublin core, then set the rest manually.', 'tainacan'),
    'info_create_collection_from_preset' => __('Have metadata, taxonomies, terms and related collections preset according to a standard.', 'tainacan'),
    'info_use_search_separated_words' => __('You may wrap the words with quotes to group them.', 'tainacan'),
    /* translators: At the end of this sentence there will be a link for the advanced search */
    'info_for_more_metadata_search_options_use' => __('For more options of metadata search, use the', 'tainacan'),
    'info_you_searched_for_%s' => __('You searched for %s', 'tainacan'),
    'info_try_enabling_search_by_word' => __('Try enabling the search by words.', 'tainacan'),
    'info_try_disabling_search_by_word' => __('Try disabling the search by words, to search for the complete phrase.', 'tainacan'),
    'info_details_about_search_by_word' => __('They may be located on different metadata and order, but you will still be able to use quotes to group them.', 'tainacan'),
    'info_item_submission_draft_status' => __('Warning: draft items may be submitted even without filling all required metadata.', 'tainacan'),
    'info_empty_geocoordinate_metadata_list' => __('No geocoordinate metadata was found. Try enabling it in the "displayed metadata" dropdown.', 'tainacan'),
    'info_non_located_item' => __('This item does not have any location based on this metadata.', 'tainacan'),
    'info_metadata_section_hidden_conditional' => __('Section disabled due to a conditional metadatum value.', 'tainacan'),
    'info_create_select_metadatum_for_conditional_section' => __('For configuring conditional sections, first create one select type metadatum to use its values as rules for displaing this section. The metadatum should be inside another metadatum section.', 'tainacan'),
    'info_taxonomy_terms_list' => __('The list of terms that are managed by this taxonomy. They will be used as values for the taxonomy metadata.', 'tainacan'),
    'info_no_child_term_of_%s_found' => __('No child term of %s was found.', 'tainacan'),
    'info_warning_term_with_child' => __('This term has child terms. Per default, if you remove a parent term, its child terms will be moved one level up in the hierarchy.', 'tainacan'),
    'info_warning_selected_term_delete' => __('Do you really want to permanently delete the selected term?', 'tainacan'),
    'info_warning_some_terms_with_child' => __('When removing multiple terms at once, it is possible that some of the terms contain child terms. Per default, if you remove a parent term, its child terms will be moved one level up in the hierarchy.', 'tainacan'),
    'info_%s_terms_created' => __('%s terms created with success.', 'tainacan'),
    'info_terms_creation_failed_due_to_value_%s' => __('Terms creation failed due to value: %s.', 'tainacan'),
    'info_terms_creation_failed_due_to_values_%s' => __('Terms creation failed due to values: %s.', 'tainacan'),
    /* Activity actions */
    'action_update-metadata-value' => __('Item Metadata Value Updates', 'tainacan'),
    'action_update' => __('General Updates', 'tainacan'),
    'action_create' => __('General Creations', 'tainacan'),
    'action_update-metadata-order' => __('Metadata Order Updates', 'tainacan'),
    'action_trash' => __('Trashing', 'tainacan'),
    'action_new-attachment' => __('Addition of Attachments', 'tainacan'),
    'action_update-filters-order' => __('Filter Order Updates', 'tainacan'),
    'action_update-document' => __('Document Updates', 'tainacan'),
    'action_delete' => __('General Deletions', 'tainacan'),
    'action_delete-attachment' => __('Deletion of Attachments', 'tainacan'),
    'action_update-thumbnail' => __('Thumbnail Updates', 'tainacan'),
    'action_others' => __('Other Actions', 'tainacan'),
    // Datepicker months
    'datepicker_month_january' => __('January', 'tainacan'),
    'datepicker_month_february' => __('February', 'tainacan'),
    'datepicker_month_march' => __('March', 'tainacan'),
    'datepicker_month_april' => __('April', 'tainacan'),
    'datepicker_month_may' => __('May', 'tainacan'),
    'datepicker_month_june' => __('June', 'tainacan'),
    'datepicker_month_july' => __('July', 'tainacan'),
    'datepicker_month_august' => __('August', 'tainacan'),
    'datepicker_month_september' => __('September', 'tainacan'),
    'datepicker_month_october' => __('October', 'tainacan'),
    'datepicker_month_november' => __('November', 'tainacan'),
    'datepicker_month_december' => __('December', 'tainacan'),
    // Datepicker week days
    /* translators: This refers to the short label that will appear on datepickers for Sunday */
    'datepicker_short_sunday' => __('Su', 'tainacan'),
    /* translators: This refers to the short label that will appear on datepickers for Monday */
    'datepicker_short_monday' => __('M', 'tainacan'),
    /* translators: This refers to the short label that will appear on datepickers for Tuesday */
    'datepicker_short_tuesday' => __('Tu', 'tainacan'),
    /* translators: This refers to the short label that will appear on datepickers for Wednesday */
    'datepicker_short_wednesday' => __('W', 'tainacan'),
    /* translators: This refers to the short label that will appear on datepickers for Thursday */
    'datepicker_short_thursday' => __('Th', 'tainacan'),
    /* translators: This refers to the short label that will appear on datepickers for Friday */
    'datepicker_short_friday' => __('F', 'tainacan'),
    /* translators: This refers to the short label that will appear on datepickers for Saturday */
    'datepicker_short_saturday' => __('Sa', 'tainacan'),
    /* Errors displayed on the interface bottom notifications */
    'error_connectivity_label' => __('Connectivity issue', 'tainacan'),
    'error_connectivity' => __('It is possible that you are disconnected or the server is not working properly.', 'tainacan'),
    'error_400' => __('Some request went wrong due to invalid syntax.', 'tainacan'),
    'error_401' => __('You must authenticate to access this information. Try logging in again on the WordPress Admin panel.', 'tainacan'),
    'error_403' => __('It seems that you are not allowed to access this content.', 'tainacan'),
    'error_404' => __('A wrong request was made or this information does not exist.', 'tainacan'),
    'error_408' => __('This request exceeded the server expected timeout.', 'tainacan'),
    'error_500' => __('An internal server error occurred. Try contacting the administrator.', 'tainacan'),
    'error_502' => __('A communication between servers went wrong. Try contacting the administrator.', 'tainacan'),
    'error_503' => __('Some service is not available now. Try again later and if it persists, contact the administrator.', 'tainacan'),
    'error_504' => __('The server communication exceeded the expected timeout. Try contacting the administrator.', 'tainacan'),
    'error_511' => __('You must authenticate to get access this information. Try logging in again on the WordPress Admin panel.', 'tainacan'),
    'error_other' => __('Something went wrong here. You may want to try again or contact the Administrator.', 'tainacan'),
    'error_connectivity_detail' => __('The WordPress Heartbit API sends requests periodically to the server to update some information. The latest request failed for some reason. It can be the case of a lost connection or bad communication between the browser and the server.', 'tainacan'),
    'error_400_detail' => __('The server could not understand the request due to invalid syntax. This is possibly an issue with Tainacan and should be reported to its developers.', 'tainacan'),
    'error_401_detail' => __('You must authenticate to get access this information. Even if you have access to the Tainacan admin panel, it may be the case that your session cookies were lost. Try reloading the page or logging again on the WordPress Admin panel.', 'tainacan'),
    'error_403_detail' => __('It seems that you are not allowed to access this content. Your user might have a role with insufficient capabilities. If that is not the case, check if you are correctly logged in on the WordPress Admin panel.', 'tainacan'),
    'error_404_detail' => __('A wrong request was made or this information does not exist. This can either mean some connection error occurred just now or the content that you are looking for was requested wrongly. In that case, it might be worth to report the issue to Tainacan developers.', 'tainacan'),
    'error_408_detail' => __('This request exceeded the server expected timeout. This can be caused by a slow connection or connectivity issues. If it is not something noticeable in other pages, try contacting the administrator.', 'tainacan'),
    'error_500_detail' => __('An internal server error occurred. This error can occur for a variety of reasons, and a more detailed description can be found on the server logs. Try contacting the administrator and provide information of the moment when the error occurred.', 'tainacan'),
    'error_502_detail' => __('This error response means that the server, while working as a gateway to get a response needed to handle the request, got an invalid response. Try contacting the administrator.', 'tainacan'),
    'error_503_detail' => __('The server might be unavailable due to multiple access, some instability or connection issues. Try again later and if it persists, contact the administrator.', 'tainacan'),
    'error_504_detail' => __('This error response is given when the server is acting as a gateway and cannot get a response in time. Try contacting the administrator.', 'tainacan'),
    'error_511_detail' => __('You must authenticate to get access this information. Even if you have access to the Tainacan admin panel, your session cookies might have gotten lost. Try reloading the page or logging in again on the WordPress Admin panel.', 'tainacan'),
    'error_other_detail' => __('Something went wrong here. Please try again or contact the administrator.', 'tainacan'),
]` |  | 

Source: [/src/tainacan/src/views/tainacan-i18n.php](src/views/tainacan-i18n.php), [line 3](src/views/tainacan-i18n.php#L3-L1118)

### `tainacan-admin-extra-request-options`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$admin_request_options` |  | 

Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 381](src/views/class-tainacan-admin.php#L381-L381)

### `set_tainacan_admin_options`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$_GET` |  | 

Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 401](src/views/class-tainacan-admin.php#L401-L401)

### `tainacan-admin-ui-options`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$_GET` |  | 

Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 402](src/views/class-tainacan-admin.php#L402-L402)

### `editable_slug`

*This filter is documented in wp-admin/edit-tag-form.php*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$uri` |  | 
`$post` |  | 

Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 486](src/views/class-tainacan-admin.php#L486-L487)

### `editable_slug`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$post->post_name` |  | 
`$post` |  | 

Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 494](src/views/class-tainacan-admin.php#L494-L494)

### `tainacan-admin-hooks-positions`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['begin-left', 'begin-right', 'end-left', 'end-right']` |  | 

Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-admin-hooks.php](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php), [line 30](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php#L30-L30)

### `tainacan-admin-hooks-contexts`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['collection', 'metadatum', 'item', 'taxonomy', 'term', 'filter', 'role', 'metadataSection']` |  | 

Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-admin-hooks.php](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php), [line 34](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php#L34-L34)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/core-description/class-tainacan-core-description.php](src/views/admin/components/metadata-types/core-description/class-tainacan-core-description.php), [line 62](src/views/admin/components/metadata-types/core-description/class-tainacan-core-description.php#L62-L62)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/control/class-tainacan-control.php](src/views/admin/components/metadata-types/control/class-tainacan-control.php), [line 104](src/views/admin/components/metadata-types/control/class-tainacan-control.php#L104-L104)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/selectbox/class-tainacan-selectbox.php](src/views/admin/components/metadata-types/selectbox/class-tainacan-selectbox.php), [line 54](src/views/admin/components/metadata-types/selectbox/class-tainacan-selectbox.php#L54-L54)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/relationship/class-tainacan-relationship.php](src/views/admin/components/metadata-types/relationship/class-tainacan-relationship.php), [line 159](src/views/admin/components/metadata-types/relationship/class-tainacan-relationship.php#L159-L159)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/user/class-tainacan-user.php](src/views/admin/components/metadata-types/user/class-tainacan-user.php), [line 139](src/views/admin/components/metadata-types/user/class-tainacan-user.php#L139-L139)

### `tainacan-item-get-author-name`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$name` |  | 
`$this` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/user/class-tainacan-user.php](src/views/admin/components/metadata-types/user/class-tainacan-user.php), [line 162](src/views/admin/components/metadata-types/user/class-tainacan-user.php#L162-L162)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/core-title/class-tainacan-core-title.php](src/views/admin/components/metadata-types/core-title/class-tainacan-core-title.php), [line 74](src/views/admin/components/metadata-types/core-title/class-tainacan-core-title.php#L74-L74)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php](src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php), [line 226](src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php#L226-L226)

### `tainacan-terms-hierarchy-html-separator`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`'<span class="hierarchy-separator"> > </span>'` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php](src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php), [line 405](src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php#L405-L405)

### `tainacan-status-require-validation`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`['publish', 'future', 'private']` |  | 

Source: [/src/tainacan/src/views/admin/components/filter-types/numeric/class-tainacan-numeric.php](src/views/admin/components/filter-types/numeric/class-tainacan-numeric.php), [line 89](src/views/admin/components/filter-types/numeric/class-tainacan-numeric.php#L89-L89)


<p align="center"><a href="https://github.com/pronamic/wp-documentor"><img src="https://cdn.jsdelivr.net/gh/pronamic/wp-documentor@main/logos/pronamic-wp-documentor.svgo-min.svg" alt="Pronamic WordPress Documentor" width="32" height="32"></a><br><em>Generated by <a href="https://github.com/pronamic/wp-documentor">Pronamic WordPress Documentor</a> <code>1.2.0</code></em><p>

