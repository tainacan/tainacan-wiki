?> _TODO_ Document each filters with parameters and usage example

# Filters

From the WordPress developer handbook:

> A filter takes the info it receives, modifies it somehow, and returns it. In other words: it filters something and passes it back to the hook for further use. It is used to modify something in a specific way so that the modification is then used by code later on.

The Tainacan Filters can be divided in Backend, _PHP-based_ filters and Frontend, _Javascript-based_ filters:

## Backend Filters

### `tainacan-extract-pdf-cover`

### `tainacan-index-pdf`

### `tainacan-default-image-blurhash`

### `tainacan-api-prepare-items-args`

### `tainacan-api-response-collection-meta`

### `tainacan-api-response-filter-meta`

### `tainacan-rest-response`

### `tainacan-api-response-item-meta`

### `tainacan-api-items-prepare-for-response`

### `tainacan-item-get-author-name`

### `tainacan-api-items-filter-arguments`

### `tainacan-api-items-${filter_type_component}-filter-arguments`

### `tainacan-api-get-items-alternate`

### `tainacan-api-items-filters-response`

### `tainacan-api-items-filters-arguments-response`

### `tainacan-api-items-response`

### `tainacan-submission-item-data`

### `tainacan-api-response-metadatum-meta`

### `tainacan-api-response-metadata-section-meta`

### `tainacan-api-role-prepare-for-response`

### `tainacan-api-response-taxonomy-meta`

### `tainacan-api-response-term-meta`

### `tainacan-collection-to-string`

### `tainacan-collection-to-array`

### `tainacan-collection-get-attachments`

### `tainacan-collection-get-author-name`

### `tainacan-collection-get-thumbnail`

### `tainacan-collection-get-header-image`

### `tainacan-status-require-validation`

### `tainacan-entity-get-property`

### `tainacan-entity-set-property`

### `tainacan-set-post-status`

### `tainacan-get-post-status`

### `{$hook_prefix}-to-array`

### `tainacan-filter-to-string`

### `tainacan-filter-to-array`

### `tainacan-item-metadata-get-multivalue-prefix`

### `tainacan-item-metadata-get-multivalue-suffix`

### `tainacan-item-metadata-get-multivalue-separator`

### `tainacan-item-metadata-to-array`

### `tainacan-status-require-validation`

### `tainacan-item-to-string`

### `tainacan-item-to-array`

### `tainacan-item-get-attachments`

### `tainacan-item-get-author-name`

### `tainacan-item-get-thumbnail`

### `tainacan-status-require-validation`

### `tainacan-get-item-metadatum-as-html-(before/after)`

### `tainacan-get-item-metadatum-as-html-(before/after)--type-`

### `tainacan-get-item-metadatum-as-html-(before/after)--id-`

### `tainacan-get-item-metadatum-as-html-(before/after)--index-`

### `tainacan-get-item-metadatum-as-html-(before/after)-title`

### `tainacan-get-item-metadatum-as-html-(before/after)-value`

### `tainacan-item-get-document-as-html`

### `tainacan-get-metadata-section-as-html-(before/after)`

### `tainacan-get-metadata-section-as-html-(before/after)--id-`

### `tainacan-get-metadata-section-as-html-(before/after)--index-`

### `tainacan-get-metadata-section-as-html-(before/after)-name`

### `tainacan-get-metadata-section-as-html-(before/after)-name--id-`

### `tainacan-get-metadata-section-as-html-(before/after)-name--index-`

### `tainacan-get-metadata-section-as-html-(before/after)-metadata-list`

### `tainacan-get-metadata-section-as-html-(before/after)-metadata-list--id-`

### `tainacan-get-metadata-section-as-html-(before/after)-metadata-list--index-`

### `tainacan-log-to-string`

### `tainacan-log-to-array`

### `tainacan-log-set-title`

### `tainacan-metadata-section-to-string`

### `tainacan-metadatum-to-string`

### `tainacan-taxonomy-to-string`

### `tainacan-term-to-string`

### `tainacan-term-to-array`

### `tainacan-term-to-html`

### `tainacan-terms-hierarchy-html-separator`

### `the_modified_author`

### `exporter_step_length_items`

### `tainacan-exporser-type-mappers`

### `tainacan-exposer-html`

### `tainacan-exposer-numeric-item-prefix`

### `tainacan-exposer-jsonld`

### `tainacan-exposer-head`

### `tainacan-oai-pmh-root`

### `tainacan-exposer-txt`

### `tainacan-exposer-numeric-item-prefix`

### `tainacan-get-mapper-from-request`

### `tainacan-oai-maxrecords`

### `tainacan-oai-token-valid`

### `tainacan-get-map-' . $this->get_name()`

### `tainacan_fetch_args`

### `tainacan-get-thumbnail-id-from-document`

### `tainacan_add_related_item`

### `tainacan-entity-diff`

### `tainacan-fetch-all-metadatum-values`

### `tainacan_repository_archive_template_hierarchy`

### `tainacan-get-the-document`

### `tainacan_get_the_document_raw`

### `tainacan_get_the_item_document_url`

### `tainacan_get_the_document_type`

### `tainacan-get-collection-name`

### `tainacan-get-collection-description`

### `tainacan-get-collection-url`

### `tainacan-default-view-mode-for-themes`

### `tainacan-enabled-view-modes-for-themes`

### `tainacan-get-term-name`

### `tainacan-get-term-description`

### `tainacan-get-the-attachments`

### `tainacan-get-initials`

### `tainacan_register_web_components`

### `set_tainacan_admin_options`

### `tainacan-i18n`

### `tainacan-admin-hooks-positions`

### `tainacan-admin-hooks-contexts`

## Frontend Filters

### `tainacan_use_legacy_masonry_view_mode_cols`

### `tainacan_faceted_search_search_control_(before/after)`

### `tainacan_faceted_search_advanced_search_(before/after)`

### `tainacan_faceted_search_filters_(before/after)`

### `tainacan_faceted_search_filter_tags_(before/after)`

### `tainacan_faceted_search_items_list_(before/after)`

### `tainacan_faceted_search_pagination_(before/after)`

### `tainacan_faceted_search_item_(before/after)`

### `tainacan_item_submission_collection_${this.collectionId}_${location}_(before/after)`
