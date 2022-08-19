?> _TODO_ Document each filters with parameters and usage example

# Filters

From the WordPress developer handbook:

> A filter takes the info it receives, modifies it somehow, and returns it. In other words: it filters something and passes it back to the hook for further use. It is used to modify something in a specific way so that the modification is then used by code later on.

The Tainacan Filters can be divided in Backend, _PHP-based_ filters and Frontend, _Javascript-based_ filters:

## Backend Filters

### tainacan-extract-pdf-cover

### tainacan-index-pdf

### tainacan-default-image-blurhas

### tainacan-api-prepare-items-args

### tainacan-api-response-collection-meta

### tainacan-api-response-filter-meta

### tainacan-rest-response

### tainacan-api-response-item-meta

### tainacan-api-items-prepare-for-response

### tainacan-item-get-author-name

### tainacan-api-items-filter-arguments

### tainacan-api-items-${filter_type_component}-filter-arguments

### tainacan-api-get-items-alternate

### tainacan-api-items-filters-response

### tainacan-api-items-filters-arguments-response

### tainacan-api-items-response

### tainacan-submission-item-data

### tainacan-api-response-metadatum-meta

### tainacan-api-response-metadata-section-meta

### tainacan-api-role-prepare-for-response

### tainacan-api-response-taxonomy-meta

### tainacan-api-response-term-meta

### tainacan-collection-to-string

### tainacan-collection-to-array

### tainacan-collection-get-attachments

### tainacan-collection-get-author-name

### tainacan-collection-get-thumbnail

### tainacan-collection-get-header-image

### tainacan-status-require-validation

### tainacan-entity-get-property

### tainacan-entity-set-property

### tainacan-set-post-status

### tainacan-get-post-status

### tainacan-collection-to-array

### tainacan-taxonomy-to-array

### tainacan-metadatum-to-array

### tainacan-metadata-section-to-array

### tainacan-filter-to-string

### tainacan-filter-to-array

### tainacan-item-metadata-get-multivalue-prefix

### tainacan-item-metadata-get-multivalue-suffix

### tainacan-item-metadata-get-multivalue-separator

### tainacan-item-metadata-to-array

### tainacan-status-require-validation

### tainacan-item-to-string

### tainacan-item-to-array

### tainacan-item-get-attachments

### tainacan-item-get-author-name

### tainacan-item-get-thumbnail

### tainacan-status-require-validation

### tainacan-get-item-metadatum-as-html-(before/after)

### tainacan-get-item-metadatum-as-html-(before/after)--type-{$metadatum-type}

### tainacan-get-item-metadatum-as-html-(before/after)--id-{$metadatum-id}

### tainacan-get-item-metadatum-as-html-(before/after)--index-{$metadatum-index}

### tainacan-get-item-metadatum-as-html-(before/after)-title

### tainacan-get-item-metadatum-as-html-(before/after)-value

### tainacan-item-get-document-as-html

### tainacan-get-metadata-section-as-html-(before/after)

### tainacan-get-metadata-section-as-html-(before/after)--id-{$metadata-section-id}

### tainacan-get-metadata-section-as-html-(before/after)--index-{$metadata-section-index}

### tainacan-get-metadata-section-as-html-(before/after)-name

### tainacan-get-metadata-section-as-html-(before/after)-name--id-{$metadata-section-id}

### tainacan-get-metadata-section-as-html-(before/after)-name--index-{$metadata-section-index}

### tainacan-get-metadata-section-as-html-(before/after)-metadata-list

### tainacan-get-metadata-section-as-html-(before/after)-metadata-list--id-{$metadata-section-id}

### tainacan-get-metadata-section-as-html-(before/after)-metadata-list--index-{$metadata-section-index}

### tainacan-log-to-string

### tainacan-log-to-array

### tainacan-log-set-title

### tainacan-metadata-section-to-string

### tainacan-metadatum-to-string

### tainacan-taxonomy-to-string

### tainacan-term-to-string

### tainacan-term-to-array

### tainacan-term-to-html

### tainacan-terms-hierarchy-html-separator

### tainacan-the-modified-author

### tainacan-exporter-step-length-items

### tainacan-exporser-type-mappers

### tainacan-exposer-html

### tainacan-exposer-numeric-item-prefix

### tainacan-exposer-jsonld

### tainacan-exposer-head

### tainacan-oai-pmh-root

### tainacan-exposer-txt

### tainacan-exposer-numeric-item-prefix

### tainacan-get-mapper-from-request

### tainacan-oai-maxrecords

### tainacan-oai-token-valid

### tainacan-get-map-{$this->get_name()}

### tainacan-fetch-args

### tainacan-get-thumbnail-id-from-document

### tainacan_add_related_item

### tainacan-entity-diff

### tainacan-fetch-all-metadatum-values

### tainacan_repository_archive_template_hierarchy

### tainacan-get-the-document

### tainacan_get_the_document_raw

### tainacan_get_the_item_document_url

### tainacan_get_the_document_type

### tainacan-get-collection-name

### tainacan-get-collection-description

### tainacan-get-collection-url

### tainacan-default-view-mode-for-themes

### tainacan-enabled-view-modes-for-themes

### tainacan-get-term-name

### tainacan-get-term-description

### tainacan-get-the-attachments

### tainacan-get-initials

### tainacan-admin-ui-options

```php
add_filter(
    'tainacan-admin-ui-options',
    function($strings)
);
```

An array of Admin UI Options. Learn more about this filter in [its dedicated page](/dev/admin-ui-options.md).

