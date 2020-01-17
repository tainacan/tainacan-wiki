?> This page is still under construction

# Creating Compatible Themes

Tainacan plugin offers managements tools for creating and organizing your repository, but in the end, publishing it online is one of the most important features to be desired. To avoid *reinventing the wheel*, all the work of having navigation menus, home pages and etc are handled by WordPress with it's own ecossystem of CMS features, plugins and of course, **themes**. 

> Themes are the default way that WordPress allows customizing the appearence of your website. They can show different layouts, font and colors, but beyound that they can offer customizations of different sorts.

Considering that, the development of the plugin was made in sync with the production of an "oficial theme", planned to attend to most use cases of the plugin, which is the [Tainacan Interface](https://wordpress.org/themes/tainacan-interface/). Nevertheless, if you are a developer and have interest on adapting your theme to support some Tainacan features, you are free to do it by using some tooling that are described in this page. Here is a summary of what you can do:

* Creating custom templates to one of [Tainacan pages](tainacan-pages.md);
  * Archive and Single Templates;
  * Allowing registration of Custom View Modes;
* Using form hooks to add extra properties to some Tainacan Entity;
* Using the latest Block Editor - Gutenberg features;

## Tainacan Custom Templates

When using Tainacan plugin with your custom theme enabled, you'll have acess to any of [Tainacan pages](tainacan-pages.md) such as Items, Collections and Taxonomy Terms in the same way that WordPress dsiplays any **custom post_type**. An Item's list, for example, will have thumbnails, title and description in the same apperance that your blog posts, without all the features of Collection banner, filters list or advanced search that is offered by *Tainacan Interface*.

Here is an example of an item list in a [child theme](https://developer.wordpress.org/themes/advanced-topics/child-themes/) of [TwentyTwenty](https://wordpress.org/themes/twentytwenty/):

![Items list, single item page and term items list pages on TwentyTwenty theme.](/_assets/images/creating-compatible-themes-1.gif)

Like a blog, right? You can also see the Item single page, which is pretty much like any post on this page, showing the thumbnail, document and then metadata.

The WordPress way of changing this is by creating custom templates. To put it simple, all you have to do is create `.php` equivalent files to the ones that Tainacan plugin registers by default:

Templates de Páginas:
* `/tainacan/archive-items.php` - Lista de Itens de uma Coleção
* `/tainacan/archive-repository.php` - Lista de Itens do Repositório
* `/tainacan/archive-taxonomy.php` - Lista de Itens do Termo de uma Taxonomy
* `/tainacan/single-items.php` - Página de um Item





