<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Filtros" 
		src="_assets/images/icon_filters.png"
		width="42"
		height="42">
</div>

# Filters

For each collection you can choose which of your metadata will be used as a filter option for results in a faceted search in the collection view.
Therefore, the prerequisites for using the filters in the repository are:

* Create [metadata](/metadata) at the **repository** or **collection** level;
* Fill in the metadata fields of [Items](/items);
And then [configure filters](#configure-filters) at the **repository*** or **collection** level

**Filters** allow the user to change the view of items in a collection from the metadata data that has been configured as a filter.

-----

## Configure Filters

1. Access the *WordPress* Control Panel;
2. In the left sidebar click on Tainacan and then:
  1. Create Filters at **Repository** level:
      * Click on Filters from the **Repository** to configure filters that will be inherited by all collections. They must be thought to allow the navigation from global information with objective vocabularies. (For example: Type of file, Date of record of the item, State of Conservation, etc.)
  2. Create Filters at **Collections** level.
      * Filters at collection level are applied only to items created in this collection. The visualization of the collection filters also inherits the repository-level filters
      * Create or choose the collection you want to create new filters (See [Create collection](/collections#create-collections) and [Create metadata](/metadata#create-metadata) to learn more;
        1. Click the **Filters** icon on the right, in the upper gray bar;
        2. To create filters at collection level, it is necessary to previously create metadata in the respective collection (See [Create metadata](/metadata#create-metadata)), and then these metadata will be available to be configured as filters.
3. In the filters edition screen (the *repository level* or the *collection level*), you can view the metadata already created in the repository or collection, displayed in the list on the right, in the section **available metadata**. In this list it is possible to visualize the types of metadata already created and available for the creation of the filter.

## General Characteristics of Filters

* All metadata created or inherited by the collection are available for filter creation
* Metadata at **repository level** are represented with the repository icon
* Metadata at **collection level** (or inherited from a collection) are represented with the collection icon

!> **Warning**: The filter will cease to exist if its respective metadata is disabled or deleted. The exclusion of the filter only implies the navigability of the collection view. This operation can only be undone by administrators. (See [Activity log](/activities) for more information)
* The values filled in the metadata of each item will appear as an option for selection in each filter, according to their configured **type of metadata** settings.
* Tainacan currently has **seven types of metadata** by default, but new sets can be developed according to the individual needs of each installation and/or added to the Tainacan core. (See the article on [Plugin Development](/dev/) for more information)

## Types of Filters

Each type of metadata offers different types of filters for creation, see the variations below:

### Filters available for each Type of Metadata

<details>
<summary>Text:</summary>

* Selection List (selectbox)
* Autocomplete (autocomplete)
* Term insertion (taginput)
* Multiple Selection Boxes (checkbox)
</details>

<details>
<summary>Texto Longo</summary>

* Selection List (selectbox)
* Autocomplete (autocomplete)
* Term insertion (taginput)
* Multiple Selection Boxes (checkbox)
</details>

<details>
<summary>Numeric</summary>

* Numeric Interval (Custom_Interval)
* Numeric *(Inserted in version 0.10)*
</details>

<details>
<summary>Date</summary>

* Dates Range (Custom_Interval)
* Date *(Entered in version 0.10)*
</details>

<details>
<summary>Selection List</summary>

* Selection List (selectbox)
* Autocomplete (autocomplete)
* Term insertion (taginput)
* Multiple Selection Boxes (checkbox)
</details>

<details>
<summary>Taxonomies</summary>

* Term insertion (taginput)
* Multiple Selection Boxes (checkbox)
</details>

<details>
<summary>Relationships</summary>

* Autocomplete (autocomplete)
* Term insertion (taginput)
* Multiple Selection (checkbox)
</details>

> Note: When selecting a filter type for the creation, an example screen will be displayed to illustrate the characteristics of each type of filter value input.


<!-- tabs:start -->

#### ** Create Filters **
## Create Filters

1. Choose a metadata from the list of **metadata available**;
  1. Each type of metadata offers different configuration options when creating the filter (See [Types of Metadata](/metadata#types-of-metadata)).
  2. When selecting a metadata type for the creation of the filter, an example screen will be displayed to illustrate the characteristics of each type of filter value input;
  3. See the [Available Filter Types](#types-of-filters)
2. After setting up the filter, click `Next` or click `Cancel` to abort the mission.
3. Fill in the following fields (optional):
  1. Name the filter (by default the name of the filter is the same as its respective metadata)
  2. Create a description for the filter.
  3. Set the *Status* of the filter between:
    **Visible to all**: the filter appears to all in the collection view
    **Only visible for editors**: the filter appears only for editors of the collection in the collection view in the administrative panel.
4. Click on `Save` or click `Cancel` to abort the mission.
5. Once saved, the filter created will appear in the left sidebar in the collection view.

#### ** Edit Filters **
## Edit Filters

1. Access the *WordPress* control panel
2. In the left sidebar, click on Tainacan
3. To edit filters at the **repository** level click on `Repository Filters`:
  1. Click on the desired **filter** pencil icon to edit its options
  2. Change the desired options, when finished click on `Save` or click `Cancel` to abort the mission.
4. To edit collection-level filters select the desired collection in the `Collections` section
  1. On the icons to the right of the gray top bar select `Filters`
  2. Click on the **pencil icon** of the desired filter to edit its options
  3. Change the desired options, when finished click `Save` or click `Cancel` to abort the mission
  4. For **Inherited filters** at the repository or collection level above can be disabled. Disabled filters will not be displayed in the collection view.

#### ** Exclude Filters **
## Exclude Filters

1. Access the *WordPress* control panel;
2. In the left sidebar, click on Tainacan;
3. To edit filters at the **repository** level click on `Repository Filters':
  1. To delete, click on the **dump** icon of the desired filter;
    
    !> Warning: Clicking on the **dump icon** the filter is deleted immediately.
    * Metadata at collection level (or inherited from a collection) are represented with the **Collection** icon
    * Another option available for inherited filters at the **repository** or **collection level above** is to disable the desired filter (instead of exclusion)
    
    !> Warning: the exclusion of the filter only implies in the navigability of the collection visualization. This operation can only be undone by administrators. (See [Activity log](/activities) to know more). The filter will automatically disappear if its respective metadata is disabled or deleted.
    * To *retrieve* the desired filter, just create the filter again.
4. To edit filters at **collections** level select the desired collection in the `Collections` section;
  2. In the icons to the right of the upper gray bar select **Filters**;
  3. To delete, click on the **bin icon** of the desired filter;
    
    !> **Warning**: Clicking on the **dump icon** the filter is deleted immediately.
    * Metadata at collection level (or inherited from a collection) are represented with the Collection icon
    * Another option available for inherited filters at the **repository** or **collection level above** is to disable the desired filter (instead of exclusion);
    
    !> **Warning**: the exclusion of the filter implies only in the navigability of the collection view. This operation can only be undone by administrators. (See [Activity log](/activities) for more information). The filter will automatically cease to exist if its respective metadata is disabled or deleted.
    * To *retrieve* the desired filter, just create the filter again.

<!-- tabs:end -->