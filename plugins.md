# Plugins

Tainacan is a _plugin_ for _WordPress_, in the means that it expands _WordPress_ functionalities by providing new features. This is part of _WordPress_ philosophy of providing a core solution that can attend to most users needs and still offer the possibility of picking addons to make it suitable to more specific requirements. The same can be applied to Tainacan itself, which attempts to bring most of what we consider essential for digital archives management and exibition installed by default, leaving although some extra functionalities available as _plugins for the plugin_.

## Available Plugins

So far the ones below are the plugins available for Tainacan:

- [PDF Exposer](/plugin-pdf-exposer) - Adds an option to expose your items as PDFs on the "View as..." modal, AKA Exposers or Alternative URLs;
- [URL Metadata Type](/plugin-metadata-type-url) - Adds an extra metadata type that accepts URLs and displays an embeded version or an iframe of your content.
- [Extra View Modes](/plugin-extra-view-modes) - Adds many demonstration templates of Extra View Modes, ideal for developers who want to learn how to create their own;
- [WordPress 3DHOP](/plugin-3d-hop) - Allows WordPress to render interactive 3D models using [3D HOP](http://3dhop.net/);

If you are a developer and would like to extend Tainacan with some solution, we invite you to check our [developers session for that](/dev/#plugin-development-or-extension) and also to dive into their source code as it can be a good learning resource 🤓 . Also, in case you have created a plugin and want to have it listed here, please talk to us in [our mailing list](https://lists.riseup.net/www/subscribe/tainacan)!

## Installing a Plugin

Our plugin plugins so far are not submited to the WordPress oficial repository of Plugins, so their instalation is not as straight foward as Tainacan's itself. But worry not! There are three basic ways to do this, all of them of course require administrative permission to your instalation. You should begin by downloading the `.zip` file containing the plugin code, which will probably be available from GitHub.

### Instaling a Plugin via WordPress Panel

A visual way of installing downloaded plugins is to go to your WordPress admin panel, move into Plugins section on the sidebar and click on "Add new". This will show you the list of plugins, above it you have the button "Upload Plugin", where you will select you `.zip` file.

![Instaling a Plugin via WordPress Panel](/_assets/images/plugins_1.png)

### Instaling a Plugin via WP-CLI

If you have [WordPress CLI](https://wp-cli.org/#installing) installed, things will be much easier. All you need to do is run, in your _WordPress_ instalation folder:

```
wp plugin install /PATH/TO/YOUR/ZIP/FILE/plugin-name.zip
```

### Instaling a Plugin Directly on Server

The same process can be done manually with access to your server files. For that, you should extract your `zip` file and move it's content to `wp-content/plugins` folder, in a folder with tha same name of the plugin.

## Activating a Plugin

Don't forget that once you have your plugin installed, you must also activate it on the plugins list of _WordPress_ administrative panel.
