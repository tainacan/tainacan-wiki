# Custom Templates

When using Tainacan plugin with your custom theme enabled, you'll have access to all of [Tainacan pages](tainacan-pages.md) such as Items, Collections and Taxonomy Term Items in the same way that WordPress displays any custom **post_type**. An Item's list, for example, shall have *thumbnail*, *title* and *description* with the same appearance that your blog posts, without featuring a *Collection banner*, *filters list* or the *advanced search* that is offered by themes such as [Tainacan Interface](https://wordpress.org/themes/tainacan-interface).

Here is an example of an item list in a [child theme](https://developer.wordpress.org/themes/advanced-topics/child-themes/) of [TwentyTwenty](https://wordpress.org/themes/twentytwenty/):

![Items list, single item page, and term items list pages on TwentyTwenty theme.](/_assets/images/custom-templates-1.gif)

It looks like a blog, right? You can also see the Item single page, which is pretty much like any post, displaying the *thumbnail*, *document* and then *metadata*.

## Create your files for the templates

The *WordPress way* of changing this is by creating **custom templates**. To put it simply, you need `.php` files equivalent to the ones that Tainacan plugin registers by default:

* `/tainacan/archive-items.php` - Lists Collection Items 
* `/tainacan/archive-repository.php` - Lists Repository Items (all items from all collections)
* `/tainacan/archive-taxonomy.php` - Lists Items with a Term of a Taxonomy
* `/tainacan/single-items.php` - Single Item Page
* `/tainacan/archive-tainacan-collection.php` - Lists all Collections (not be confused with `archive-collections.php`, which is another template, that WordPress already uses)

Ok, so all you have to do is creating these files and fill them as you wish... but how to fetch and render the content related to Tainacan there? 

### Theme Helper functions

For helping you creating your template, exclusive functions are available on your theme once the plugin is activated. You can find all or their definitions on the [Tainacan Template Tags](https://github.com/tainacan/tainacan/blob/develop/src/theme-helper/template-tags.php ':ignore') file. We summarize them below.

If you're building a custom `single-items.php`, you might be interested in:
* `tainacan_get_item()` - Returns the Item object according to given ID; 
* `tainacan_get_the_document()` or `tainacan_the_document()` - Get an HTML version of the "Item Document", which may be an image, an embed version of PDF, video links, tweets, etc.
* `tainacan_has_document()` - Checks if the current item (on a loop) has a document set or not;
* `tainacan_get_the_metadata()` or `tainacan_get_the_metadata()` - Get an HTML list of item metadata. You can pass arguments to tweak how the list is created, with similar parameters to those available in some WordPress functions for rendering lists;
* `tainacan_get_the_attachments()` - Return an HTML list of attachments of the current item;
* `tainacan_get_attachment_html_url()` - Return an HTML rendered attachment, given its ID;
* `tainacan_the_item_edit_link()` - Renders an HTML link for editing an Item if the user has permission;

If you are building any items archive listing, the following functions are essential:
* `tainacan_the_faceted_search()` - Renders an HTML div with ID and parameters for the Vue.js (client-side) instance responsible for an items list with filters menu, search control and view modes. It is applicable for Collection Items, Term Items, and Repository Items. Learn more about it [in the next session](#the-tainacan_the_faceted_search-magic);
* `tainacan_register_view_mode()` - Registers a view mode. This is used by themes or plugins that implemented [custom extra view modes](/dev/extra-view-modes.md);
* `tainacan_current_view_displays()` - Checks if a certain metadata or property is to be displayed on this view mode;

If you're building a custom items or collection archive, these functions may help:
* `tainacan_get_collection_id()` - Returns the current collection ID inside an items archive or single;
* `tainacan_get_collection()` - Returns the current collection object inside an items archive or single;
* `tainacan_get_the_collection_name()` or `tainacan_the_collection_name()` - Returns the current collection name inside an items archive or single;
* `tainacan_get_the_collection_description()` or `tainacan_the_collection_description()` - Returns the current collection description inside an items archive or single;

If you're building a custom term items archive, these functions may help:
* `tainacan_get_term()` - Returns the current term object inside a term items archive;
* `tainacan_get_the_term_name()` or `tainacan_the_term_name()` - Returns the current term name inside a term items archive;
* `tainacan_get_the_term_description()` or `tainacan_the_term_description()` - Returns the current term description inside a term items archive;
 
And more...
* `tainacan_get_initials()` - A presentation function used by some thumbnails in some themes. It outputs a string version of a name with its initials - for example: "Classic Paintings" would be returned as "CP";

Those are, of course, *helper functions*. If you're not satisfied with the way the rendering is performed by then, you can create your own. Check [the source code]() for a more complete idea of how to fetch Tainacan content.

## Even more specific templates

We mentioned [above](#create-your-files-for-the-templates) templates for the basic four [Tainacan pages](tainacan-pages.md) that the plugin will generate for you. Nevertheless, you are still able to create more specific templates, using the standard [WordPress template file hierarchy](https://developer.wordpress.org/themes/basics/template-hierarchy/).

Examples:

* A template for single items page in the collection with ID 4: `single-tnc_col_4_item.php`;
* A template for a single specific item: `single-tnc_col_4_item-item-name.php`;
* A template for the list of items of the collection with ID 4: `archive-tnc_col_4_item.php`;
* A template for a specific taxonomy: `taxonomy-tnc_tax_123.php`;
* A template for a specific term of a specific taxonomy: `taxonomy-tnc_tax_123-term-name.php`;

## The *tainacan_the_faceted_search()* magic

While most of the [helper functions](#theme-helper-functions) mentioned use `php` functions to get data from the server-side and prepare HTML content to be displayed for the user, one seems to be doing more than that, and that is the `tainacan_the_faceted_search()` method. Let us use it in our child theme of  [TwentyTwenty](https://wordpress.org/themes/twentytwenty/) to see how an Items list is rendered:

```php
/**
 * Custom implementation of Tainacan collection items list
 */
// ... Load custom header, if desired, probably displaying a collection banner
<?php tainacan_the_faceted_search(); ?>
// .. Load custom footer, if desired
```

That alone gives us the following once we get into a collection items page:

> _TODO_ ADD GIF

Seems to be a lot more than the simple `<main id='tainacan-items-page' $props ></main>` returned at the [end of the Template Tags source code function](https://github.com/tainacan/tainacan/blob/4cbc0b21e660a4a667d784bcb3a353e54f59d1f2/src/theme-helper/template-tags.php#L210 ':ignore'), right? That is because the items list is a *client-side* interface, generated by [Vue.js](vuejs.org/ ':ignore') and Javascript code. It takes advantage of most of the code used by the plugin to render the same list on the *admin panel*, to provide a rich faceted search interface. It is also a great demonstration of what can be done consuming [Tainacan JSON API](https://tainacan.org/api-docs/ ':ignore'), as it uses the API for REST calls every time an update is necessary on the component. 

### The Vue component logic

As a theme developer, you don't need to learn Vue to use this interface, but it is important to see how it works if you want to customize it, especially its css. The diagram below shall help us in this mission:

![The Vue component architecture for the Faceted Search.](/_assets/images/custom-templates-1.png)

The [ThemeSearch]() Vue component is a container that holds all the components seen on the figure. It receives "props", which are the information passed to the `main` tag generated by `tainacan_the_faceted_search()`. Those props are essential for rendering the rest:

* The `collection-id` for the collection items list;
* The `term-id` and `taxonomy` for the term items list;
* The `default-view-mode` and the `enabled-view-modes` array to inform to the items list which view modes should be available according to the Collection settings;

Once aware of these variables, the component is built and the EventBus, responsible for managing the URL route and queries, will generate a long list of params and pass them to the page URL. There is numerous information to be loaded in this first moment, from different sources, represented on the diagram by the "Store Modules". To name a few:

* The **filters** of the collection are requested to the API and the result is stored at the Filters Module, which is consulted by the [FiltersItemsList]() component;
* The **metadata** of the collection are requested to the API and the result is stored at the Metadata Module, which is consulted by the parent ThemeSearch component. This information is used in companion to the props to build elements as the "Displayed Metadata Dropdown" and "View Mode". It also informs to the Event But which item metadata should be fetched;
* The **items** themselves are fetch from the API and served as props to the **ItemsList** component, which can be either a Vue component from the plugin or an HTML template registered as [Extra View Mode](/dev/extra-view-modes.md).
* Other information may be also provided to the component via the `tainacan_plugin` global variable available to the plugin. It stores mainly information relative to the user preference if he or she is logged. For example, a user may have set the "number of items per page" to be 96 instead of 12.

All of this is kept in sync with the URL by the EventBus, to guarantee that if a user copies the link and paste it on another browser, everything is loaded properly. The communication of the components is necessary for details such as updating the facets once the item list is reloaded or a filter applied.

### The Vue component file structure

Now that you have a bigger picture, we can take a look at where is the source code of each part of the list, so that if you need to change CSS for example, you can see where to look for class definitions. The file tree bellow contains only the elements that are in somehow imported to the ThemeSearch bundle - other files related to the admin panel are hidden for simplicity:

```
/src/views
    ├── admin
    │   ├── components
    │   │   ├── filter-types
    │   │   │   ├── autocomplete
    │   │   │   │   ├── Autocomplete.vue
    │   │   │   │   └── class-tainacan-autocomplete.php
    │   │   │   ├── checkbox
    │   │   │   │   ├── Checkbox.vue
    │   │   │   │   └── class-tainacan-checkbox.php
    │   │   │   ├── date
    │   │   │   │   ├── class-tainacan-date.php
    │   │   │   │   └── Date.vue
    │   │   │   ├── date-interval
    │   │   │   │   ├── class-tainacan-date-interval.php
    │   │   │   │   └── DateInterval.vue
    │   │   │   ├── filter-type
    │   │   │   │   └── class-tainacan-filter-type.php
    │   │   │   ├── numeric
    │   │   │   │   ├── class-tainacan-numeric.php
    │   │   │   │   └── Numeric.vue
    │   │   │   ├── numeric-interval
    │   │   │   │   ├── class-tainacan-numeric-interval.php
    │   │   │   │   └── NumericInterval.vue
    │   │   │   ├── numeric-list-interval
    │   │   │   │   ├── class-tainacan-numeric-list-interval.php
    │   │   │   │   └── NumericListInterval.vue
    │   │   │   ├── selectbox
    │   │   │   │   ├── class-tainacan-selectbox.php
    │   │   │   │   └── Selectbox.vue
    │   │   │   ├── taginput
    │   │   │   │   ├── class-tainacan-taginput.php
    │   │   │   │   └── Taginput.vue
    │   │   │   ├── tainacan-filter-item.vue
    │   │   │   └── taxonomy
    │   │   │       ├── Checkbox.vue
    │   │   │       ├── class-tainacan-taxonomycheckbox.php
    │   │   │       ├── class-tainacan-taxonomytaginput.php
    │   │   │       └── Taginput.vue
    │   │   ├── modals
    │   │   │   ├── checkbox-radio-modal.vue
    │   │   │   └── exposers-modal.vue
    │   │   ├── other
    │   │   │   └── collection-filter.vue
    │   │   └── search
    │   │       ├── advanced-search.vue
    │   │       ├── filters-items-list.vue
    │   │       ├── filters-tags-list.vue
    │   │       └── pagination.vue
    │   ├── js
    │   │   ├── axios.js
    │   │   ├── event-bus-search.js
    │   │   ├── filter-types-mixin.js
    │   │   ├── mixins.js
    │   │   ├── store
    │   │   │   ├── modules
    │   │   │   │   ├── collection
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── exposer
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── filter
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── item
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── metadata
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── search
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   └── taxonomy
    │   │   │   │       ├── actions.js
    │   │   │   │       ├── getters.js
    │   │   │   │       ├── index.js
    │   │   │   │       └── mutations.js
    │   │   │   └── store.js
    │   │   ├── utilities.js
    │   └── scss
    │       ├── _buttons.scss
    │       ├── _checkboxes.scss
    │       ├── _dropdown-and-autocomplete.scss
    │       ├── _filters-menu-modal.scss
    │       ├── _inputs.scss
    │       ├── _modals.scss
    │       ├── _notices.scss
    │       ├── _pagination.scss
    │       ├── _radios.scss
    │       ├── _repository-level-overrides.scss
    │       ├── _selects.scss
    │       ├── _switches.scss
    │       ├── _tables.scss
    │       ├── _tabs.scss
    │       ├── _tags.scss
    │       ├── _tainacan-form.scss
    │       ├── _tooltips.scss
    │       ├── _variables.scss
    │       ├── _view-mode-cards.scss
    │       ├── _view-mode-grid.scss
    │       ├── _view-mode-masonry.scss
    │       └── _view-mode-records.scss
    └── theme-search
        ├── components
        │   ├── circular-counter.vue
        │   ├── view-mode-cards.vue
        │   ├── view-mode-masonry.vue
        │   ├── view-mode-records.vue
        │   ├── view-mode-slideshow.vue
        │   └── view-mode-table.vue
        ├── js
        │   ├── theme-main.js
        │   └── theme-router.js
        ├── pages
        │   └── theme-items-page.vue
        ├── scss
        │   ├── theme-basics.sass
        │   └── _view-mode-slideshow.scss
        └── theme-search.vue
```

As you can see, there is a similar structure on both `/src/view/theme-search` and `/src/view/admin` folders, but the last one is considerably more complex. The stuff that is used by both is always inside "admin" as it is the main "module" of the plugin. Because of that, if you want to override any css class, for example, you will probably find its definition inside `/src/view/admin/scss/`. But Vue components have a particularity of allowing `scoped css` inside their code, which means you may find what you are looking for inside one of the `.vue` files across the code as well.

### CSS Customizations to the Vue component

So here are a few examples of customizations that you can do, now that you understand more of the Items list component:

1. __Hide or change the order of elements__. Let us suppose that you wish to tweak the *pagination* section a bit. You don't want the "Items per Page select" to appear and the "Go to Page" select should probably be after the pagination links. A look into the Pagination [component](https://github.com/tainacan/tainacan/blob/4cbc0b21e660a4a667d784bcb3a353e54f59d1f2/src/admin/components/search/pagination.vue ':ignore') and [scss](https://github.com/tainacan/tainacan/blob/4cbc0b21e660a4a667d784bcb3a353e54f59d1f2/src/admin/scss/_pagination.scss ':ignore') may give us a hint on what do do:
    ```css
    /* Hide this one, please */
    .pagination-area .items-per-page:not(.go-to-page) {
        display: none;
        visibility: hidden;
    }
    /* Move this to end of .pagination-area */
    .pagination-area .go-to-page {
        order: 2;
    }
    ```
    Of course, you need to take care of margins and paddings here too, depending on how much you are changing these values;
2. __Increase the font size of some element__. *Tainacan Interface* font sizes are rather small due to its formal styling, but you can tweak that too looking for *font-size* definitions of your elements. Here are some adjustments made to Items list Search Control (the region where the Sorting option and View Mode selection are available):
    ```css
    /* This shall increase labels */
    .search-control-item .label {
        font-size: 1.5rem;
    }
    /* This will make dropdown buttons and other buttons bigger*/
    .button:not(.is-small):not(.is-medium):not(.is-large) {
        font-size: 1.5rem !important;
    }
    /* This one is for dropdown list items */
    .dropdown .dropdown-menu .dropdown-content .dropdown-item {
        font-size: 1.25rem;
    }
    /* Finally, for the icon font */
    .theme-items-list .search-control .gray-icon i::before, 
    .theme-items-list .search-control .gray-icon .icon i::before {
        font-size: 1.5rem;
    }
    ```
