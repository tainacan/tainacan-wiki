# Hooks

## Actions

### `rest_api_init`


Source: [/src/tainacan/tests/tainacan-unit-api-test-case.php](tests/tainacan-unit-api-test-case.php), [line 29](tests/tainacan-unit-api-test-case.php#L29-L29)

### `activate_substr()/src/tainacan.php`


Source: [/src/tainacan/tests/bootstrap.php](tests/bootstrap.php), [line 26](tests/bootstrap.php#L26-L26)

### `tainacan-register-importers`


Source: [/src/tainacan/src/classes/importer/class-tainacan-importer-handler.php](src/classes/importer/class-tainacan-importer-handler.php), [line 81](src/classes/importer/class-tainacan-importer-handler.php#L81-L81)

### `tainacan-pre-insert-attachment`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$blob` |  | 
`$filename` |  | 
`$post_id` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 128](src/classes/class-tainacan-media.php#L128-L128)

### `tainacan-post-insert-attachment`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$attach_id` |  | 
`$attach_data` |  | 
`$post_id` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 172](src/classes/class-tainacan-media.php#L172-L172)

### `tainacan-register-exporters`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/classes/exporter/class-tainacan-export-handler.php](src/classes/exporter/class-tainacan-export-handler.php), [line 32](src/classes/exporter/class-tainacan-export-handler.php#L32-L32)

### `tainacan-register-mappers`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/classes/mappers/class-tainacan-mappers-handler.php](src/classes/mappers/class-tainacan-mappers-handler.php), [line 41](src/classes/mappers/class-tainacan-mappers-handler.php#L41-L41)

### `tainacan-pre-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 40](src/classes/repositories/class-tainacan-item-metadata.php#L40-L40)

### `tainacan-pre-insert-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 41](src/classes/repositories/class-tainacan-item-metadata.php#L41-L41)

### `tainacan-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 117](src/classes/repositories/class-tainacan-item-metadata.php#L117-L117)

### `tainacan-insert-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 118](src/classes/repositories/class-tainacan-item-metadata.php#L118-L118)

### `tainacan-pre-delete`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 235](src/classes/repositories/class-tainacan-item-metadata.php#L235-L235)

### `tainacan-pre-delete-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 236](src/classes/repositories/class-tainacan-item-metadata.php#L236-L236)

### `tainacan-deleted`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 249](src/classes/repositories/class-tainacan-item-metadata.php#L249-L249)

### `tainacan-deleted-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 250](src/classes/repositories/class-tainacan-item-metadata.php#L250-L250)

### `register_metadata_types`


Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 795](src/classes/repositories/class-tainacan-metadata.php#L795-L795)

### `tainacan-taxonomy-removed-from-collection`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->current_taxonomy` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1658](src/classes/repositories/class-tainacan-metadata.php#L1658-L1658)

### `tainacan-taxonomy-added-to-collection`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$new_tax` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1662](src/classes/repositories/class-tainacan-metadata.php#L1662-L1662)

### `tainacan-taxonomy-removed-from-collection`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$removed_tax` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1713](src/classes/repositories/class-tainacan-metadata.php#L1713-L1713)

### `register_filter_types`


Source: [/src/tainacan/src/classes/repositories/class-tainacan-filters.php](src/classes/repositories/class-tainacan-filters.php), [line 294](src/classes/repositories/class-tainacan-filters.php#L294-L294)

### `tainacan-pre-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$term` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 121](src/classes/repositories/class-tainacan-terms.php#L121-L121)

### `tainacan-pre-insert-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$term` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 122](src/classes/repositories/class-tainacan-terms.php#L122-L122)

### `tainacan-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$new_entity` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 169](src/classes/repositories/class-tainacan-terms.php#L169-L169)

### `tainacan-insert-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$new_entity` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 170](src/classes/repositories/class-tainacan-terms.php#L170-L170)

### `tainacan-pre-delete`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 289](src/classes/repositories/class-tainacan-terms.php#L289-L289)

### `tainacan-pre-delete-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 290](src/classes/repositories/class-tainacan-terms.php#L290-L290)

### `tainacan-deleted`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 295](src/classes/repositories/class-tainacan-terms.php#L295-L295)

### `tainacan-deleted-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 296](src/classes/repositories/class-tainacan-terms.php#L296-L296)

### `tainacan-pre-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 134](src/classes/repositories/class-tainacan-repository.php#L134-L134)

### `tainacan-pre-insert-{$obj_post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 137](src/classes/repositories/class-tainacan-repository.php#L137-L137)

### `tainacan-pre-insert-{$obj_post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 170](src/classes/repositories/class-tainacan-repository.php#L170-L170)

### `tainacan-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` |  | 
`$diffs` |  | 
`$is_update` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 194](src/classes/repositories/class-tainacan-repository.php#L194-L194)

### `tainacan-insert-{$obj_post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 196](src/classes/repositories/class-tainacan-repository.php#L196-L196)

### `tainacan-pre-delete`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 635](src/classes/repositories/class-tainacan-repository.php#L635-L635)

### `tainacan-pre-delete-{$post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 636](src/classes/repositories/class-tainacan-repository.php#L636-L636)

### `tainacan-deleted`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 648](src/classes/repositories/class-tainacan-repository.php#L648-L648)

### `tainacan-deleted-{$post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` |  | 
`$permanent` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 649](src/classes/repositories/class-tainacan-repository.php#L649-L649)

### `tainacan-api-item-updated`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$updated_item` |  | 
`$attributes` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 972](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L972-L972)

### `tainacan-api-item-duplicated`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$new_item` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 1103](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L1103-L1103)

### `tainacan-submission-item-finish`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 1429](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L1429-L1429)

### `tainacan-api-collection-created`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$response` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-collections-controller.php](src/classes/api/endpoints/class-tainacan-rest-collections-controller.php), [line 446](src/classes/api/endpoints/class-tainacan-rest-collections-controller.php#L446-L446)

### `tainacan-register-exposers`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-exposers-handler.php](src/classes/exposers/class-tainacan-exposers-handler.php), [line 49](src/classes/exposers/class-tainacan-exposers-handler.php#L49-L49)

### `tainacan-upload-folder-renamed`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$full_path_check` |  | 
`$full_path` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-private-files.php](src/classes/class-tainacan-private-files.php), [line 334](src/classes/class-tainacan-private-files.php#L334-L334)

### `tainacan-upload-folder-renamed`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$found[0]` |  | 
`$target` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-private-files.php](src/classes/class-tainacan-private-files.php), [line 373](src/classes/class-tainacan-private-files.php#L373-L373)

### `tainacan-bulk-edit-set-status`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$this->get_id()` |  | 
`$select_q` |  | 
`$query` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-bulk-edit.php](src/classes/class-tainacan-bulk-edit.php), [line 247](src/classes/class-tainacan-bulk-edit.php#L247-L247)

### `tainacan-register-generic_process`


Source: [/src/tainacan/src/classes/generic-background-process/class-tainacan-generic-handler.php](src/classes/generic-background-process/class-tainacan-generic-handler.php), [line 23](src/classes/generic-background-process/class-tainacan-generic-handler.php#L23-L23)

### `tainacan-enqueue-roles-scripts`


Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 163](src/views/class-tainacan-admin.php#L163-L163)

### `tainacan-enqueue-reports-scripts`


Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 194](src/views/class-tainacan-admin.php#L194-L194)

### `tainacan-enqueue-admin-scripts`


Source: [/src/tainacan/src/views/class-tainacan-admin.php](src/views/class-tainacan-admin.php), [line 270](src/views/class-tainacan-admin.php#L270-L270)

### `tainacan-register-admin-hooks`


Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-admin-hooks.php](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php), [line 26](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php#L26-L26)

### `tainacan-register-vuejs-plugin`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php](src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php), [line 35](src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php#L35-L35)

### `tainacan-register-vuejs-component`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-component-hooks.php](src/views/admin/classes/hooks/class-tainacan-component-hooks.php), [line 38](src/views/admin/classes/hooks/class-tainacan-component-hooks.php#L38-L38)

### `tainacan-register-metadata-type`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php](src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php), [line 50](src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php#L50-L50)

### `tainacan-register-filter-type`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php](src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php), [line 49](src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php#L49-L49)

<p align="center"><a href="https://github.com/pronamic/wp-documentor"><img src="https://cdn.jsdelivr.net/gh/pronamic/wp-documentor@main/logos/pronamic-wp-documentor.svgo-min.svg" alt="Pronamic WordPress Documentor" width="32" height="32"></a><br><em>Generated by <a href="https://github.com/pronamic/wp-documentor">Pronamic WordPress Documentor</a> <code>1.2.0</code></em><p>

