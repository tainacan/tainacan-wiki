?> _TODO_  This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Collections Icon" 
		src="_assets/images/icon_collections.png"
		width="42"
		height="42">
</div>

# Collections

A "collection" is a group of items that share the same set of metadata. Each item sent to your digital repository will belong to a single collection.

> For example: you can have a collection of *"paintings"* with metadata such as *"Title"*, *"Author"*, *"Country"*, *"Technique"*, etc., and another collection for *"movies"*, with *"Title"*, *"Director"*, *"Country"*, *"Duration"*, and *"Genre"*.

For each collection, you can configure a different set of metadata; however, they can share common taxonomies, which means, for example, that you can navigate through items from a *"country"* and get results for both *"paintings"* and *"movies"*.

> See the section [Taxonomies](#taxonomias) to learn more.

Collections can also have **child collections**, which will inherit their metadata, and additional metadata can be added to their set.

<!-- tabs:start -->

#### ** Create **

## Create Collections
1. Access the *WordPress* control panel;
2. In the left sidebar, click on "Tainacan";
3. Click on `Create Collection` in the **Collections** section;  
  1. Name the collection in the **Name** field;
  2. Define its status as **public**, **private**, **draft**, or **trash**. 
    * **Public**: Collections defined as public will be visible as soon as they are created. 
    * **Draft**: *Draft* collections will be visible to users with permission to access the Tainacan administrative panel (e.g., editors, moderators, and administrators). (See [User Permissions](/pt-br/users) to learn more). 
    * **Private**: *Private* collections will only be visible to their creator and moderators of this collection. 
    * **Trash**: Collections in *trash* will be visible to users with permission to access the Tainacan administrative panel (e.g., *editors*, *moderators*, and *administrators*). (See [User Permissions](/pt-br/users) to learn more). 
  3. Define a thumbnail and a header image with images that represent the content that will be part of this collection. 
    * The **thumbnail image** will represent the collection in different environments in the plugin and repository theme (similar to a profile picture on *Facebook*).
    * The **header image**, or header, appears in the collection view, depending on the settings and layout adopted. The default *Tainacan* theme displays the *header* image on the collection page.  
  4. Enable the cover page and add the specific URL if you are creating a page with a custom layout to display your collection.
4. Enter a description about the content that will be part of this collection.
  5. Select one or more visualization modes (available in the theme) for navigation in the collection view. 
  6. Choose a root collection to inherit metadata from another collection. (See [Metadata](/pt-br/metadada) to learn more). 
  7. Select whether or not to **Allow Comments** in the collection; comments can be managed in the WordPress comments section (learn more in the [WordPress documentation](https://codex.wordpress.org/pt-br:Painel_Coment%C3%A1rios)). 
  8. In the **Moderators** field, you can add other users for new assignments in this specific collection:
    * To add moderators, type at least the first three letters of the user and select from the list. (See [User Permissions](/pt-br/users) to learn more).  
  9. The **slug** field allows you to change the end of the URL for this collection. By default, it is created based on the Collection Name but can be changed in this field. 
5. Click on one of the options below (the collection will be created with the privacy parameters defined in **Status**):
  10. Click on `Save and go to Metadata` to access the metadata configuration for this collection. (See [Metadata](/pt-br/metadada) to learn more). 
  11. or
  12. Click on `Save and go to Filters` to access the filter configuration for this collection. (See [Filters](/pt-br/filters) to learn more); 
  13. Click on `Finish` to complete the configuration of this new collection.

New collections can also be created with a predefined metadata model or imported from external sources.
Collections created with predefined metadata have a set of metadata pre-established during their creation and can be managed in the same way as other collections. 
> Since version 0.6 of the plugin, there is an option to create collections with a metadata set based on the **Dublin Core** model.

> New metadata sets can be developed according to the individual needs of each installation and/or added to Tainacan (See [Plugin Development](/pt-br/dev/) to learn more about Tainacan development).

See the [Bulk Actions](/pt-br/bulk-edition) and [Tainacan Importers](/pt-br/importers) sections to learn more about creating items and terms in bulk.

#### ** Edit **
## Edit Collections
1. Access the *WordPress* control panel;
2. In the left sidebar, click on *Tainacan*;
3. In the **Collections** section, click on the gear icon to the right to edit the desired collection.

#### ** Delete **
## Delete Collections
1. Access the *WordPress* control panel;
2. In the left sidebar, click on *Tainacan*;
3. In the collections list, click on the *trash icon* to delete the desired collection;
  * Deleted collections go to the **Trash** tab in collections.

### Undo Deleted Collections
1. To undo the deletion of **collections**, access the **Trash** tab;
2. In the list of displayed collections, click on the *gear icon* to the right of the desired collection;
  1. Edit the collection by changing the *status* to **public**, **private**, or **draft**; 
    * **Public**: Collections defined as public will be visible as soon as they are created; 
    * **Draft**: *Draft* collections will be visible to users with permission to access the Tainacan administrative panel (e.g., editors, moderators, and administrators). (See [User Permissions](/pt-br/users) to learn more). 
    * **Private**: Private collections will only be visible to their creator and moderators of this collection. 
3. In the collections list of the **Trash** tab, it is also possible to permanently delete the collection. 

!> **Attention**: Deleting the collection also implies deleting its items, metadata, and information from this collection. This operation can only be undone by administrators. (See [Activity Log](/pt-br/activities) to learn more). Delete the collection only if you are sure there will be no significant loss of information. (See [Activity Log](/pt-br/activities) to learn more).

<!-- tabs:end -->