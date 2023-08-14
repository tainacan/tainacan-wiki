***

# Item

Represents the Entity Item



* Full name: `\Tainacan\Entities\Item`
* Parent class: [`\Tainacan\Entities\Entity`](./Entity.md)



## Properties


### terms



```php
protected $terms
```






***

### diplay_name



```php
protected $diplay_name
```






***

### full



```php
protected $full
```






***

### _thumbnail_id



```php
protected $_thumbnail_id
```






***

### modification_date



```php
protected $modification_date
```






***

### creation_date



```php
protected $creation_date
```






***

### author_id



```php
protected $author_id
```






***

### url



```php
protected $url
```






***

### id



```php
protected $id
```






***

### title



```php
protected $title
```






***

### order



```php
protected $order
```






***

### parent



```php
protected $parent
```






***

### decription



```php
protected $decription
```






***

### document_type



```php
protected $document_type
```






***

### document



```php
protected $document
```






***

### document_options



```php
protected $document_options
```






***

### collection_id



```php
protected $collection_id
```






***

### repository

The repository of that entity

```php
protected string $repository
```





**See Also:**

* \Tainacan\Entities\Entity::repository - 

***

## Methods


### __construct

Create an instance of Entity

```php
public __construct(mixed $which): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$which` | **mixed** |  |




***

### __toString



```php
public __toString(): mixed
```











***

### _toArray



```php
public _toArray(): mixed
```











***

### set_terms



