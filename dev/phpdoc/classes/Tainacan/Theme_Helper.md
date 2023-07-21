***

# Theme_Helper





* Full name: `\Tainacan\Theme_Helper`



## Properties


### instance



```php
private static $instance
```



* This property is **static**.


***

### visiting_collection_cover



```php
public $visiting_collection_cover
```






***

### registered_view_modes

Stores view modes available to be used by the theme

```php
private $registered_view_modes
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
private __construct(): mixed
```











***

### is_post_an_item



```php
public is_post_an_item(\WP_Post $post): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$post` | **\WP_Post** |  |




***

### is_post_a_tainacan_taxonomy_postype



```php
public is_post_a_tainacan_taxonomy_postype(\WP_Post $post): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$post` | **\WP_Post** |  |




***

### is_taxonomy_a_tainacan_tax



```php
public is_taxonomy_a_tainacan_tax(mixed $tax_slug): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$tax_slug` | **mixed** |  |




***

### is_term_a_tainacan_term



```php
public is_term_a_tainacan_term(\WP_Term $term): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$term` | **\WP_Term** |  |




***

### filter_archive_title



```php
public filter_archive_title(mixed $title): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$title` | **mixed** |  |




***

### the_content_filter_item

Filters the post content to create Tainacan default
item single, including its metadata sections and the
item media gallery.

```php
public the_content_filter_item(mixed $content): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$content` | **mixed** |  |


**Return Value:**

content tweaked to the item features



***

### the_content_filter_taxonomy

Filters the post content to create Tainacan default
taxonomy single, which works as a "terms archive"

```php
public the_content_filter_taxonomy(mixed $content): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$content` | **mixed** |  |


**Return Value:**

content tweaked to show the taxonomy terms list



***

### permalink_filter

Filters the permalink for posts to:

```php
public permalink_filter(mixed $permalink, mixed $post, mixed $leavename): string
```

* Replace Collection single permalink with the link to the post type archive for items of that collection






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$permalink` | **mixed** |  |
| `$post` | **mixed** |  |
| `$leavename` | **mixed** |  |


**Return Value:**

new permalink



***

### tax_archive_pre_get_posts



```php
public tax_archive_pre_get_posts(mixed $wp_query): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$wp_query` | **mixed** |  |




***

### collection_single_redirect



```php
public collection_single_redirect(): mixed
```











***

### item_template_hierarchy

Allows themes to create a tainacan/single-items.php file which will
be used to represent all items single page.

```php
public item_template_hierarchy(mixed $templates): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$templates` | **mixed** |  |




***

### collection_items_template_hierarchy

Allows themes to create a tainacan/archive-items.php file which will
be used to represent all collection items archive page (the list of items
of a collection).

```php
public collection_items_template_hierarchy(mixed $templates): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$templates` | **mixed** |  |




***

### taxonomy_term_items_template_hierarchy

Allows themes to create a tainacan/taxonomy-items.php file which will
be used to represent all taxonomy term items archive page (the list of
items of a taxonomy term).

```php
public taxonomy_term_items_template_hierarchy(mixed $templates): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$templates` | **mixed** |  |




***

### taxonomy_terms_template_hierarchy

Allows themes to create a tainacan/archive-terms.php file which will
be used to represent all taxonomies single (the list or terms of a taxonomy)

```php
public taxonomy_terms_template_hierarchy(mixed $templates): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$templates` | **mixed** |  |




***

### header_image



```php
public header_image(mixed $image): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$image` | **mixed** |  |




***

### item_submission_shortcode



```php
public item_submission_shortcode(mixed $args): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |




***

### search_shortcode

Returns the div used by Vue to render the Items List with a powerful faceted search

```php
public search_shortcode(array $args): string
```

The items list bellong to a collection, to the whole repository or a taxonomy term, according to where
it is used on the loop, or to given params