#### Paramethers

| Name    | Type    | Description                                                                                      |
| ------- | ------- | ------------------------------------------------------------------------------------------------ |
| options | `array` | Admin UI options. Possible values are listed [here](/dev/admin-ui-options.md). Defaults to `[]`. |

### tainacan-i18n

```php
add_filter(
    'tainacan-admin-hooks-positions',
    function($strings)
);
```

An array of key-value tuples where the key is a simple key for identifying a translatable string and the value is the translated string, using `__( 'Some string here', 'tainacan' )`. This is exported as a global object to the Tainacan plugin javascript side, which then renders translations in the frontend.

#### Paramethers

| Name    | Type    | Description                                                                                                                                                                                        |
| ------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| strings | `array` | Array of objects containing key an value for translatable strings. Defaults to [the array from this file](https://github.com/tainacan/tainacan/blob/master/src/views/tainacan-i18n.php ":ignore"). |

### tainacan-admin-hooks-positions

```php
add_filter(
    'tainacan-admin-hooks-positions',
    function($positions)
);
```

List of available forms regions where form hooks may be placed.

#### Paramethers

| Name      | Type    | Description                                                                                                   |
| --------- | ------- | ------------------------------------------------------------------------------------------------------------- |
| positions | `array` | Possible forms regions with form hooks. Defaults to `['begin-left', 'begin-right', 'end-left', 'end-right']`. |

### tainacan-admin-hooks-contexts

```php
add_filter(
    'tainacan-admin-hooks-contexts',
    function($contexts)
);
```

List of available forms where admin form hooks can be used.

#### Paramethers

| Name     | Type    | Description                                                                                                                                       |
| -------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| contexts | `array` | Possible forms to receive form hooks. Defaults to `['collection', 'metadatum', 'item', 'taxonomy', 'term', 'filter', 'role', 'metadataSection']`. |

## Frontend Filters

### tainacan_use_legacy_masonry_view_mode_cols

```js
wp.hooks.addFilter(
    'tainacan_use_legacy_masonry_view_mode_cols',
    function(enable)
);
```

This filter allow developers to use the legacy Masonry layout, in oposition to the one introduced in Tainacan 0.19. The legacy one has more columns-per-screen an thus smaller images, using the `tainacan-media-full` size, where the new one uses less columns, using the `tainacan-large-fill` image size.

#### Paramethers

| Name   | Type      | Description                                                          |
| ------ | --------- | -------------------------------------------------------------------- |
| enable | `Boolean` | Whether the legacy layout should be used or not. Defaults to `false` |

### tainacan_faceted_search_search_control\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_search_control_(before/after)',
    function(htmlContent)
);
```

Allows insertion of html content around the search control bar (where the sorting, textual search, view mode options, etc.. are available). A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_search_control_(before/after)`.

#### Paramethers

| Name        | Type     | Description                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty |

### tainacan_faceted_search_advanced_search\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_advanced_search_(before/after)',
    function(htmlContent)
);
```

Allows insertion of html content around advanced search panel. A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_advanced_search_(before/after)`.

#### Paramethers

| Name        | Type     | Description                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty |

### tainacan_faceted_search_filters\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_filters_(before/after)',
    function(htmlContent)
);
```

Allows insertion of html content around the filters panel. A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_filters_(before/after)`.

#### Paramethers

| Name        | Type     | Description                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty |

### tainacan_faceted_search_filter_tags\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_filter_tags_(before/after)',
    function(htmlContent)
);
```

Allows insertion of html content around the filters tags, which appear above the items list when a filter is applied. A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_filter_tags_(before/after)`.

#### Paramethers

| Name        | Type     | Description                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty |

### tainacan_faceted_search_items_list\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_items_list_(before/after)',
    function(htmlContent)
);
```

Allows insertion of html content around the items list. A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_items_list_(before/after)`.

#### Paramethers

| Name        | Type     | Description                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty |

### tainacan_faceted_search_pagination\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_pagination_(before/after)',
    function(htmlContent)
);
```

Allows insertion of html content around the pagination region. A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_pagination_(before/after)`.

#### Paramethers

| Name        | Type     | Description                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty |

### tainacan_faceted_search_item\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_item_(before/after)',
    function(htmlContent, item)
);
```

Allows insertion of html content around an item unit in the items list. Notice that this will take effect on several view modes. A dynamic version for specific collections is available: `tainacan_faceted_search_collection_${collectionId}_item_(before/after)`.

#### Paramethers

| Name        | Type     | Description                                                      |
| ----------- | -------- | ---------------------------------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty                          |
| item        | `Object` | Item object with several attributes, such as ID, title, url, etc |

### tainacan_item_submission_collection\_${$collectionId}\_${location}\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_item_submission_collection_${collectionId}_${location}_(before/after)',
    function(htmlContent, entity)
);
```

Dynamic filter which allows insertion of html content around different parts of the item submission block. The location are:

- `document` - The form Document input;
- `attachments` - The form Attachments upload field;
- `thumbnail` - The form Thumbnail upload field;
- `metadata` - The form Metadata list;
- `metadata_section` - Each Metadata Section (entity = the Metadata Section);
- `metadatum` - Each Metadatum (entity = the Metadatum);
- `footer` - The form footer;

#### Paramethers

| Name        | Type     | Description                                                     |
| ----------- | -------- | --------------------------------------------------------------- |
| htmlContent | `String` | Html content to be added. Default empty.                        |
| entity      | `Object` | Entity object if the entity is Metadatum or a Metadatum Section |
