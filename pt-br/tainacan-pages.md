<div style="float: right; margin-left: 1rem;">
	<img 
		alt="See in Theme Icon" 
		src="/en/_assets/images/icon_see.png"
		width="42"
		height="42">
</div>

# Tainacan Pages

With the Tainacan plugin activated in your WordPress site, a set of special pages is automatically created. These are:

* **Collections Page** (`/collections`)
* **All Items Page** (`/items`)
* **Items Page of a Specific Collection** (`/collection-name`)
* **Items Page of a Specific Taxonomy Term** (`/taxonomy-name/term-name`)

As soon as you create Collections, Items, and Terms, these pages become available and accessible on your site. In general, within the Tainacan admin panel, you’ll find links to these pages via buttons with an eye icon (like the one in the top right of this page). In addition, you can also create *custom pages* to present your collections or add more information about your repository. These are two different approaches available thanks to the **integration between Tainacan and WordPress**. Learn more below:

* [Special Pages Created by Tainacan](#special-pages-created-by-tainacan)
* [Creating Your Own Pages with Gutenberg Blocks](/en/gutenberg-blocks)

## Special Pages Created by Tainacan

![Screenshot showing examples of the special pages created by Tainacan, using the Tainacan Interface theme](/_assets/images/paginas_especiais_tainacan.png)

### Collections Page

`/collections` or `/colecoes` (if your site is in Portuguese)

Available on your site as soon as you create a collection, this page lists all available collections, offering ordering, search, pagination, and table or card-style displays. It’s a great way to give the public a structured and easy-to-navigate view of the collections available in your repository.

### All Items Page

`/items` or `/itens` (if your site is in Portuguese)

Available as soon as any item is created within any collection, this page lists **all items across all collections** in your repository. It provides several viewing modes, ordering options based on global metadata, and displays all available filters across every collection, plus an additional filter for collections. 

Although this page gives access to every item, it **should be used with caution**. For example, filtering by a specific collection’s metadata may hide certain results, which can be confusing for users unfamiliar with your repository’s structure.

### Specific Collection Item Pages

`/collection-name`

This is generally the most important page in any Tainacan installation. Here, you can browse and search within a specific collection. Its available features include:

* A **Collection Header** (with a customizable image, color, and description defined in the collection’s settings);
* **Filters** (those available in the admin panel, as long as they’re set to public);
* **Simple Text Search** and **Advanced Search**;
* **Ascending or Descending Ordering** across all public metadata fields;
* Multiple **Viewing Modes**, including a **Fullscreen Mode** (which can be enabled or disabled in the collection’s settings);
* A **Related Links Modal**, allowing access to the listing in different formats like JSON, HTML, CSV, or PDF (if the [PDF Exposer plugin](/en/plugin-pdf-exposer) is installed), and making data mapping possible.

Keep in mind that this item listing page is the actual page of the collection. When a user clicks a specific collection from the site’s *Collections List*, this is the page that will be shown. However, you can also create a [custom presentation page](/en/gutenberg-blocks) and configure it as the entry point for your collection, before directing the visitor to the item listing. This can be set in the **Collection Settings**, under the **Cover Page** option.

### Specific Term Item Pages

`/taxonomy-name/term-name`

Similar to a specific collection page, this page lists all items that have a taxonomy-type metadata associated with a specific term. Its main difference is that its header displays the term’s image and description (configurable in the term’s edit settings).

This page is ideal for creating the concept of “multi-collection exhibitions” within your repository. For example, if you have a Paintings collection and an Architecture collection that utilize different metadata fields, but both use an **Art Movement** taxonomy, you can display all items classified as the **Renaissance Movement** in one place, aggregating works from both collections.