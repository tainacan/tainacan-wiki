# Tainacan for Developers

As you know, Tainacan is a [WordPress](https://wordpress.org) plugin and is built on the top of this very well known platform. If you know *WordPress* it will be very easy for you to understand how Tainacan is organized, how it interacts with the database and how to build your own features on the top of it.

## Well, but I'm new to WordPress

If you don't have experience with WordPress and would like to develop a plugin for Tainacan, or to contribute to the Tainacan plugin, it's a good idea to get to know some *WordPress* fundamentals. Those will be useful to everything you will deal with while working with Tainacan.

This is a non-exhaustive list of the most important topics you should look into:

* [WP_Query](https://codex.wordpress.org/Class_Reference/WP_Query ':ignore') class - This is the heart of WordPress, the class that gives you the interface fo query for posts in the database. All interaction with the database in Tainacan uses this class.
* [Custom Post types](https://codex.wordpress.org/Post_Types ':ignore') and [taxonomies](https://codex.wordpress.org/Taxonomies ':ignore') - All Tainacan entities, such as collections, metadata, filters and items, are WordPress Custom post types. To understand how WordPress handles custom post types and custom taxonomies is very helpful.
* [The Loop](https://codex.wordpress.org/The_Loop ':ignore') - One of the main WordPress elements used to interact through posts. Useful specially if you are tweaking with themes.
* [Template Tags](https://codex.wordpress.org/Template_Tags ':ignore') - Simple functions used by theme developers to display dynamic content. Usually these function are used inside "The Loop" and Tainacan implements [it's own Template tags](../src/theme-helper/template-tags.php ':ignore').
* [Template Hierarchy](https://developer.wordpress.org/themes/basics/template-hierarchy/ ':ignore') - Crucial if working with themes.
* Custom queries and loops - Based on the topics above, it is good to understand how to build custom queries and loops to list posts.

## Development Resources

### Development Basics

* [Setting up local environment](/dev/setup-local.md) - If you want to contribute to Tainacan core, you must set up your local environment. Alternatively, you can use our [Docker repository](https://github.com/tainacan/tainacan-docker ':ignore'). **If you want to develop themes or plugins, you don't need this**. 
* [Key Concepts](/dev/key-concepts.md) - First things first. Let's understand what is what in Tainacan.
* [Tainacan internals](/dev/internal-api.md) - Reference on Tainacan main classes and how to use them.
* Tainacan Hooks - [Hooks](/dev/hooks.md)
* [Tainacan API](https://tainacan.org/api-docs/ ':ignore')
* [Permissions](/dev/permissions.md) 

### Plugin development or extension
* [Creating a new Metadata Type](/dev/creating-metadata-type.md)
* [Exporting and Exposing](/dev/exporting-and-exposing.md)
* [How to create Exporters](/dev/exporter-flow.md)
* [How to create Importers](/dev/importer-flow.md)
* [How to create Exposers](/dev/exposers.md)
* [CSV Importer](/dev/csv-importer.md)
* [Vocabulary Importer](/dev/vocabulary-importer.md)
* [Mapping Standards](/dev/mapping-standards.md)
* Repository methods 	
  * [Repository Filters](/dev/repository-filters.md) 
  * [Repository Items](/dev/repository-items.md) 
  * [Repository Metadata](/dev/repository-metadata.md) 
  * [Repository Taxonomies](/dev/repository-taxonomies.md)
  * [Repository Terms](/dev/repository-terms.md) 
  
### Theme development or extension
* Creating compatible themes - *Soon*
* [Tainacan Custom templates](/dev/custom-templates.md) - Custom templates that Tainacan add to WordPress Template Hierarchy
* [Tainacan Template Tags](https://github.com/tainacan/tainacan/blob/develop/src/theme-helper/template-tags.php ':ignore') - Template tags useful to use in templates
* [Creating new View Modes](/dev/extra-view-modes)

### Configuration and performance

* [Faceted Search](/dev/faceted-search.md)
* [Search Engine](/dev/search-engine.md)
* [Garbage Collector](/dev/garbage-collector.md)

## Other development contributions

* [Contributing Guidelines](/dev/CONTRIBUTING.md)
* [Tainacan release process](/dev/release.md)

