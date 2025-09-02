# Tainacan Actions

WordPress actions are hooks that allow you to execute custom code at specific points during the WordPress lifecycle. In Tainacan, actions enable developers to extend or modify plugin behavior without altering core files. To use an action, attach your custom function to a specific hook using the `add_action()` function:

```php
add_action( 'tainacan-some-action', 'your_callback_function', 10, 2 );
function your_callback_function( $arg1, $arg2 ) {
    // Your custom code here
}
```

Refer to the list below for available Tainacan actions and their usage.


## `tainacan-register-exposers`

*Load exposers classes*


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-exposers-handler.php](https://github.com/tainacan/tainacan/blob/master/src/classes/exposers/class-tainacan-exposers-handler.php), [line 8](https://github.com/tainacan/tainacan/blob/master/src/classes/exposers/class-tainacan-exposers-handler.php#L8-L47)

---------------------------------
<br>

## `tainacan-register-importers`


Source: [class-tainacan-importer-handler.php](https://github.com/tainacan/tainacan/blob/master/src/classes/background-process/importer/class-tainacan-importer-handler.php), [line 92](https://github.com/tainacan/tainacan/blob/master/src/classes/background-process/importer/class-tainacan-importer-handler.php#L92-L92)

---------------------------------
<br>

## `tainacan-register-exporters`


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-exporter-handler.php](https://github.com/tainacan/tainacan/blob/master/src/classes/background-process/exporter/class-tainacan-exporter-handler.php), [line 52](https://github.com/tainacan/tainacan/blob/master/src/classes/background-process/exporter/class-tainacan-exporter-handler.php#L52-L52)

---------------------------------
<br>

## `tainacan-register-generic_process`


Source: [class-tainacan-generic-handler.php](https://github.com/tainacan/tainacan/blob/master/src/classes/background-process/generic-process/class-tainacan-generic-handler.php), [line 34](https://github.com/tainacan/tainacan/blob/master/src/classes/background-process/generic-process/class-tainacan-generic-handler.php#L34-L34)

---------------------------------
<br>

## `tainacan-api-collection-created`

*Receive a JSON with the structure of a Collection and return, in case of success insert
a Collection object in JSON*


Argument | Type | Description
-------- | ---- | -----------
`$response` |  | 
`$request` | `\WP_REST_Request` | 

Source: [class-tainacan-rest-collections-controller.php](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-collections-controller.php), [line 466](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-collections-controller.php#L466-L496)

---------------------------------
<br>

## `tainacan-api-item-updated`


Argument | Type | Description
-------- | ---- | -----------
`$updated_item` |  | 
`$attributes` |  | 

Source: [class-tainacan-rest-items-controller.php](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 975](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L975-L999)

---------------------------------
<br>

## `tainacan-api-item-duplicated`


Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$new_item` |  | 

Source: [class-tainacan-rest-items-controller.php](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 1039](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L1039-L1131)

---------------------------------
<br>

## `tainacan-submission-item-finish`

*Represents the Items REST Controller*


Argument | Type | Description
-------- | ---- | -----------
`$item` |  | 
`$request` |  | 

Source: [class-tainacan-rest-items-controller.php](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-items-controller.php), [line 11](https://github.com/tainacan/tainacan/blob/master/src/classes/api/endpoints/class-tainacan-rest-items-controller.php#L11-L1457)

---------------------------------
<br>

## `tainacan-bulk-edit-set-status`

*Sets the status to all items in the current group*


Argument | Type | Description
-------- | ---- | -----------
`$value` |  | 
`$this->get_id()` |  | 
`$select_q` |  | 
`$query` |  | 

Source: [class-tainacan-bulk-edit.php](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-bulk-edit.php), [line 223](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-bulk-edit.php#L223-L249)

---------------------------------
<br>

## `tainacan-pre-insert`


Argument | Type | Description
-------- | ---- | -----------
`$term` | `\Tainacan\Entities\Entity` | 

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 100](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L100-L112)

---------------------------------
<br>

## `tainacan-pre-insert-term`


Argument | Type | Description
-------- | ---- | -----------
`$term` | `\Tainacan\Entities\Entity` | 

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 100](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L100-L113)

---------------------------------
<br>

## `tainacan-insert`


Argument | Type | Description
-------- | ---- | -----------
`$new_entity` |  | 

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 100](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L100-L160)

---------------------------------
<br>

## `tainacan-insert-term`


Argument | Type | Description
-------- | ---- | -----------
`$new_entity` |  | 

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 100](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L100-L161)

---------------------------------
<br>

## `tainacan-pre-delete`


Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 269](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L269-L280)

---------------------------------
<br>

## `tainacan-pre-delete-term`


Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 269](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L269-L281)

---------------------------------
<br>

## `tainacan-deleted`


Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 269](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L269-L286)

---------------------------------
<br>

## `tainacan-deleted-term`


Argument | Type | Description
-------- | ---- | -----------
`$deleted` |  | 
`$permanent` | `bool` | this parameter is not used by Terms repository. Delete is always permanent

Source: [class-tainacan-terms.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php), [line 269](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-terms.php#L269-L287)

---------------------------------
<br>

## `register_filter_types`

*fetch all registered filter type classes*

Possible outputs are:
CLASS (default) - returns the Class name of of filter types registered
NAME - return an Array of the names of filter types registered


Source: [class-tainacan-filters.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-filters.php), [line 298](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-filters.php#L298-L312)

---------------------------------
<br>

## `tainacan-pre-insert`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 18](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L18-L31)

---------------------------------
<br>

## `tainacan-pre-insert-Item_Metadata_Entity`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 18](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L18-L32)

---------------------------------
<br>

## `tainacan-insert`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 18](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L18-L110)

---------------------------------
<br>

## `tainacan-insert-Item_Metadata_Entity`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` | `\Tainacan\Entities\Item_Metadata_Entity` | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 18](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L18-L111)

---------------------------------
<br>

## `tainacan-pre-delete`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 261](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L261-L261)

---------------------------------
<br>

## `tainacan-pre-delete-Item_Metadata_Entity`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 262](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L262-L262)

---------------------------------
<br>

## `tainacan-deleted`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 275](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L275-L275)

---------------------------------
<br>

## `tainacan-deleted-Item_Metadata_Entity`


Argument | Type | Description
-------- | ---- | -----------
`$item_metadata` |  | 
`true` |  | 

Source: [class-tainacan-item-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php), [line 276](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-item-metadata.php#L276-L276)

---------------------------------
<br>

## `register_metadata_types`

*fetch all registered metadatum type classes*

Possible outputs are:
CLASS (default) - returns the Class name of of metadatum types registered
NAME - return an Array of the names of metadatum types registered


Source: [class-tainacan-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php), [line 770](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php#L770-L784)

---------------------------------
<br>

## `tainacan-taxonomy-removed-from-collection`

*Triggers hooks when saving a Taxonomy Metadatum, indicating wich taxonomy was added or removed from a collection.*

This is used by Taxonomies repository to update the collections_ids property of the taxonomy as
a metadatum type taxonomy is inserted or removed


Argument | Type | Description
-------- | ---- | -----------
`$this->current_taxonomy` |  | 
`$collection` |  | 

Source: [class-tainacan-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php), [line 1628](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php#L1628-L1650)

---------------------------------
<br>

## `tainacan-taxonomy-added-to-collection`

*Triggers hooks when saving a Taxonomy Metadatum, indicating wich taxonomy was added or removed from a collection.*

This is used by Taxonomies repository to update the collections_ids property of the taxonomy as
a metadatum type taxonomy is inserted or removed


Argument | Type | Description
-------- | ---- | -----------
`$new_tax` |  | 
`$collection` |  | 

Source: [class-tainacan-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php), [line 1628](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php#L1628-L1654)

---------------------------------
<br>

## `tainacan-taxonomy-removed-from-collection`

*Class Metadata*


Argument | Type | Description
-------- | ---- | -----------
`$removed_tax` |  | 
`$collection` |  | 

Source: [class-tainacan-metadata.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php), [line 10](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-metadata.php#L10-L1705)

---------------------------------
<br>

## `tainacan-pre-insert`


Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 116](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L116-L135)

---------------------------------
<br>

## `tainacan-pre-insert-{$obj_post_type}`


Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 116](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L116-L138)

---------------------------------
<br>

## `tainacan-pre-insert-{$obj_post_type}`


Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 116](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L116-L171)

---------------------------------
<br>

## `tainacan-insert`


Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 
`$diffs` |  | 
`$is_update` |  | 

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 116](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L116-L200)

---------------------------------
<br>

## `tainacan-insert-{$obj_post_type}`


Argument | Type | Description
-------- | ---- | -----------
`$obj` | `\Tainacan\Entities\Entity` | 

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 116](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L116-L202)

---------------------------------
<br>

## `tainacan-pre-delete`


Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 632](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L632-L641)

---------------------------------
<br>

## `tainacan-pre-delete-{$post_type}`


Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 632](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L632-L642)

---------------------------------
<br>

## `tainacan-deleted`


Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 632](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L632-L654)

