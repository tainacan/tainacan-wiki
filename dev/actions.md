# Hooks

## Actions

### `activate_substr()/src/tainacan.php`


Source: [/src/tainacan/tests/bootstrap.php](tests/bootstrap.php), [line 26](tests/bootstrap.php#L26-L26)

### `rest_api_init`

*Basic test case for api calls*


Source: [/src/tainacan/tests/tainacan-unit-api-test-case.php](tests/tainacan-unit-api-test-case.php), [line 5](tests/tainacan-unit-api-test-case.php#L5-L37)

### `tainacan-register-exposers`

*Load exposers classes*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/classes/exposers/class-tainacan-exposers-handler.php](src/classes/exposers/class-tainacan-exposers-handler.php), [line 8](src/classes/exposers/class-tainacan-exposers-handler.php#L8-L47)

### `tainacan-register-importers`


Source: [/src/tainacan/src/classes/background-process/importer/class-tainacan-importer-handler.php](src/classes/background-process/importer/class-tainacan-importer-handler.php), [line 92](src/classes/background-process/importer/class-tainacan-importer-handler.php#L92-L92)

### `tainacan-register-exporters`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/classes/background-process/exporter/class-tainacan-exporter-handler.php](src/classes/background-process/exporter/class-tainacan-exporter-handler.php), [line 52](src/classes/background-process/exporter/class-tainacan-exporter-handler.php#L52-L52)

### `tainacan-register-generic_process`


Source: [/src/tainacan/src/classes/background-process/generic-process/class-tainacan-generic-handler.php](src/classes/background-process/generic-process/class-tainacan-generic-handler.php), [line 34](src/classes/background-process/generic-process/class-tainacan-generic-handler.php#L34-L34)

### `tainacan-api-collection-created`

*Receive a JSON with the structure of a Collection and return, in case of success insert
a Collection object in JSON*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$response` |  | 
`$request` | `\WP_REST_Request` | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-collections-controller.php](src/classes/api/endpoints/class-tainacan-rest-collections-controller.php), [line 466](src/classes/api/endpoints/class-tainacan-rest-collections-controller.php#L466-L496)

### `tainacan-api-item-updated`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$updated_item` |  | 
`$attributes` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 975](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L975-L999)

### `tainacan-api-item-duplicated`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$new_item` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 1039](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L1039-L1131)

### `tainacan-submission-item-finish`

*Represents the Items REST Controller*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$request` |  | 

Source: [/src/tainacan/src/classes/api/endpoints/class-tainacan-rest-items-controller.php](src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 11](src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L11-L1457)

### `tainacan-bulk-edit-set-status`

*Sets the status to all items in the current group*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$this->get_id()` |  | 
`$select_q` |  | 
`$query` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-bulk-edit.php](src/classes/class-tainacan-bulk-edit.php), [line 223](src/classes/class-tainacan-bulk-edit.php#L223-L249)

### `tainacan-pre-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$term` | `\Tainacan\Entities\Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 100](src/classes/repositories/class-tainacan-terms.php#L100-L112)

### `tainacan-pre-insert-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$term` | `\Tainacan\Entities\Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 100](src/classes/repositories/class-tainacan-terms.php#L100-L113)

### `tainacan-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$new_entity` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 100](src/classes/repositories/class-tainacan-terms.php#L100-L160)

### `tainacan-insert-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$new_entity` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 100](src/classes/repositories/class-tainacan-terms.php#L100-L161)

### `tainacan-pre-delete`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 269](src/classes/repositories/class-tainacan-terms.php#L269-L280)

### `tainacan-pre-delete-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 269](src/classes/repositories/class-tainacan-terms.php#L269-L281)

### `tainacan-deleted`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 269](src/classes/repositories/class-tainacan-terms.php#L269-L286)

### `tainacan-deleted-term`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [/src/tainacan/src/classes/repositories/class-tainacan-terms.php](src/classes/repositories/class-tainacan-terms.php), [line 269](src/classes/repositories/class-tainacan-terms.php#L269-L287)

### `register_filter_types`

*fetch all registered filter type classes*

Possible outputs are:
CLASS (default) - returns the Class name of of filter types registered
NAME - return an Array of the names of filter types registered


Source: [/src/tainacan/src/classes/repositories/class-tainacan-filters.php](src/classes/repositories/class-tainacan-filters.php), [line 298](src/classes/repositories/class-tainacan-filters.php#L298-L312)

### `tainacan-pre-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 18](src/classes/repositories/class-tainacan-item-metadata.php#L18-L31)

### `tainacan-pre-insert-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 18](src/classes/repositories/class-tainacan-item-metadata.php#L18-L32)

### `tainacan-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 18](src/classes/repositories/class-tainacan-item-metadata.php#L18-L110)

### `tainacan-insert-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 18](src/classes/repositories/class-tainacan-item-metadata.php#L18-L111)

### `tainacan-pre-delete`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 261](src/classes/repositories/class-tainacan-item-metadata.php#L261-L261)

### `tainacan-pre-delete-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 262](src/classes/repositories/class-tainacan-item-metadata.php#L262-L262)

### `tainacan-deleted`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 275](src/classes/repositories/class-tainacan-item-metadata.php#L275-L275)

### `tainacan-deleted-Item_Metadata_Entity`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-item-metadata.php](src/classes/repositories/class-tainacan-item-metadata.php), [line 276](src/classes/repositories/class-tainacan-item-metadata.php#L276-L276)

### `register_metadata_types`

*fetch all registered metadatum type classes*

Possible outputs are:
CLASS (default) - returns the Class name of of metadatum types registered
NAME - return an Array of the names of metadatum types registered


Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 770](src/classes/repositories/class-tainacan-metadata.php#L770-L784)

### `tainacan-taxonomy-removed-from-collection`

*Triggers hooks when saving a Taxonomy Metadatum, indicating wich taxonomy was added or removed from a collection.*

This is used by Taxonomies repository to update the collections_ids property of the taxonomy as
a metadatum type taxonomy is inserted or removed

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this->current_taxonomy` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1628](src/classes/repositories/class-tainacan-metadata.php#L1628-L1650)

### `tainacan-taxonomy-added-to-collection`

*Triggers hooks when saving a Taxonomy Metadatum, indicating wich taxonomy was added or removed from a collection.*

This is used by Taxonomies repository to update the collections_ids property of the taxonomy as
a metadatum type taxonomy is inserted or removed

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$new_tax` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 1628](src/classes/repositories/class-tainacan-metadata.php#L1628-L1654)

### `tainacan-taxonomy-removed-from-collection`

*Class Metadata*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$removed_tax` |  | 
`$collection` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-metadata.php](src/classes/repositories/class-tainacan-metadata.php), [line 10](src/classes/repositories/class-tainacan-metadata.php#L10-L1705)

### `tainacan-pre-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 116](src/classes/repositories/class-tainacan-repository.php#L116-L135)

### `tainacan-pre-insert-{$obj_post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 116](src/classes/repositories/class-tainacan-repository.php#L116-L138)

### `tainacan-pre-insert-{$obj_post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 116](src/classes/repositories/class-tainacan-repository.php#L116-L171)

### `tainacan-insert`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 
`$diffs` |  | 
`$is_update` |  | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 116](src/classes/repositories/class-tainacan-repository.php#L116-L200)

### `tainacan-insert-{$obj_post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 116](src/classes/repositories/class-tainacan-repository.php#L116-L202)

### `tainacan-pre-delete`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 632](src/classes/repositories/class-tainacan-repository.php#L632-L641)

### `tainacan-pre-delete-{$post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 632](src/classes/repositories/class-tainacan-repository.php#L632-L642)

### `tainacan-deleted`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 632](src/classes/repositories/class-tainacan-repository.php#L632-L654)

### `tainacan-deleted-{$post_type}`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [/src/tainacan/src/classes/repositories/class-tainacan-repository.php](src/classes/repositories/class-tainacan-repository.php), [line 632](src/classes/repositories/class-tainacan-repository.php#L632-L655)

### `tainacan-upload-folder-renamed`

*When an item or collection is saved, it checks if the satus was changed and
if the items upload directory mus be renamed to add or remove the
private folder prefix*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$full_path_check` |  | 
`$full_path` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-private-files.php](src/classes/class-tainacan-private-files.php), [line 276](src/classes/class-tainacan-private-files.php#L276-L327)

### `tainacan-upload-folder-renamed`

*Rename all folders from items after a bulk edit operation move their statuses*

TODO: In the upcoming bulk edit refactor this must be handled as there are performance issues

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$found[0]` |  | 
`$target` |  | 

Source: [/src/tainacan/src/classes/class-tainacan-private-files.php](src/classes/class-tainacan-private-files.php), [line 335](src/classes/class-tainacan-private-files.php#L335-L366)

### `tainacan-pre-insert-attachment`

*Insert an attachment from an URL address.*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$blob` | `\Tainacan\blob` | bitstream of the attachment
`$filename` | `string` | The filename that will be created
`$post_id` | `int` | (optional) the post this attachement should be attached to. empty for none

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 151](src/classes/class-tainacan-media.php#L151-L161)

### `tainacan-post-insert-attachment`

*Insert an attachment from an URL address.*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$attach_id` |  | 
`$attach_data` |  | 
`$post_id` | `int` | (optional) the post this attachement should be attached to. empty for none

Source: [/src/tainacan/src/classes/class-tainacan-media.php](src/classes/class-tainacan-media.php), [line 151](src/classes/class-tainacan-media.php#L151-L205)

### `tainacan-register-mappers`

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/classes/mappers/class-tainacan-mappers-handler.php](src/classes/mappers/class-tainacan-mappers-handler.php), [line 46](src/classes/mappers/class-tainacan-mappers-handler.php#L46-L46)

### `tainacan-register-vuejs-component`

*Class Components_Hooks*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-component-hooks.php](src/views/admin/classes/hooks/class-tainacan-component-hooks.php), [line 7](src/views/admin/classes/hooks/class-tainacan-component-hooks.php#L7-L27)

### `tainacan-register-admin-hooks`


Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-admin-hooks.php](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php), [line 15](src/views/admin/classes/hooks/class-tainacan-admin-hooks.php#L15-L15)

### `tainacan-register-vuejs-plugin`

*Class Plugins_Hooks*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php](src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php), [line 7](src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php#L7-L24)

### `tainacan-register-filter-type`

*Class FilterTypeHelper*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php](src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php), [line 7](src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php#L7-L41)

### `tainacan-register-metadata-type`

*Class MetadataTypeHelper*

**Arguments**

Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [/src/tainacan/src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php](src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php), [line 7](src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php#L7-L40)

### `tainacan-enqueue-admin-scripts`


Source: [/src/tainacan/src/views/admin/class-tainacan-admin.php](src/views/admin/class-tainacan-admin.php), [line 287](src/views/admin/class-tainacan-admin.php#L287-L287)

### `tainacan-enqueue-roles-scripts`


Source: [/src/tainacan/src/views/roles/class-tainacan-roles.php](src/views/roles/class-tainacan-roles.php), [line 54](src/views/roles/class-tainacan-roles.php#L54-L54)

### `tainacan-dashboard-before-cards`


Source: [/src/tainacan/src/views/dashboard/page.php](src/views/dashboard/page.php), [line 27](src/views/dashboard/page.php#L27-L27)

### `tainacan-dashboard-after-cards`


Source: [/src/tainacan/src/views/dashboard/page.php](src/views/dashboard/page.php), [line 40](src/views/dashboard/page.php#L40-L40)

<p align="center"><a href="https://github.com/pronamic/wp-documentor"><img src="https://cdn.jsdelivr.net/gh/pronamic/wp-documentor@main/logos/pronamic-wp-documentor.svgo-min.svg" alt="Pronamic WordPress Documentor" width="32" height="32"></a><br><em>Generated by <a href="https://github.com/pronamic/wp-documentor">Pronamic WordPress Documentor</a> <code>1.2.0</code></em><p>

