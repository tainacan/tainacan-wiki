?> This page is still under construction

# Creating Compatible Themes

Tainacan plugin offers management tools for creating and organizing your repository, but in the end, publishing it online is one of the most important features to be desired. To avoid *reinventing the wheel*, all the work of having navigation menus, home pages, etc are handled by WordPress with its ecosystem of CMS features, plugins and of course, **themes**. 

> Themes are the default way that WordPress allows customizing the appearance of your website. They can show different layouts, font, and colors, but beyond that, they can offer customizations of different sorts.

Considering that, the development of the plugin was made in sync with the production of an "official theme", planned to attend the majority of use cases, which is the [Tainacan Interface](https://wordpress.org/themes/tainacan-interface/). Nevertheless, if you are a developer and have interest on adapting your theme to support some Tainacan features, you are free to do it by using some tooling that is described on this page. Here is a summary of what you can do:

* [Creating custom templates](#tainacan-custom-templates) to one of [Tainacan pages](tainacan-pages.md);
* [Registering custom Extra View Modes](/dev/extra-view-modes.md);
* Using form hooks to add extra properties to some Tainacan Entity;
* Using the latest Block Editor - Gutenberg features;

## Tainacan Custom Templates

When using Tainacan plugin with your custom theme enabled, you'll have access to any of [Tainacan pages](tainacan-pages.md) such as Items, Collections and Taxonomy Terms in the same way that WordPress displays any **custom post_type**. An Item's list, for example, will have thumbnails, title and description in the same appearance that your blog posts, without all the features of Collection banner, filters list or the advanced search that is offered by *Tainacan Interface*.

Here is an example of an item list in a [child theme](https://developer.wordpress.org/themes/advanced-topics/child-themes/) of [TwentyTwenty](https://wordpress.org/themes/twentytwenty/):

![Items list, single item page, and term items list pages on TwentyTwenty theme.](/_assets/images/creating-compatible-themes-1.gif)

Like a blog, right? You can also see the Item single page, which is pretty much like any post on this page, showing the thumbnail, document and then metadata.

### Create your files for the templates

The WordPress way of changing this is by creating custom templates. To put it simply, all you have to do is create `.php` equivalent files to the ones that Tainacan plugin registers by default:

* `/tainacan/archive-items.php` - Lists a Collection Items
* `/tainacan/archive-repository.php` - Lists Repository Items (all items from all collections)
* `/tainacan/archive-taxonomy.php` - Lists Items of a Term of a Taxonomy
* `/tainacan/single-items.php` - Single Item Page
* `/tainacan/archive-tainacan-collection.php` - Lists all Collections (notice that `archive-collections.php` is another template, that WordPress already uses)

Ok, so all you need to do is to create these files and fill them as you wish... but how to fetch and render the content related to Tainacan there?

### Available functions for rendering template tags

For helping you creating your template, exclusive functions are available on your theme once the plugin is activated. You can find all or their definitions on the [Tainacan Template Tags](https://github.com/tainacan/tainacan/blob/develop/src/theme-helper/template-tags.php ':ignore') file. We summarize them below.

If you're building a custom `single-items.php`, you might be interested on:
* `tainacan_get_the_metadata()` or `tainacan_get_the_metadata()` - Get an HTML list of item metadata. You can pass arguments to tweak how the list is created, with similar parameters to those available in some WordPress functions for rendering lists;
* `tainacan_get_the_document()` or `tainacan_the_document()` - Get an HTML version of the "Item Document", which may be an image, an embed version of PDF, video links, tweets, etc.
* `tainacan_has_document()` - Checks if the current item (on a loop) has a document set or not;
* `tainacan_get_the_attachments()` - Return an HTML list of attachments of the current item;
* `tainacan_get_attachment_html_url()` - Return an HTML rendered attachment, given its ID;
* `tainacan_get_item()` - Returns the Item object according to given ID; 
* `tainacan_the_item_edit_link()` - Renders an HTML link for editing an Item if the user has permission;

If you are building any items archive listing, the following functions are essential:
* `tainacan_the_faceted_search()` - Renders an HTML div with ID and parameters for rendering the Vue.js (client-side) instance responsible for an items list with filters menu, search control and view modes. It is applicable for Collection Items, Term Items, and Repository Items;
* `tainacan_register_view_mode()` - Registers a view mode. This is used by themes or plugins that implemented [custom view modes](/dev/extra-view-modes.md);
* `tainacan_current_view_displays()` - Checks if a certain metadata or property is to be displayed on this view mode;

If you're building a custom items or collection archive, these functions may help:
* `tainacan_get_collection_id()` - Returns the current collection ID inside an items archive or single;
* `tainacan_get_collection()` - Returns the current collection object inside an items archive or single;
* `tainacan_get_the_collection_name()` or `tainacan_the_collection_name()` - Returns the current collection name inside an items archive or single;
* `tainacan_get_the_collection_description()` or `tainacan_the_collection_description()` - Returns the current collection description inside an items archive or single;

If you're building a custom items or term items archive, these functions may help:
* `tainacan_get_term()` - Returns the current term object inside a term items archive;
* `tainacan_get_the_term_name()` or `tainacan_the_term_name()` - Returns the current term name inside a term items archive;
* `tainacan_get_the_term_description()` or `tainacan_the_term_description()` - Returns the current term description inside a term items archive;
 
And more...
* `tainacan_get_initials()` - A presentation function used by some thumbnails in some themes. It outputs a string version of a name with its initials;

Those are of course, helper functions. If you're not satisfied with the way the rendering is performed by then, you can create your own. Check [the source code]() for a more complete idea of how to fetch Tainacan content.



