# Opciones de la interfaz gráfica del administrador

Desde la versión 0.19, Tainacan ofrece una serie de variables que pueden ayudarte a personalizar el panel de administración. La mayoría de estas variables significan ocultar elementos. Se pueden pasar directamente a la URL del admin como query params, pero lo ideal es usar un filtro para ello. Por ejemplo

```php
/*
 * Envía parámetros a las opciones de administración de Tainacan
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
add_filter('tainacan-admin-ui-options', 'my_plugin_tainacan_admin_options');
```

Lo mismo podría lograrse para la creación de prototipos accediendo a su URL de administración de la siguiente manera:
`https://<your-site.com>/wp-admin/?homeCollectionsOrderBy=name&hideTainacanHeaderAdvancedSearch=true&hideItemsListCreationDropdownImport=true&page=tainacan_admin#/collections/`

A continuación se muestra la lista completa de variables disponibles, organizadas por regiones de la interfaz de usuario. Observa que algunas variables de los elementos de ocultación pueden ser anuladas por otras:

## Página principal, Sección del Repositorio

- `hideHomeRepositorySection`
  - `hideHomeThemeCollectionsButton`
  - `hideHomeThemeItemsButton`
  - `hideHomeTaxonomiesButton`
  - `hideHomeMetadataButton`
  - `hideHomeFiltersButton`
  - `hideHomeImportersButton`
  - `hideHomeExportersButton`
  - `hideHomeActivitiesButton`

## Página principal, Sección de Colecciones

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

## Cabecera principal de Tainacan

- `hideTainacanHeader`
  - `hideTainacanHeaderHomeButton`
  - `hideTainacanHeaderSearchInput`
  - `hideTainacanHeaderAdvancedSearch`
  - `hideTainacanHeaderProcessesPopup`

## Menú del Repositorio de Tainacan

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

## Subtítulo del Contexto Tainacan

- `hideRepositorySubheader`
  - `hideRepositorySubheaderViewCollectionButton`
  - `hideRepositorySubheaderViewCollectionsButton`
  - `hideRepositorySubheaderExportButton`
- `hideCollectionSubheader`

## Página de lista de elementos

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

## Página de edición de elementos

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
- `allowItemEditionModalInsideModal` // ¡No recomendado!
- `itemEditionDocumentInsideTabs`
- `itemEditionAttachmentInsideTabs`

## Elemento de una sola página

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

## Página de edición masiva de elementos

- `hideBulkEditionPageTitle`
