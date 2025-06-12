?> _TODO_  This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Items Icon" 
		src="_assets/images/icon_items.png"
		width="42"
		height="42">
</div>

# Items

**Items** are the actual content of the repository. The *painting*, the *movie*, the *book*, and so on. These items belong to a collection and have all the metadata configured for the **collection** to which they belong.

> In *WordPress* terminology, each item is a **post**, and its post type represents its **collection**.

The **Item** is the combination of a document (*media*, *text*, or *URL*), its metadata, and any attached documents.

An item will always belong to a specific collection, and during its submission, the metadata inherited from the repository or parent collection will be filled in, along with the metadata configured for the collection it will belong to.

<!-- tabs:start -->

#### ** Create **
## Create Items

### Video Tutorial: Creating Items

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/spf9qfmXU3U?start=16"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

1. Access the *WordPress* control panel;
2. In the left sidebar, click on Tainacan;
3. In the **Collections** section, click on the desired collection;
4. Click on `add new` in the upper left corner.
  * Click on `add an item` to submit a single item.
  * Or click on `add items in bulk` to add items in batches. (See [Bulk Actions](/pt-br/bulk-edition) to learn more).
  * Or click on `import items` to add a large batch of items (See [Bulk Actions](/pt-br/bulk-edition) to learn more).
5. Choose the type of media that will compose the Item:
  * **File**: upload multimedia files such as *Images*, *Audio*, *Text Files*, *Videos*, etc. (See [this article](https://imasters.com.br/back-end/como-incorporar-arquivos-de-audio-e-video-no-wordpress) about WordPress file compatibility).
    * Select the file from the *media library* or upload it from your computer.
  * **Plain text**: A field for inserting unformatted text.
  * **URL**: allows embedding multimedia links (*embed*) from various sites (such as *YouTube*, *Vimeo*, etc.).
6. Determine the item's privacy in the visibility options:
  * **Visible to everyone**: the item will be visible to everyone (depending on the privacy parameters of the collection).
  * **Visible only to editors**: visible only to collection editors. (See [User Permissions](/pt-br/users) to learn more).
7. Define a thumbnail for the item:
  1. Click on the **pencil** icon in the square illustrating the thumbnail.
  2. Select the file from the *media library* or upload it from your computer:
    * Some document types, such as *.pdf* files, images, videos, URLs, etc., automatically generate their own thumbnail.
    * Even in these cases, the thumbnail can be changed normally.
8. Define whether the item can receive comments:
  * Comments can be managed in the *WordPress control panel* comments section (learn more in the [WordPress documentation](https://codex.wordpress.org/pt-br:Painel_Coment%C3%A1rios)).
9. Fill in the available fields in the metadata section:
  1. Each collection will offer a set of metadata for completion according to the repository and collection metadata settings (See [Metadata](/pt-br/metadata) and [Collections](/pt-br/collections) to learn more).
  2. Metadata configured as **mandatory** will not allow the item to be saved as *draft* or *published* if they are not filled in. (See [Metadata](/pt-br/metadata) and [Collections](/pt-br/collections) to learn more).
10. To complete the creation of the item, choose:
  * `Save as Draft`: The item will not be published in the collection but will be saved in the collection as **Draft**.
  * `Publish`: The item will be published in the collection.
  * `Discard`: to cancel the creation of the item.

#### ** Edit **
## Edit Items

1. Access the *WordPress* control panel;
2. In the left sidebar, click on Tainacan;
3. In the **Collections** section, click on the desired collection;
4. In the **items** list, select the item you want to edit;
5. The item will be displayed along with its respective information:
6. Select `Edit Item` to modify its information;
  * Or select `View Item` to view the item in your site's theme;
7. All **Item** parameters can be changed, including the type of document that composes it.
  * Items **cannot** be migrated from one collection to another.
8. To complete the item editing, choose:
  * `Send to trash`: to delete the item and its information;
  * `Revert to draft`: to turn the item into a draft;
  * `Update`: to save the changes.

#### ** Delete **
## Delete Items

1. Access the *WordPress* control panel;
2. In the left sidebar, click on Tainacan;
3. In the **Collections** section, click on the desired collection;
4. In the items list, click on the trash icon to the right of the item you want to delete;

  !> **Attention**: deleting the item also implies deleting the document, metadata information, and attachments. This operation can only be undone by administrators. (See [Activity Log](/pt-br/activities) to learn more).

  !> **Attention**: Delete the item only if you are sure there will be no significant loss of information (See [Activity Log](/pt-br/activities) to learn more).

<!-- tabs:end -->