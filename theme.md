# Themes

One of the reasons why _WordPress_ is so famous and versatile is its diversity of [themes](https://wordpress.org/themes/ ":ignore"). There are thousands of themes that you can attribute to your site style and structure more formal, appealing or minimalist. The vast majority are free and one click away from installation.

?> **It is possible to use the Tainacan plugin with any activated theme**, but the experience can be better with themes that offer compatibility for your pages.

On this page we talk about:

- What are [the themes that offer the best compatibility](#compatible-themes) for Tainacan and,
- [How to install and manage themes](#manage-themes) in your _WordPress_.

## Compatible Themes

Besides inserting a new field in your _WordPress_ admin panel, where you access the Tainacan admin panel itself, the Tainacan plugin also generates [special pages](/tainacan-pages.md) on your site. If your theme was thought to present these pages, item and collection listings will be displayed with all the navigation features of the collection such as item search, filters, different view modes, etc. Otherwise, these listings should be very close to the way the theme displays blog posts.

Developing a compatible theme is not complicated and also does not need to be done from scratch, since many can be generated from [child themes](https://developer.wordpress.org/themes/advanced-topics/child-themes/) of others that already exist. Here on the Wiki we have [an entire session](/dev/creating-compatible-themes.md) dedicated to teaching this to developers.

Currently, there is a theme developed by the Tainacan community and published in [WordPress official repository](https://wordpress.org/themes/). The others are available via GitHub. To install themes, access the WordPress theme installation panel and follow the steps in the [installation section](manage-themes).

### Tainacan Interface

This is the standard theme of the Tainacan project and is available in the official Wordpress repos [in this link](https://br.wordpress.org/themes/tainacan-interface/). It was developed by the same design team that developed the administrative interface of the Tainacan plugin, so it should bring the same formality, with good readability and layouts that support large amounts of information displayed on the same screen. This theme is ideal for museums, galleries, libraries and anyone who has a digital repository. We highlight its main advantages:

- Specific templates for the Repository, Collection and Term item lists, with various configurations including:
  - Overwrite the default view mode for term listings;
  - Hiding various search control elements;
  - Change filter bar behavior, such as its size or whether it appears hidden at first;
- Template specific to the collection list, with two view modes, text search and sorting;
- Specific template for the item's page, with several options, among them:
  - Change the order in which attachments, metadata and document are displayed;
  - Display the metadata list in more than one column;
  - Show attachments as a carousel and integrate the document in this same list;
  - Display a custom header that resembles the collection;
  - Download button on the Document;
  - Item navigation (next and previous);
- Frequent updates and in sync with new versions of the Tainacan plugin;
- Customizable color palette;
- Header color of each customizable collection within the plugin, when the theme is active;
- New "Thumbnail" view mode;
- Share buttons for Facebook, Twitter, WhatsApp and Telegram on most pages;
- Standard Gutenberg blocks stylized according to the visual identity of the theme;
- Sidebar support;

![Some screens of the Tainacan Interface theme](/pt-br/_assets/gifs/themes-tainacan-interface.gif)

### Blocksy

The second most recommended that we mention here is not a child theme, but a popular theme [available on the WordPress repository](https://wordpress.org/themes/blocksy/ ":ignore"). It's integration with Tainacan is provided via a plugin, also released on [the WordPress repository](https://wordpress.org/plugins/tainacan-blocksy/ ":ignore"). Having both the plugin and the theme (or a child theme of it) activated, you'll have access to a series of settings available for the customizer. We cover these options in details on [the release post](https://tainacan.org/en/blog/2021/06/14/using-the-blocksy-theme-with-tainacan/ ":ignore") and it is also a good idea to check their [official page](https://creativethemes.com/blocksy/ ":ignore"). To cover a bit its features:

- Specific templates for the Repository, and Term item lists, including separate settings for each Collection, with various configurations including:
  - Selecting different color palettes;
  - Hiding various search control elements;
  - Change filter bar behavior, such as its size or whether it appears hidden at first;
  - Tweaking a bit of the header layout;
- Specific template for the item's page of each collection, with several options, among them:
  - Change the order in which attachments, metadata and document are displayed including the possibility of having two columns, with attachments aside of the metadata;
  - Display the metadata list in more than one column;
  - Dispaly metadata labels aside of their values;
  - Show attachments as a carousel and integrate the document in this same list;
  - Display a custom header that uses featured image as a banner;
  - Download button on the Document;
  - Item navigation (next and previous);
  - Related Items Section;
  - Custom share box;
- Customizable color palette;
- Automatic "More" dropdown button added to menu when number of items doesn't fit into current screen;
- Many other layout options available thanks to the theme features;

![Some screens from Blocksy theme](/pt-br/_assets/gifs/themes-blocksy.gif)

### Identidade do Governo (IDG-WP)

This WordPress theme was developed by a team of volunteers linked to the former Brazilian Ministry of Culture, with the objective of standardizing several WordPress sites used by the federal government. One example is the [Secretariat of Culture](http://cultura.gov.br/) website itself. The [original theme](https://github.com/culturagovbr/IDG-WP) itself does not have support to Tainacan, but with the demand of several museums linked to Ibram to use it, was created a _fork_, a variation of the theme, in [another repository](https://github.com/medialab-ufg/IDG-WP ":ignore"). Unfortunately, this project is in need of maintainers and may present some problems. We highlight its characteristics:

- Specific templates for the Repository, Collection and Term item lists but no header images;
- Specific templates for the item page, including attachment carousel;
- Standard integration with the Federal Government's link bar and accessibility;
- Support for most gutenberg blocks;
- Two menu locations: the main bar and the hidden panel next to it;
- News carousel on the home page;
- Customization of sessions on the home page via plugins;

![Some screens from IDG-WP theme](/pt-br/_assets/gifs/themes-idg-wp.gif)

### Veganos (Child Theme)

Created for the project [Covid-19 - UnB in Action](http://repositoriocovid19.unb.br/ ":ignore"), this is a theme son of the theme [Veganos](https://wordpress.org/themes/veganos/ ":ignore"), therefore, besides downloading it from its [repository](https://github.com/tainacan/tainacan-unb-covid-19 ":ignore") it is also necessary to install the parent theme. Its most remarkable feature is the "wavy" format of the header images, among others:

- Specific templates for the Repository, Collection and Term item lists including header and stylized images with some borders and shadows;
- Item page specific templates, with metadata listed before the Document and attachments;
- Listing of posts in blocks, in a two-column list;
- Stylized buttons with wavy effect;
- Customizable color palette
- Standard integration with the Federal Government's link holder and accessibility;
- Integration with the UnB menu bar (if you don't want to use it, just pull from the [branch 'not-unb'](https://github.com/tainacan/tainacan-unb-covid-19/tree/not-unb ":ignore") of GitHub);

![Some screens from Veganos theme](/pt-br/_assets/gifs/themes-veganos.gif)

### Rife Free (Child theme)

This is a [child theme](https://github.com/tainacan/rife-free-child ":ignore") from the popular [Rife Free theme](https://wordpress.org/themes/rife-free/ ":ignore"). It has a dependency on an installed plugin, [Apollo13 Framework extensions](https://apollo13themes.com/rife/free ":ignore"), but in compensation, it brings many customization options, from page and post format to header behavior. Other highlights are

- Specific templates for the Repository, Collection and Term item lists including header images;
- Specific templates for the item page, including next and previous buttons, which show their thumbnails;
- Scroll button to the top;
- Diverse and customizable color palette;
- Animations and transition effects;
- List of posts in blocks, optionally in a list of three columns;

![Algumas telas do Tema Rife Free](/pt-br/_assets/gifs/themes-rife-free.gif)

### Twenty Twenty (Child theme)

Every year WordPress releases an "official theme", which is activated by default in its installations and usually has a popular design, with good application of gutenberg blocks in addition to accessibility and responsiveness tests. To validate our tests with the plugin, we created a child theme of [TwentyTweny](https://wordpress.org/themes/twentytwenty/ ":ignore"), available [at this link](https://github.com/tainacan/TwentyTwentyChild ":ignore").

![Algumas telas do Tema Twenty Twenty](/pt-br/_assets/gifs/themes-twentytwenty.gif)

---

## Manage themes on Wordpress

### Video Tutorial: Installing Themes (Portuguese only)

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/oEl9bWe_rWI?start=780"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> See also how to install the [Tainacan plugin](/tainacan) for WordPress.

### Update a theme

1. Access the _WordPress_ Control Panel;
2. In the left side menu, click on **Appearance**;
3. Select the submenu **Theme**;
4. In the block of each theme the message "_New version available. Update now_" is displayed whenever a new version is released;
5. Click **Update Now** to receive the last stable version of the Theme.

### Change or Delete the Theme

1. Access the _WordPress_ Control Panel
2. In the left side menu, click on `Appearance`
3. Select the `Theme submenu`
4. To change the current theme, activate another theme of your choice
5. To delete the theme click on theme information in the desired theme block
6. In the lower right corner click `Delete`

!> **Warning**: To preserve the settings and navigability of items and collections, use themes compatible with good development practices for Tainacan.

!> **Warning**: Disabling the Tainacan theme affects the display and navigability settings for items and collections in the repository. This operation can only be undone by administrators.

!> **Warning**: For safety, it is always recommended to backup the installation before any modification. Delete the subject only if you are sure that there will be no serious loss of information. This operation can only be reversed by restoring backups of the installation.