---------------------------------
<br>

## `tainacan-deleted-{$post_type}`


Argument | Type | Description
-------- | ---- | -----------
`$entity` | `\Tainacan\Entities\Entity` | 
`$permanent` | `bool` | If false, sendo to trash, if true, permanently delete. Default true

Source: [class-tainacan-repository.php](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php), [line 632](https://github.com/tainacan/tainacan/blob/master/src/classes/repositories/class-tainacan-repository.php#L632-L655)

---------------------------------
<br>

## `tainacan-upload-folder-renamed`

*When an item or collection is saved, it checks if the satus was changed and
if the items upload directory mus be renamed to add or remove the
private folder prefix*


Argument | Type | Description
-------- | ---- | -----------
`$full_path_check` |  | 
`$full_path` |  | 

Source: [class-tainacan-private-files.php](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-private-files.php), [line 276](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-private-files.php#L276-L327)

---------------------------------
<br>

## `tainacan-upload-folder-renamed`

*Rename all folders from items after a bulk edit operation move their statuses*

TODO: In the upcoming bulk edit refactor this must be handled as there are performance issues


Argument | Type | Description
-------- | ---- | -----------
`$found[0]` |  | 
`$target` |  | 

Source: [class-tainacan-private-files.php](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-private-files.php), [line 335](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-private-files.php#L335-L366)

---------------------------------
<br>

## `tainacan-pre-insert-attachment`

*Insert an attachment from an URL address.*


Argument | Type | Description
-------- | ---- | -----------
`$blob` | `\Tainacan\blob` | bitstream of the attachment
`$filename` | `string` | The filename that will be created
`$post_id` | `int` | (optional) the post this attachement should be attached to. empty for none

Source: [class-tainacan-media.php](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-media.php), [line 151](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-media.php#L151-L161)

---------------------------------
<br>

## `tainacan-post-insert-attachment`

*Insert an attachment from an URL address.*


Argument | Type | Description
-------- | ---- | -----------
`$attach_id` |  | 
`$attach_data` |  | 
`$post_id` | `int` | (optional) the post this attachement should be attached to. empty for none

Source: [class-tainacan-media.php](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-media.php), [line 151](https://github.com/tainacan/tainacan/blob/master/src/classes/class-tainacan-media.php#L151-L205)

---------------------------------
<br>

## `tainacan-register-mappers`


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-mappers-handler.php](https://github.com/tainacan/tainacan/blob/master/src/classes/mappers/class-tainacan-mappers-handler.php), [line 46](https://github.com/tainacan/tainacan/blob/master/src/classes/mappers/class-tainacan-mappers-handler.php#L46-L46)

---------------------------------
<br>

## `tainacan-register-vuejs-component`

*Class Components_Hooks*


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-component-hooks.php](https://github.com/tainacan/tainacan/blob/master/src/views/admin/classes/hooks/class-tainacan-component-hooks.php), [line 7](https://github.com/tainacan/tainacan/blob/master/src/views/admin/classes/hooks/class-tainacan-component-hooks.php#L7-L27)

---------------------------------
<br>

## `tainacan-register-admin-hooks`


Source: [class-tainacan-admin-hooks.php](https://github.com/tainacan/tainacan/blob/master/src/views/admin/classes/hooks/class-tainacan-admin-hooks.php), [line 15](https://github.com/tainacan/tainacan/blob/master/src/views/admin/classes/hooks/class-tainacan-admin-hooks.php#L15-L15)

---------------------------------
<br>

## `tainacan-register-vuejs-plugin`

*Class Plugins_Hooks*


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-plugin-hooks.php](https://github.com/tainacan/tainacan/blob/master/src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php), [line 7](https://github.com/tainacan/tainacan/blob/master/src/views/admin/classes/hooks/class-tainacan-plugin-hooks.php#L7-L24)

---------------------------------
<br>

## `tainacan-register-filter-type`

*Class FilterTypeHelper*


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-filter-type-helper.php](https://github.com/tainacan/tainacan/blob/master/src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php), [line 7](https://github.com/tainacan/tainacan/blob/master/src/views/admin/components/filter-types/filter-type-helper/class-tainacan-filter-type-helper.php#L7-L41)

---------------------------------
<br>

## `tainacan-register-metadata-type`

*Class MetadataTypeHelper*


Argument | Type | Description
-------- | ---- | -----------
`$this` |  | 

Source: [class-tainacan-metadata-type-helper.php](https://github.com/tainacan/tainacan/blob/master/src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php), [line 7](https://github.com/tainacan/tainacan/blob/master/src/views/admin/components/metadata-types/metadata-type-helper/class-tainacan-metadata-type-helper.php#L7-L40)

---------------------------------
<br>

## `tainacan-enqueue-admin-scripts`


Source: [class-tainacan-admin.php](https://github.com/tainacan/tainacan/blob/master/src/views/admin/class-tainacan-admin.php), [line 287](https://github.com/tainacan/tainacan/blob/master/src/views/admin/class-tainacan-admin.php#L287-L287)

---------------------------------
<br>

## `tainacan-enqueue-roles-scripts`


Source: [class-tainacan-roles.php](https://github.com/tainacan/tainacan/blob/master/src/views/roles/class-tainacan-roles.php), [line 54](https://github.com/tainacan/tainacan/blob/master/src/views/roles/class-tainacan-roles.php#L54-L54)

---------------------------------
<br>

## `tainacan-dashboard-before-cards`


Source: [page.php](https://github.com/tainacan/tainacan/blob/master/src/views/dashboard/page.php), [line 27](https://github.com/tainacan/tainacan/blob/master/src/views/dashboard/page.php#L27-L27)

---------------------------------
<br>

## `tainacan-dashboard-after-cards`


Source: [page.php](https://github.com/tainacan/tainacan/blob/master/src/views/dashboard/page.php), [line 40](https://github.com/tainacan/tainacan/blob/master/src/views/dashboard/page.php#L40-L40)

---------------------------------
<br>

<p align="center"><a href="https://github.com/pronamic/wp-documentor"><img src="https://cdn.jsdelivr.net/gh/pronamic/wp-documentor@main/logos/pronamic-wp-documentor.svgo-min.svg" alt="Pronamic WordPress Documentor" width="32" height="32"></a><br><em>Generated by <a href="https://github.com/pronamic/wp-documentor">Pronamic WordPress Documentor</a> <code>1.2.0</code></em><p>

