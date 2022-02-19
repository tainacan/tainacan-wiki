# General Concepts

### Video Tutorial: Using Tainacan - General Concepts (Portugeuse)
<iframe
    width="560"
    height="513"
    src="https://www.youtube.com/watch?v=fzbd36fbuII?start=52"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## Collections

A collection is a group of items that share the same metadata. Every item added to your digital repository will belong to a single collection.

>For example: you can have a collection of "paintings" with metadata like "Title", "Painter", "Country", "Technique", etc. and another collection for "Movies" with "Title", "Director", "Country", "Duration", and "Gender".
For each collection you can configure a different set of metadata, however they can share common taxonomies, which means, for example, that you can browse items from a “country” and get results from “paintings” and “films”. ” in the results.

> [See the Taxonomies section](#taxonomies)
Collections can also have “child” collections, which will inherit their metadata and from there can also add other metadata for additional information.

## Items

Items are the actual contents of the repository. The “painting”, the “film”, the “book” and so on. These items are from a collection and have all the metadata configured for the collection they belong to.

> In WordPress parlance, each item is a post and your post type represents your collection.
### Document

The document is the main information of the item. It is the object that the metadata refers to. Tainacan accepts 3 types of documents:
* **"File"**: A file added to the item. It can be an image, video, pdf, audio or other supported file type.
* **"URL"**: a link to a website with external content or file. These links can be to a generic website, a specific file or media services. In the case of media services (like YouTube for example) Tainacan recognizes the address and displays the appropriate player using [oEmbed](https://oembed.com/). he list of services compatible with converting to “embeds” in WordPress can be consulted [at this link](https://codex.wordpress.org/Embeds).
* **"Text"**:  A plain text, stored directly in the database, the user can type when creating or editing an item.

> The “document type” can be changed after submitting the item. For example: you can send the item with a document of type “text” for reference and later insert the “file” or “URL” belonging to it.
## Metadata

Metadata is information about the document.

Each collection has a set of metadata to describe its documents. This means that the collection the item belongs to determines the metadata it has.

Each metadata has a set of possible settings. Is metadata required? Are your values unique for each item (A registration number, for example)? Does it accept multiple values (Multiple authors, for example)?

### Video Tutorial: Creating Metadata (Portuguese)
<iframe
    width="560"
    height="513"
    src="https://www.youtube.com/embed/fzbd36fbuII?start=433"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> [See the Metadata Types section](#metadata-types)
It is possible to configure repository-level metadata, which will be inherited by all collections in the repository. Likewise, collections configured as “child” inherit all metadata from the selected collection.

> [See the Collections section](#collections)
>  It is possible to configure repository-level metadata, which will be inherited by all collections in the repository. Likewise, collections configured as “child” inherit all metadata from the selected collection.
### Metadata Types

Metadata Types are objects that represent the types of metadata that can be used.

> Some examples of Metadata Types are “Text”, “Long Text”, “Date”, “Relationship”, etc.
Each metadata type has its own settings and web components that will be used in rendering your interface.

Metadata Types can be created via plugins and extend the default set of types provided with Tainacan.

## Filters

For each collection it is possible to choose which of its metadata will be used as a filter option for results in a faceted search in the collection view.

> Filters allow the user to filter the view of items in a collection.
### Filter Types

 Filter Types are different types of interfaces for filtering items based on a specific metadata type in collections.

* **Input text** - text input
* **Datepicker** - date picker
* **Date range picker** - date range selection
* **Number range slider** - numeric range slider
* **Selectbox** - multiple selection list

Each Filter Type object has its own settings and web components that will be used in rednering its interface.

> Filter Types can be created via plug-ins and extend the standard set of Tainacan filter types.
## Taxonomies

Taxonomies can be created and used to classify items. Examples of common taxonomies are Genre, Countries, etc.

> In WordPress parlance, they are custom taxonomies. See the [WordPress documentation to learn more](https://wordpress.org/support/article/taxonomies/).
Each taxonomy has a set of terms, for example the taxonomy “genre” might have terms like “drama” and “comedy”. Terms can be hierarchical, which means that when you search for items that have terms with child terms (eg, “Samba”), the results will include items that have any of the child terms. (For example, “Samba de Gafieira” and “Samba Maxixe”).

Terms can also have a description, an icon or an image that represents them and can also be linked to an existing concept or ontology. Terms can also have their own URL on the site, with a page listing all items related to it, including from different collections, so they behave as if they were a collection.

>  Taxonomies can be shared across multiple collections. [See the topic “Types of Metadata” to learn how.](#tipos-de-metadados)
### Video Tutorial: Filters and Taxonomies

<iframe
    width="560"
    height="513"
    src="https://www.youtube.com/embed/y2WIzDyzKSs?start=17"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## Under Discussion

This section gathers some features that are under discussion for development!

### Types of Items

Item types enable the ability to specialize the item description based on its nature. Thus, within the same collection it is possible to have items that vary in nature and therefore have a different set of metadata.

For each item type it is possible to choose a group of metadata, in the same way as for a collection. When you create an item within a collection, it will have all the metadata chosen for that collection and also the metadata related to its type.

An item type can be anything. For example, LPs, books, and paintings are distinct item types that can have specific metadata. But it could also have abstract concepts such as “financial transactions”.

### Workspace

The workspace contains items that are not yet part of collections. This function can be useful for uploading multiple items to the repository to later organize them into collections.

Items in the “workspace” are not publicly visible and have only the metadata configured at the repository level.

### Themed Collections

“Themed collections” are another way to organize the items in your repository. In essence, each themed collection is a term within a taxonomy called “Themed Collections”, which can contain items from any collection, and an item can be part of multiple themed collections.

The logic is the same as the terms in taxonomies, the only difference is that with this there is another way of managing these collections.

Another idea here is that, having a “fixed taxonomy” called Thematic Collections, we could have just one menu item “Taxonomies” or “Organize by taxonomies” that allows browsing the items by taxonomy rather than collections, and manipulate them
