# Admin UI Options

Since version 0.19, Tainacan offers a series of variables that can help you customize the admin panel. Most of this variables mean hidding elements. They can be passed directly to the admin URL as query params, but the ideal way is to use a filter for it. For example:

```php
/*
 * Sends params to the Tainacan Admin Options
 */
function my_plugin_tainacan_admin_options($options) {

	$my_admin_options = [
        'homeCollectionsOrderBy' => 'name',
        'hideTainacanHeaderAdvancedSearch' => true,
        'hideItemsListCreationDropdownImport' => true
    ];
	$options = array_merge($options, $my_admin_options);

	return $options;
};
add_filter('set_tainacan_admin_options', 'my_plugin_tainacan_admin_options');
```

The same could be achieved for prototyping by accessing your admin URL like this:
`https://<your-site.com>/wp-admin/?homeCollectionsOrderBy=name&hideTainacanHeaderAdvancedSearch=true&hideItemsListCreationDropdownImport=true&page=tainacan_admin#/collections/`

Follows the complete list of available variables. Notice that some hidding elements variables can be overriden by others:

- `hideHomeRepositorySection`
  - `hideHomeThemeCollectionsButton`
  - `hideHomeThemeItemsButton`
  - `hideHomeTaxonomiesButton`
  - `hideHomeMetadataButton`
  - `hideHomeFiltersButton`
  - `hideHomeImportersButton`
  - `hideHomeExportersButton`
  - `hideHomeActivitiesButton`
- `hideHomeCollectionsSection`
  - `hideHomeCollectionsButton`
  - `hideHomeCollectionItemsButton`
  - `hideHomeCollectionSettingsButton`
  - `hideHomeCollectionMetadataButton`
  - `hideHomeCollectionFiltersButton`
  - `hideHomeCollectionActivitiesButton`
  - `hideHomeCollectionThemeCollectionButton`
  - `showHomeCollectionCreateItemButton` // Default is false
  - `homeCollectionsPerPage` // Default is 9
  - `homeCollectionsOrderBy` // Default is 'modified'
  - `homeCollectionsOrder` // Default is 'desc'
- `hideTainacanHeader`
  - `hideTainacanHeaderHomeButton`
  - `hideTainacanHeaderSearchInput`
  - `hideTainacanHeaderAdvancedSearch`
  - `hideTainacanHeaderProcessesPopup`
- `hidePrimaryMenu`
  - `hidePrimaryMenuCompressButton`
  - `hidePrimaryMenuRepositoryButton`
  - `hidePrimaryMenuCollectionsButton`
  - `hidePrimaryMenuItemsButton`
  - `hidePrimaryMenuTaxonomiesButton`
  - `hidePrimaryMenuMetadataButton`
  - `hidePrimaryMenuFiltersButton`
  - `hidePrimaryMenuImportersButton`
  - `hidePrimaryMenuExportersButton`
  - `hidePrimaryMenuActivitiesButton`
  - `hidePrimaryMenuCapabilitiesButton`
- `hideRepositorySubheader`
  - `hideRepositorySubheaderViewCollectionButton`
  - `hideRepositorySubheaderViewCollectionsButton`
  - `hideRepositorySubheaderExportButton`
- `hideCollectionSubheader`

- `hideItemsListPageTitle`
- `hideItemsListMultipleSelection`
- `hideItemsListSelection`
- `hideItemsListBulkActionsButton`
- `hideItemsListCreationDropdown`
  - `hideItemsListCreationDropdownBulkAdd`
  - `hideItemsListCreationDropdownImport`
- `hideItemsListAdvancedSearch`
- `hideItemsListExposersButton`
- `hideItemsListStatusTabs`
  - `hideItemsListStatusTabsTotalItems`
- `hideItemsListContextMenu`
  - `hideItemsListContextMenuOpenItemOption`
  - `hideItemsListContextMenuOpenItemOnNewTabOption`
  - `hideItemsListContextMenuEditItemOption`
  - `hideItemsListContextMenuCopyItemOption`
  - `hideItemsListContextMenuDeleteItemOption`
- `hideItemsListActionAreas`
- `hideItemsListFilterCreationButton`

- `hideItemEditionPageTitle`
- `hideItemEditionCollectionName`
- `hideItemEditionStatusOptions`
  - `hideItemEditionStatusPublishOption`
- `hideItemEditionCommentsToggle`
- `hideItemEditionDocument`
  - `hideItemEditionDocumentFileInput`
  - `hideItemEditionDocumentTextInput`
  - `hideItemEditionDocumentUrlInput`
- `hideItemEditionThumbnail`
- `hideItemEditionAttachments`
- `hideItemEditionCollapses`
- `hideItemEditionFocusMode`
- `hideItemEditionRequiredOnlySwitch`
- `hideItemEditionMetadataTypes`
- `allowItemEditionModalInsideModal` // Not recommended!
- `itemEditionDocumentInsideTabs`
- `itemEditionAttachmentInsideTabs`

- `hideBulkEditionPageTitle`

- `hideItemSinglePageTitle`
- `hideItemSingleCollectionName`
- `hideItemSingleCurrentStatus`
- `hideItemSingleCurrentVisibility`
- `hideItemSingleCommentsOpen`
- `hideItemSingleDocument`
- `hideItemSingleThumbnail`
- `hideItemSingleAttachments`
- `hideItemSingleActivities`
- `hideItemSingleExposers`
