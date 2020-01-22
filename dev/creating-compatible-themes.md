# Creating Compatible Themes

Tainacan plugin offers tools to manage your digital repository, but in the end, publishing it online is one of the most important features to be desired. To avoid *reinventing the wheel*, all the work of having navigation menus, home pages, etc is handled by WordPress with its ecosystem of CMS features, plugins and of course, **themes**. 

> Themes are the default way that WordPress offers for tweaking the appearance of your website. They can show different layouts, font, and colors, but beyond that, they can offer customizations of different sorts.

Considering that, the development of the plugin was made *in sync* with the production of an "official theme", planned to attend the majority of use cases, which is the [Tainacan Interface](https://wordpress.org/themes/tainacan-interface/). Nevertheless, if you are a developer and have an interest on adapting your theme to support some Tainacan features, you are free to do it by using the strategies that are described on this section.

![Exemples of an Items List on custom themes.](/_assets/images/creating-compatible-themes.png)

To give you a taste of what is possible, check out this file with three simple lines added to a *child-theme* of WordPress famous [TwentyNineteen](https://wordpress.org/themes/twentynineteen/ ':ignore') theme:

```php
/** /tainacan/archive-items.php
 *  Custom implementation of Tainacan collection items list
 */
<?php get_header(); ?>
    <?php tainacan_the_faceted_search(); ?>
<?php get_footer(); ?>
```

With that minimal update, the items list goes from a standard *blog-posts-like* list to a full *faceted search items list*:

![Twenty Nineteen child theme adapted to Tainacan items list.](/_assets/images/creating-compatible-themes-2.png)

Here is a summary of how you can make your theme trully compatible with Tainacan:
* [Creating custom templates](/dev/custom-templates.md) to one of [Tainacan pages](tainacan-pages.md);
* [Adapting the Vue Items List Component](/dev/the-vue-items-list-component.md);
* [Registering custom Extra View Modes](/dev/extra-view-modes.md);
* [Adding support to the latest Block Editor](/dev/theme-gutenberg-support.md) - Gutenberg features;