```php
public set_terms( $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **** |  |




***

### get_terms



```php
public get_terms(): mixed|null
```











***

### get_attachments



```php
public get_attachments(null $exclude = null): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$exclude` | **null** |  |




***

### get_author_name



```php
public get_author_name(): string
```











***

### get_thumbnail

Gets the thumbnail list of files

```php
public get_thumbnail(): array
```

Each size is represented as an array in the format returned by








**See Also:**

* https://developer.wordpress.org/reference/functions/wp_get_attachment_image_src/ - 

***

### get_thumbnail_blurhash



```php
public get_thumbnail_blurhash(): mixed
```











***

### set__thumbnail_id



```php
public set__thumbnail_id( $id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$id` | **** |  |




***

### get__thumbnail_id



```php
public get__thumbnail_id(): int|string
```











***

### get_modification_date



```php
public get_modification_date(): mixed|null
```











***

### get_creation_date



```php
public get_creation_date(): mixed|null
```











***

### get_author_id



```php
public get_author_id(): mixed|null
```











***

### get_url



```php
public get_url(): mixed|null
```











***

### get_id

Return the item ID

```php
public get_id(): int
```











***

### get_title

Return the item title

```php
public get_title(): string
```











***

### get_order

Return the item order type

```php
public get_order(): string
```











***

### get_parent

Return the parent ID

```php
public get_parent(): int
```











***

### get_description

Return the item description

```php
public get_description(): string
```











***

### get_document_type

Return the item document type

```php
public get_document_type(): string
```











***

### get_document_options

Return the item document options

```php
public get_document_options(): string
```











***

### get_document_mimetype

Return the document mimetype

```php
public get_document_mimetype(): string
```











***

### get_document

Return the item document

```php
public get_document(): string
```











***

### get_db_identifier

Get entity DB identifier

```php
public get_db_identifier(): string
```










**See Also:**

* \Tainacan\Entities\Entity::get_db_identifier() - 

***

### get_capabilities

Use especial Item capabilities
{@inheritDoc}

```php
public get_capabilities(): object
```









**Return Value:**

Object with all the capabilities as member variables.


**See Also:**

* \Tainacan\Entities\Entity::get_capabilities() - 

***

### get_comment_status

Checks if comments are allowed for the current Collection.

```php
public get_comment_status(): string
```









**Return Value:**

"open"|"closed"



***

### set_title

Define the title

```php
public set_title(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_order

Define the order type

```php
public set_order(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_creation_date

Define the creation date

```php
public set_creation_date(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_parent

Define the parent ID

```php
public set_parent(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_document_type

Define the document type

```php
public set_document_type(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_document_options

Define the document options

```php
public set_document_options(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_document

Define the document

```php
public set_document(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_description

Define the description

```php
public set_description(mixed $value): void
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### get_metadata

Return a List of ItemMetadata objects

```php
public get_metadata(mixed $args = []): array
```

It will return all metadata associeated with the collection this item is part of.

If the item already has a value for any of the metadata, it will be available.






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |


**Return Value:**

Array of ItemMetadata objects



***

### set_cap

set meta cap object

```php
protected set_cap(): mixed
```











***

### set_comment_status

Sets if comments are allowed for the current Item.

```php
public set_comment_status( $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **** | string &quot;open&quot;&amp;#124;&quot;closed&quot; |




***

### validate

Validate the class values/properties, to be used before insert/save/update

```php
public validate(): bool
```










**See Also:**

* \Tainacan\Entities\Entity::validate() - 

***

### validate_core_metadata

{@inheritDoc}

```php
public validate_core_metadata(): mixed
```










**See Also:**

* \Tainacan\Entities\Entity::validate() - 

***

### _toHtml



```php
public _toHtml(): mixed
```











***

### get_metadata_as_html

Return the item metadata as a HTML string to be used as output.

```php
public get_metadata_as_html(array|string $args = array()): string
```

Each metadata is a label with the metadatum name and the value.

If an ID, a slug or a Tainacan\Entities\Metadatum object is passed in the 'metadata' argument, it returns only one metadata, otherwise
it returns all metadata






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array&#124;string** | {<br />    Optional. Array or string of arguments.<br /><br />   @type mixed $metadataMetadatum object, ID or slug to retrieve only one metadatum. empty returns all metadata<br /><br />    @type array $metadata__inArray of metadata IDs or Slugs to be retrieved. Default none<br /><br />    @type array $metadata__not_inArray of metadata IDs (slugs not accepted) to excluded. Default none<br /><br />    @type bool $exclude_titleExclude the Core Title Metadata from result. Default false<br /><br />    @type bool $exclude_descriptionExclude the Core Description Metadata from result. Default false<br /><br />    @type bool $exclude_coreExclude Core Metadata (title and description) from result. Default false<br /><br />    @type bool        $hide_empty                Wether to hide or not metadata the item has no value to<br />                                                 Default: true<br />    @type string      $empty_value_message       Message string to display if $hide_empty is false and there is not metadata value.<br />                                                 Default: &#039;&#039;<br />    @type bool        $display_slug_as_class     Show metadata slug as a class in the div before the metadata block<br />                                                 Default: false<br />    @type string      $before                    String to be added before each metadata block<br />                                                 Default &#039;&lt;div class=&quot;metadata-type-$type&quot;&gt;&#039; where $type is the metadata type slug<br />    @type string      $after                String to be added after each metadata block<br />                                                 Default &#039;&lt;/div&gt;&#039;<br />    @type string      $before_title              String to be added before each metadata title<br />                                                 Default &#039;&lt;h3&gt;&#039;<br />    @type string      $after_title               String to be added after each metadata title<br />                                                 Default &#039;&lt;/h3&gt;&#039;<br />    @type string      $before_value              String to be added before each metadata value<br />                                                 Default &#039;&lt;p&gt;&#039;<br />    @type string      $after_value               String to be added after each metadata value<br />                                                 Default &#039;&lt;/p&gt;&#039;<br />} |


**Return Value:**

The HTML output



***

### get_item_metadatum_as_html

Return a single item metadata as a HTML string to be used as output.

```php
public get_item_metadatum_as_html(object $item_metadatum, array|string $args = array(), mixed $metadatum_index = null): string
```

Each metadata is a label with the metadatum name and the value.

This function expects a $item_metadatum object. For a more generic approach, check the get_metadata_as_html function






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$item_metadatum` | **object** | The Item Metadatum object |
| `$args` | **array&#124;string** | {<br />    Optional. Array or string of arguments.<br /><br />    @type bool        $hide_empty                Wether to hide or not metadata the item has no value to<br />                                                 Default: true<br />    @type string      $empty_value_message       Message string to display if $hide_empty is false and there is not metadata value.<br />                                                 Default: &#039;&#039;<br />    @type bool        $display_slug_as_class     Show metadata slug as a class in the div before the metadata block<br />                                                 Default: false<br />    @type string      $before                    String to be added before each metadata block<br />                                                 Default &#039;&lt;div class=&quot;metadata-type-$type&quot;&gt;&#039; where $type is the metadata type slug<br />    @type string      $after                String to be added after each metadata block<br />                                                 Default &#039;&lt;/div&gt;&#039;<br />    @type string      $before_title              String to be added before each metadata title<br />                                                 Default &#039;&lt;h3&gt;&#039;<br />    @type string      $after_title               String to be added after each metadata title<br />                                                 Default &#039;&lt;/h3&gt;&#039;<br />    @type string      $before_value              String to be added before each metadata value<br />                                                 Default &#039;&lt;p&gt;&#039;<br />    @type string      $after_value               String to be added after each metadata value<br />                                                 Default &#039;&lt;/p&gt;&#039;<br />} |
| `$metadatum_index` | **mixed** |  |


**Return Value:**

The HTML output



***

### get_document_as_html

Gets the document as a html. May be a text, link, iframe, image, audio.

```php
public get_document_as_html(mixed $img_size = &#039;large&#039;): mixed
```

..






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$img_size` | **mixed** |  |




***

### get_attachment_as_html

Gets the attachment as a html. May be an iframe, image, audio.

```php
public get_attachment_as_html(mixed $attachment, mixed $img_size = &#039;large&#039;): mixed
```

..






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$attachment` | **mixed** |  |
| `$img_size` | **mixed** |  |




***

### get_edit_url

Gets the url to the edit page for this item

```php
public get_edit_url(): mixed
```











***

### get_document_download_url

Gets the Document url of this item

```php
public get_document_download_url(): mixed
```











***

### get_related_items

Return related items withs the item

```php
public get_related_items(mixed $args = []): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |




***

### get_metadata_sections_as_html

Return the item metadata sections as a HTML string to be used as output.

```php
public get_metadata_sections_as_html(array|string $args = array()): string
```

Each metadata section is a label with the list of its metadata name and value.

If an ID, a slug or a Tainacan\Entities\Metadata_Section object is passed in the 'metadata_section' argument, it returns only one metadata section, otherwise
it returns all metadata section






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array&#124;string** | {<br />    Optional. Array or string of arguments.<br /><br />   @type mixed $metadata_sectionMetadatum object, ID or slug to retrieve only one metadatum. empty returns all metadata_sections<br /><br />    @type array $metadata_sections__inArray of metadata_sections IDs or Slugs to be retrieved. Default none<br /><br />    @type array $metadata_sections__not_inArray of metadata_sections IDs (slugs not accepted) to excluded. Default none<br /><br />    @type bool $hide_nameDo not display the Metadata Section name. Default false<br /><br />    @type bool $hide_descriptionDo not display the Metadata Section description. Default true<br /><br />    @type bool        $hide_empty                Wether to hide or not metadata sections if there are no metadata list or they are empty<br />                                                 Default: true<br />    @type string      $empty_metadata_list_message Message string to display if $hide_empty is false and there is not metadata section metadata list.<br />                                                 Default: &#039;&#039;<br />    @type string      $before                    String to be added before each metadata section block<br />                                                 Default &#039;&lt;section class=&quot;metadata-section-slug-$slug&quot; id=&quot;$id&quot;&gt;&#039;<br />    @type string      $after                String to be added after each metadata section block<br />                                                 Default &#039;&lt;/section&gt;&#039;<br />    @type string      $before_name              String to be added before each metadata section name<br />                                                 Default &#039;&lt;h2 id=&quot;metadata-section-$slug&quot;&gt;&#039;<br />    @type string      $after_name               String to be added after each metadata section name<br />                                                 Default &#039;&lt;/h2&gt;&#039;<br />   @type string      $before_description            String to be added before each metadata section description<br />                                                 Default &#039;&lt;p&gt;&#039;<br />    @type string      $after_description             String to be added after each metadata section description<br />                                                 Default &#039;&lt;/p&gt;&#039;<br />    @type string      $before_metadata_list      String to be added before each metadata section inner metadata list<br />                                                 Default &#039;&lt;div class=&quot;metadata-section__metadata-list&quot; aria-labelledby=&quot;metadata-section-$slug&quot;&gt;&#039;<br />    @type string      $after_metadata_list       String to be added after each metadata section inner metadata list<br />                                                 Default &#039;&lt;/div&gt;&#039;<br />   @type array$metadata_list_argsArguments to be passed to the get_metadata_as_html function when calling section metadata<br />} |


**Return Value:**

The HTML output



***

### get_metadata_section_as_html

Return a single item metadata section as a HTML string to be used as output.

```php
public get_metadata_section_as_html(\Tainacan\Entities\Metadata_Section $metadata_section, array|string $args = array(), int $section_index = null): string
```

A metadata section is a label with the list of its metadata name and value.

This function expects a $metadata_section object. For a more generic approach, check the get_metadata_sections_as_html function






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$metadata_section` | **\Tainacan\Entities\Metadata_Section** | The Metadata Section object |
| `$args` | **array&#124;string** | {<br />    Optional. Array or string of arguments.<br /><br />    @type bool $hide_nameDo not display the Metadata Section name. Default false<br /><br />    @type bool $hide_descriptionDo not display the Metadata Section description. Default true<br /><br />    @type bool        $hide_empty                Wether to hide or not metadata sections if there are no metadata list or they are empty<br />                                                 Default: true<br />    @type string      $empty_metadata_list_message Message string to display if $hide_empty is false and there is not metadata section metadata list.<br />                                                 Default: &#039;&#039;<br />    @type string      $before                    String to be added before each metadata section block<br />                                                 Default &#039;&lt;section class=&quot;metadata-section-slug-$slug&quot; id=&quot;$id&quot;&gt;&#039;<br />    @type string      $after                String to be added after each metadata section block<br />                                                 Default &#039;&lt;/section&gt;&#039;<br />    @type string      $before_name              String to be added before each metadata section name<br />                                                 Default &#039;&lt;h2 id=&quot;metadata-section-$slug&quot;&gt;&#039;<br />    @type string      $after_name               String to be added after each metadata section name<br />                                                 Default &#039;&lt;/h2&gt;&#039;<br />   @type string      $before_description            String to be added before each metadata section description<br />                                                 Default &#039;&lt;p&gt;&#039;<br />    @type string      $after_description             String to be added after each metadata section description<br />                                                 Default &#039;&lt;/p&gt;&#039;<br />    @type string      $before_metadata_list      String to be added before each metadata section inner metadata list<br />                                                 Default &#039;&lt;div class=&quot;metadata-section__metadata-list&quot; aria-labelledby=&quot;metadata-section-$slug&quot;&gt;&#039;<br />    @type string      $after_metadata_list       String to be added after each metadata section inner metadata list<br />                                                 Default &#039;&lt;/div&gt;&#039;<br /><br />   @type array$metadata_list_argsArguments to be passed to the get_metadata_as_html function when calling section metadata<br />} |
| `$section_index` | **int** | The Metadata Section index, if passed from an array |


**Return Value:**

The HTML output



***


## Inherited methods


### get_collection_id



```php
public get_collection_id(): int
```









**Return Value:**

collection item ID



***

### get_collection

Return Collection from relation

```php
public get_collection(): \Tainacan\Entities\Collection|null
```









**Return Value:**

Return Collection or null on errors



***

### set_collection_id

Set collection ID

```php
public set_collection_id(int $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **int** |  |




***

### set_collection

set collection object and id

```php
public set_collection(\Tainacan\Entities\Collection $collection): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$collection` | **\Tainacan\Entities\Collection** |  |




***

### __construct

Create an instance of Entity

```php
public __construct(mixed $which): mixed
```

If ID or WP Post is passed, it retrieves the object from the database

Attention: If the ID or Post provided do not match the Entity post type, an Exception will be thrown






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$which` | **mixed** |  |




***

### get_repository



```php
public get_repository(): mixed
```











***

### get_date_i18n



```php
public get_date_i18n( $date): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$date` | **** |  |




***

### get_mapped_property

return the value for a mapped property

```php
public get_mapped_property(string $prop): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$prop` | **string** | id of property |


**Return Value:**

property value



***

### set_mapped_property

set the value of a mapped property

```php
protected set_mapped_property(string $prop, mixed $value): mixed
```

This is a protected method. If you want to set an entity prop
using the prop name dynamically, use the set() method






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$prop` | **string** | id of the property |
| `$value` | **mixed** | the value to be setted |




***

### set

set the value property

```php
public set(string $prop, mixed $value): null|mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$prop` | **string** | id of the property |
| `$value` | **mixed** | the value to be setted |


**Return Value:**

Null on failure, the value that was set on success



***

### get

get the value property

```php
public get(string $prop): null|mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$prop` | **string** | id of the property |


**Return Value:**

Null on failure, the value that was set on success



***

### set_status

set the status of the entity

```php
public set_status(string $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **string** |  |




***

### validate

Validate the class values/properties, to be used before insert/save/update

```php
public validate(): bool
```

If Entity is not valid, validation error messages are available via get_errors() method









***

### validate_prop

Validate a single property

```php
public validate_prop(string $prop): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$prop` | **string** | id of the property to be validate |




***

### get_errors



```php
public get_errors(): mixed
```











***

### get_post_type



```php
public static get_post_type(): mixed
```



* This method is **static**.







***

### get_capability_type



```php
public static get_capability_type(): mixed
```



* This method is **static**.







***

### get_status



```php
public get_status(): mixed
```











***

### get_db_identifier

Get entity DB identifier

```php
public get_db_identifier(): string
```

This identifier is used to register the entity on database, ex.: post_type









***

### get_id

Get the entity ID

```php
public get_id(): int
```











***

### add_error



```php
public add_error(mixed $type, mixed $message): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$type` | **mixed** |  |
| `$message` | **mixed** |  |




***

### reset_errors

Clear the errors array

```php
public reset_errors(): mixed
```











***

### get_validated



```php
public get_validated(): mixed
```











***

### set_validated



```php
protected set_validated(mixed $value): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$value` | **mixed** |  |




***

### set_as_valid



```php
protected set_as_valid(): mixed
```











***

### _toArray



```php
public _toArray(): mixed
```











***

### _toJson



```php
public _toJson(): mixed
```











***

### can_read

Return if user can read this entity

```php
public can_read(int|\WP_User $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$user` | **int&#124;\WP_User** |  |




***

### can_edit

Return if user can edit this entity

```php
public can_edit(int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$user` | **int&#124;\WP_User&#124;null** | the user for capability check, null for the current user |




***

### can_delete

Return if user can delete this entity

```php
public can_delete(int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$user` | **int&#124;\WP_User&#124;null** | the user for capability check, null for the current user |




***

### can_publish

Return if user can publish this entity

```php
public can_publish(int|\WP_User|null $user = null): bool
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$user` | **int&#124;\WP_User&#124;null** | the user for capability check, null for the current user |




***

### get_capabilities

Get the capabilities list for the post type of the entity

```php
public get_capabilities(): object
```









**Return Value:**

Object with all the capabilities as member variables.



***

### diff

Compare this entity props with self old values or with $which other entity

```php
public diff(\Tainacan\Entities\Entity|int|\WP_Post $which): array
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$which` | **\Tainacan\Entities\Entity&#124;int&#124;\WP_Post** | default ($which = 0) to self compare with stored entity |




***


***
> Automatically generated from source code comments on 2023-07-25 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
