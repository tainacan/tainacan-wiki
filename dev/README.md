# Tainacan for Developers

As you know, **Tainacan is a [WordPress](https://wordpress.org) plugin** and is built on top of this very well known platform. If you are familiar with _WordPress_ it should be easy for you to understand how Tainacan is organized, how it interacts with the database and how to build your own features from it.

## Well, but I'm new to WordPress

If you don't have experience with WordPress and would like to develop a plugin for Tainacan, or even contribute to the plugin, it's a good idea to learn some fundamentals. Those will be useful to everything you will deal with while working with Tainacan.

This is a non-exhaustive list of the most important topics you should look into:

<div class="two-columns-list">

- [WP_Query](https://developer.wordpress.org/reference/classes/wp_query/ ":ignore") class - This is the heart of WordPress, the class that gives you the interface to query for posts in the database. All interaction with the database in Tainacan uses this class.
- [Custom Post types](https://wordpress.org/support/article/post-types/ ":ignore") and [taxonomies](https://codex.wordpress.org/Taxonomies ":ignore") - All Tainacan entities, such as collections, metadata and items, are WordPress Custom post types, so it is helpful to understand how they are handled.
- [The Loop](https://developer.wordpress.org/themes/basics/the-loop/ ":ignore") - One of the main WordPress elements used to interact through posts. Useful especially if you are tweaking with themes.
- [Template Tags](https://developer.wordpress.org/themes/basics/template-tags/ ":ignore") - Simple functions used by theme developers to display dynamic content. Usually, these function are used inside "The Loop" and Tainacan implements [it's own Template tags](/dev/template-tags.md).
- [Template Hierarchy](https://developer.wordpress.org/themes/basics/template-hierarchy/ ":ignore") - Crucial if working with themes.

</div>

---

## Development Resources

### Development Basics {docsify-ignore}

<div class="two-columns-list">

- [Setting up local environment](/dev/setup-local.md) - If you want to contribute to Tainacan core, you must set up your local environment. Alternatively, you can use our [Docker repository](https://github.com/tainacan/tainacan-docker ":ignore"). **If you want to develop themes or plugins, you don't need this**.
- [Key Concepts](/dev/key-concepts.md) - First things first. Let's understand what is what in Tainacan.
- [Tainacan Internals](/dev/internal-api.md) - Reference on Tainacan main classes and how to use them.
- [Tainacan Hooks](/dev/hooks.md) - Expand or modify different sections of code without modifying the plugin, using Actions and Filters, both in backend and frontend.
- [Tainacan API](https://tainacan.org/api-docs/ ":ignore") - A Rest JSON API which you can use to get content from a Tainacan database.
- [Roles and Capabilities](/dev/roles-capabilities.md) - Basic information about data privacy and access levels in Tainacan.

</div>

### More on Plugin Development {docsify-ignore}

<div class="three-columns-list">

- [Exporting and Exposing](/dev/exporting-and-exposing.md)
- [CSV Importer](/dev/csv-importer.md)
- [Vocabulary Importer](/dev/vocabulary-importer.md)
- [Mapping Standards](/dev/mapping-standards.md)
- [Repository Methods](/dev/repository-methods.md)

</div>

### Plugin Extension {docsify-ignore}

<div class="two-columns-list">

- [Creating a new Metadata Type](/dev/creating-metadata-type.md) - A guide for creating your custom Metadata Type
- [Creating a new Filters Type](/dev/creating-filters-type.md) - A guide for creating your custom Filters Type
- How to create [Exporters](/dev/exporter-flow.md), [Importers](/dev/importer-flow.md) and [Exposers](/dev/exposers.md)
- [Registering New Vue Components](/dev/registering-custom-vue-components.md) - Registering new Vue components that can be used by your plugin, such as metadata and filter types or extra view modes.
- [The Vue Items List Component](/dev/the-vue-items-list-component.md) - The clientside rendered items list that provides all power to faceted search.
- [Tweaking the Tainacan Admin UI](/dev/admin-ui-options.md) - Using a filter to set variables for customizing the Tainacan Admin panel.

</div>

### Theme Development or Extension {docsify-ignore}

<div class="two-columns-list">

- [Creating compatible themes](/dev/creating-compatible-themes.md) - An Introduction on how to create a theme that fully support Tainacan features
- [Tainacan Custom templates](/dev/custom-templates.md) - Custom templates for those that Tainacan adds to WordPress Template Hierarchy
- [Customizing the Items List](/dev/customizing-the-items-list.md) - Tweaking the appearence of the items list
- [Creating Extra View Modes](/dev/extra-view-modes) - How to create Extra View Modes that will be avaialble for displaying items list
- [Theme Gutenberg Support](/dev/theme-gutenberg-support.md) - Details to offer better support to the latest content block editor

</div>

### Configuration and performance {docsify-ignore}

<div class="three-columns-list">

- [Faceted Search](/dev/faceted-search.md)
- [Search Engine](/dev/search-engine.md)
- [Garbage Collector](/dev/garbage-collector.md)

</div>

---

## Other development contributions

<div class="three-columns-list">

- [Contributing Guidelines](/dev/CONTRIBUTING.md)
- [Tainacan release process](/dev/release.md)

</div>