The following params are all optional for customizing the rendered vue component






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | {<br />Optional. Array of arguments.<br />@type string $collection_idCollection ID for a collection items list<br />@type string $term_idTerm ID for a taxonomy term items list<br />@type bool $hide_filtersCompletely hide filter sidebar or modal<br />@type bool $hide_hide_filters_buttonHides the button resonsible for collpasing filters sidebar on desktop<br />@type bool $hide_searchHides the complete search bar, including advanced search link<br />@type bool $hide_advanced_searchHides only the advanced search link<br />@type bool$hide_displayed_metadata_dropdownHides the &quot;Displayed metadata&quot; dropdown even if the current view modes allows it<br />@type bool$hide_sorting_areaCompletely hides all sorting controls<br />@type bool $hide_sort_by_buttonHides the button where user can select the metadata to sort by items (keeps the sort direction)<br />@type bool $hide_items_thumbnailForces the thumbnail to be hiden on every listing. This setting also disables view modes that contain the &#039;requires-thumbnail&#039; attr. By default is false or inherited from collection setting<br />@type bool$hide_exposers_buttonHides the &quot;View as...&quot; button, a.k.a. Exposers modal<br />@type bool $hide_items_per_page_buttonHides the button for selecting amount of items loaded per page<br />@type bool $hide_go_to_page_buttonHides the button for skiping to a specific page<br />@type bool$hide_pagination_areaCompletely hides pagination controls<br />@type int$default_items_per_pageDefault number of items per page loaded<br />@type bool $show_filters_button_inside_search_controlDisplay the &quot;hide filters&quot; button inside of the search control instead of floating<br />@type bool $start_with_filters_hiddenLoads the filters list hidden from start<br />@type bool $filters_as_modalDisplay the filters as a modal instead of a collapsible region on desktop<br />@type bool $show_inline_view_mode_optionsDisplay view modes as inline icon buttons instead of the dropdown<br />@type bool $show_fullscreen_with_view_modesLists fullscreen viewmodes alongside with other view modes istead of separatelly<br />@type string $default_view_modeThe default view mode<br />@type bool$is_forced_view_modeIgnores user prefs to always render the choosen default view mode<br />@type string[] $enabled_view_modesThe list os enable view modes to display |


**Return Value:**

The HTML div to be used for rendering the items list vue component



***

### get_tainacan_items_list



```php
public get_tainacan_items_list(mixed $args, mixed $force_enqueue = false): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |
| `$force_enqueue` | **mixed** |  |




***

### get_items_list_slug



```php
public get_items_list_slug(): mixed
```











***

### rewrite_rules



```php
public rewrite_rules(mixed& $wp_rewrite): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$wp_rewrite` | **mixed** |  |




***

### rewrite_rules_query_vars



```php
public rewrite_rules_query_vars(mixed $public_query_vars): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$public_query_vars` | **mixed** |  |




***

### rewrite_rule_template_include



```php
public rewrite_rule_template_include(mixed $template): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$template` | **mixed** |  |




***

### archive_repository_pre_get_posts



```php
public archive_repository_pre_get_posts(mixed $wp_query): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$wp_query` | **mixed** |  |




***

### register_view_mode

Register a new View Mode

```php
public register_view_mode(string $slug, array|string $args = []): void
```

View Modes are used to display items in the faceted search when browsing a collection using
the current active theme. It can be a php/html template or a web component.

Collection managers can choose from registered view modes which will be the default mode and what others modes will be available
for the visitors to choose from for each collection






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$slug` | **string** | a unique slug for the view mode |
| `$args` | **array&#124;string** | {<br />Optional. Array of arguments<br /><br />@type string $label Label, visible to users. Default to $slug<br />@type string$description Description, visible only to editors in the admin. Default none.<br />@type string$type  Type. Accepted values are &#039;template&#039; or &#039;component&#039;. Default &#039;template&#039;<br />@type string$template Full path  to the template file to be used. Required if $type is set to template.<br /> Default: theme-path/tainacan/view-mode-{$slug}.php<br />@type string$component Component tag name. The web component js must be included and must accept two props:<br /> * items - the list of items to be rendered<br /> * displayed-metadata - list of metadata to be displayed<br /> Default view-mode-{$slug}<br />@type string$thumbnail Full URL to an thumbnail that represents the view mode. Displayed in admin.<br />@type string$icon  HTML that outputs an icon that represents the view mode. Displayed in front end.<br />@type bool$show_pagination Wether to display or not pagination controls. Default true.<br />@type bool$full_screen Wether the view mode will display full screen or not. Default false.<br />@type bool$dynamic_metadata Wether to display or not (and use or not) the &quot;displayed metadata&quot; selector. Default false.<br />@type bool$implements_skeleton Wether the view mode has its own strategy for disaplying loading state.<br />@type string$skeleton_template If the view mode is a template, this is the html of its loading state.<br />@type bool$required_thumbnail Wether the view mode considers essential that the item thumbnail is available, even if it is a placeholder.<br />} |




***

### get_registered_view_modes

Get a list of all registered view modes

```php
public get_registered_view_modes(): array
```









**Return Value:**

The list of registered view modes



***

### get_view_mode

Get one specific view mode by its slug

```php
public get_view_mode(string $slug): array|false
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$slug` | **string** | The view mode slug |


**Return Value:**

The view mode definition or false if it is not found



***

### tainacan_get_collection_id

When visiting a collection archive or single, returns the current collection id

```php
public tainacan_get_collection_id(): mixed
```











***

### tainacan_get_collection

When visiting a collection archive or single, returns the current collection object

```php
public tainacan_get_collection(mixed $args = []): \Tainacan\Entities\Collection
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |


**Return Value:**

| false



***

### tainacan_get_item

Gets the Tainacan Item Entity object

```php
public tainacan_get_item(mixed $post_id): mixed
```

If used inside the Loop of items, will get the Item object for the current post






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$post_id` | **mixed** |  |




***

### add_social_meta

Adds meta tags to the header to improve social sharing

```php
public add_social_meta(): mixed
```











***

### get_adjacent_items

Get previous and next item according to current search query

```php
public get_adjacent_items(): array
```









**Return Value:**

containing the next and previous item



***

### get_tainacan_items_carousel

Returns the div used by Vue to render the Carousel of Related Items

```php
public get_tainacan_items_carousel(array $args = []): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | {<br />Optional. Array of arguments.<br />@type string  $collection_idThe Collection ID<br />@type string  $search_URLA query string to fetch items from, if load strategy is &#039;search&#039;<br />@type array   $selected_itemsAn array of item IDs to fetch items from, if load strategy is &#039;selection&#039; and an array of items, if the load strategy is &#039;parent&#039;<br />@type string  $load_strategyEither &#039;search&#039; or &#039;selection&#039;, to determine how items will be fetch<br />@type integer $max_items_numberMaximum number of items to be fetch<br />@type integer $max_tems_per_screenMaximum columns of items to be displayed on a row of the carousel<br />@type string  $arrows_positionHow the arrows will be positioned regarding the carousel (&#039;around&#039;, &#039;left&#039;, &#039;right&#039;)<br />@type bool    $large_arrowsShould large arrows be displayed?<br />@type bool    $auto_playShould the Caroulsel start automatically to slide?<br />@type integer $auto_play_speedThe time in s to translate to the next slide automatically<br />@type bool    $loop_slidesShould slides loop when reached the end of the Carousel?<br />@type bool    $hide_titleShould the title of the items be displayed?<br />@type string  $image_sizeItem image size. Defaults to &#039;tainacan-medium&#039;<br />@type bool    $show_collection_headerShould it display a small version of the collection header?<br />@type bool    $show_collection_labelShould it displar a &#039;Collection&#039; label before the collection name on the collection header?<br />@type string  $collection_background_colorColor of the collection header background<br />@type string  $collection_text_colorColor of the collection header text<br />@type string  $tainacan_api_rootPath of the Tainacan api root (to make the items request)<br />@type string  $tainacan_base_urlPath of the Tainacan base URL (to make the links to the items)<br />@type string  $class_nameExtra class to add to the wrapper, besides the default wp-block-tainacan-carousel-items-list |


**Return Value:**

The HTML div to be used for rendering the items carousel vue component



***

### get_tainacan_dynamic_items_list

Returns the div used by Vue to render the Dynamic List of Related Items

```php
public get_tainacan_dynamic_items_list(array $args = []): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | {<br />Optional. Array of arguments.<br />@type string  $collection_idThe Collection ID<br />@type string  $search_URLA query string to fetch items from, if load strategy is &#039;search&#039;<br />@type array   $selected_itemsAn array of item IDs to fetch items from, if load strategy is &#039;selection&#039; and an array of items, if the load strategy is &#039;parent&#039;<br />@type string  $load_strategyEither &#039;search&#039; or &#039;selection&#039;, to determine how items will be fetch<br />@type integer $max_items_numberMaximum number of items to be fetch<br />@type integer $max_columns_countMaximum columns cound (used by grid and list layouts)<br />@type integer $grid_marginMargin around items in every layout<br />@type string  $show_nameShow the item title<br />@type string  $show_imageShow the item thumbnail<br />@type string  $layoutEither &#039;grid&#039;, &#039;list&#039; or &#039;mosaic&#039;<br />@type string  $image_sizeItem image size. Defaults to &#039;tainacan-medium&#039;<br />@type bool    $show_collection_headerShould it display a small version of the collection header?<br />@type bool    $show_collection_labelShould it displar a &#039;Collection&#039; label before the collection name on the collection header?<br />@type string  $collection_background_colorColor of the collection header background<br />@type string  $collection_text_colorColor of the collection header text<br />@type string  $tainacan_api_rootPath of the Tainacan api root (to make the items request)<br />@type string  $tainacan_base_urlPath of the Tainacan base URL (to make the links to the items)<br />@type string  $class_nameExtra class to add to the wrapper, besides the default wp-block-tainacan-carousel-items-list<br />@type string  $mosaic_heightHeight of the panel in the &#039;mosaic&#039; layout<br />@type string  $mosaic_density<br />@type string  $mosaic_grid_rows<br />@type string  $mosaic_grid_columns<br />@type string  $mosaic_item_focal_point_x<br />@type string  $mosaic_item_focal_point_y |


**Return Value:**

The HTML div to be used for rendering the items carousel vue component



***

### get_tainacan_related_items_list

Returns a group of related items list
For each metatada, the collection name, the metadata name and a button linking
the items list filtered is presented

```php
public get_tainacan_related_items_list(array $args = []): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | {<br />Optional. Array of arguments.<br />@type string  $item_idThe Item ID<br />@type string  $items_list_layoutThe type of list to be rendered. Accepts &#039;grid&#039;, &#039;list&#039;, &#039;mosaic&#039; and &#039;carousel&#039;.<br />@type string  $orderSorting direction to the related items query. Either &#039;desc&#039; or &#039;asc&#039;.<br />@type string  $orderbySortby metadata. By now we&#039;re accepting only &#039;title&#039; and &#039;date&#039;.<br />@type string  $class_nameExtra class to add to the wrapper, besides the default wp-block-tainacan-carousel-related-items<br />@type string  $collection_heading_class_nameExtra class to add to the collection name wrapper. Defaults to &#039;&#039;<br />@type string  $collection_heading_tagTag to be used as wrapper of the collection name. Defaults to h2<br />@type string  $metadata_label_class_nameExtra class to add to the metadata label wrapper. Defaults to &#039;&#039;<br />@type string  $metadata_label_tagTag to be used as wrapper of the metadata label. Defaults to p<br />@type array   $carousel_argsArray of arguments to be passed to the get_tainacan_items_carousel function if $items_list_layout == carousel<br />@type array   $dynamic_items_argsArray of arguments to be passed to the get_tainacan_dynamic_items function if $items_list_layout != carousel |


**Return Value:**

The HTML div to be used for rendering the related items vue component



***

### get_tainacan_related_items_carousel

Returns a group of related items list carousel
This is just a pre-set version of the get_tainacan_related_items function kept for
compatibility with previous versions.

```php
public get_tainacan_related_items_carousel(mixed $args = []): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |




***

### get_tainacan_item_gallery

Returns an item gallery, containing document,
attachments and other information in a slider, carousel and lightbox

```php
public get_tainacan_item_gallery(array $args = []): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | {<br /> Optional. Array of arguments.<br />  @type string  $item_id  The Item ID<br /> @type string $blockId   A unique identifier for the gallery, will be generated automatically if not provided,<br />@type bool    $isBlock  An identifier if we&#039;re comming from a block renderer, to avois using functions not available outside of the gutenberg scope;<br /> @type array  $layoutElements   Array of elements present in the gallery. Possible values are &#039;main&#039; and &#039;carousel&#039;<br /> @type array  $mediaSources   Array of sources for the gallery. Possible values are &#039;document&#039; and &#039;attachments&#039;<br /> @type bool  $hideFileNameMain   Hides the Main slider file name<br /> @type bool  $hideFileCaptionMain   Hides the Main slider file caption<br /> @type bool  $hideFileDescriptionMain  Hides the Main slider file description<br /> @type bool  $hideFileNameThumbnails   Hides the Thumbnails carousel file name<br /> @type bool  $hideFileCaptionThumbnails   Hides the Thumbnails carousel file caption<br /> @type bool  $hideFileDescriptionThumbnails   Hides the Thumbnails carousel file description<br /> @type bool  $hideFileNameLightbox   Hides the Lightbox file name<br /> @type bool  $hideFileCaptionLightbox   Hides the Lightbox file caption<br /> @type bool  $hideFileDescriptionLightbox  Hides the Lightbox file description<br /> @type bool  $openLightboxOnClick   Enables the behaviour of opening a lightbox with zoom when clicking on the media item<br />@type bool $showDownloadButtonMain  Displays a download button below the Main slider<br />@type bool $lightboxHasLightBackground      Show a light background instead of dark in the lightbox<br />@type bool    $showArrowsAsSVG  Decides if the swiper carousel arrows will be an SVG icon or font icon |


**Return Value:**

The HTML div to be used for rendering the item galery component



***

### get_tainacan_item_metadata_template

To be used inside Gutenberg editor side preview of template blocks

```php
public get_tainacan_item_metadata_template(array|string $args = array(), mixed $collection_id): string
```

Return the metadata with placeholder item metadata values as a HTML string to be used as output.

Each metadata is a label with the metadatum name and the placeholder value.

If an ID, a slug or a Tainacan\Entities\Metadatum object is passed in 'metadata' parameter, it returns only one metadata, otherwise
it returns all metadata






**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array&#124;string** | {<br />    Optional. Array or string of arguments.<br /><br />   @type mixed $metadataMetadatum object, ID or slug to retrieve only one metadatum. empty returns all metadata<br />    @type array $metadata__inArray of metadata IDs or Slugs to be retrieved. Default none<br />    @type array $metadata__not_inArray of metadata IDs (slugs not accepted) to excluded. Default none<br />    @type bool $exclude_titleExclude the Core Title Metadata from result. Default false<br />    @type bool $exclude_descriptionExclude the Core Description Metadata from result. Default false<br />    @type bool $exclude_coreExclude Core Metadata (title and description) from result. Default false<br />    @type bool        $hide_empty                Wether to hide or not metadata the item has no value to<br />                                                 Default: true<br />    @type string      $empty_value_message       Message string to display if $hide_empty is false and there is not metadata value. Default &#039;&#039;<br />    @type string      $before                    String to be added before each metadata block<br />                                                 Default &#039;&lt;div class=&quot;metadata-type-$type&quot;&gt;&#039; where $type is the metadata type slug<br />    @type string      $after                String to be added after each metadata block<br />                                                 Default &#039;&lt;/div&gt;&#039;<br />    @type string      $before_title              String to be added before each metadata title<br />                                                 Default &#039;&lt;h3&gt;&#039;<br />    @type string      $after_title               String to be added after each metadata title<br />                                                 Default &#039;&lt;/h3&gt;&#039;<br />    @type string      $before_value              String to be added before each metadata value<br />                                                 Default &#039;&lt;p&gt;&#039;<br />    @type string      $after_value               String to be added after each metadata value<br />                                                 Default &#039;&lt;/p&gt;&#039;<br />} |
| `$collection_id` | **mixed** |  |


**Return Value:**

The HTML output



***

### get_tainacan_item_metadata_sections_template



```php
public get_tainacan_item_metadata_sections_template(mixed $args = array(), mixed $collection_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **mixed** |  |
| `$collection_id` | **mixed** |  |




***

### get_metadata_section_template



```php
public get_metadata_section_template(mixed $metadata_section, mixed $args = array(), mixed $section_index = null, mixed $collection_id): mixed
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$metadata_section` | **mixed** |  |
| `$args` | **mixed** |  |
| `$section_index` | **mixed** |  |
| `$collection_id` | **mixed** |  |




***

### get_tainacan_item_gallery_template

Returns a placeholder for the item gallery, to be
used in the block editor.

```php
public get_tainacan_item_gallery_template(array $args = []): string
```








**Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `$args` | **array** | {<br /> Optional. Array of arguments.<br />  @type string  $item_id  The Item ID<br /> @type string $blockId   A unique identifier for the gallery, will be generated automatically if not provided,<br />@type bool    $isBlock  An identifier if we&#039;re comming from a block renderer, to avois using functions not available outside of the gutenberg scope;<br /> @type array  $layoutElements   Array of elements present in the gallery. Possible values are &#039;main&#039; and &#039;carousel&#039;<br /> @type array  $mediaSources   Array of sources for the gallery. Possible values are &#039;document&#039; and &#039;attachments&#039;<br /> @type bool  $hideFileNameMain   Hides the Main slider file name<br /> @type bool  $hideFileCaptionMain   Hides the Main slider file caption<br /> @type bool  $hideFileDescriptionMain  Hides the Main slider file description<br /> @type bool  $hideFileNameThumbnails   Hides the Thumbnails carousel file name<br /> @type bool  $hideFileCaptionThumbnails   Hides the Thumbnails carousel file caption<br /> @type bool  $hideFileDescriptionThumbnails   Hides the Thumbnails carousel file description<br /> @type bool  $hideFileNameLightbox   Hides the Lightbox file name<br /> @type bool  $hideFileCaptionLightbox   Hides the Lightbox file caption<br /> @type bool  $hideFileDescriptionLightbox  Hides the Lightbox file description<br /> @type bool  $openLightboxOnClick   Enables the behaviour of opening a lightbox with zoom when clicking on the media item<br />@type bool $showDownloadButtonMain  Displays a download button below the Main slider<br />@type bool $lightboxHasLightBackground      Show a light background instead of dark in the lightbox<br />@type bool    $showArrowsAsSVG  Decides if the swiper carousel arrows will be an SVG icon or font icon |


**Return Value:**

The HTML div to be used for rendering the item galery component



***

### get_taxonomies_query_args



```php
public get_taxonomies_query_args(): mixed
```











***


***
> Automatically generated from source code comments on 2023-07-21 using [phpDocumentor](http://www.phpdoc.org/) and [saggre/phpdocumentor-markdown](https://github.com/Saggre/phpDocumentor-markdown)
