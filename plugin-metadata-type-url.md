# Plugin: Metadata Type URL

This plugin expands the Tainacan plugin functionality by adding support to an extra metadata type, useful for displaying URL links as an embed content, either via _WordPress_ auto embed feature or by forcing the usage of an iframe. It is a solution for those interested on having more than one Document of type URL or expecting the attachments list to accept URL as well.

## Instalation

In your _WordPress_ plugins page, search for "Tainacan" and activate the "Tainacan URL Metadata Type plugin". You will also find it [in this link](https://github.com/tainacan/tainacan-metadata-type-url ":ignore"). From there you can just install it by pressing a button.

If you prefer, you can also download the [.zip](https://github.com/tainacan/tainacan-metadata-type-url/releases ":ignore") file from [the GitHub repository](https://github.com/tainacan/tainacan-extra-viewmodes ":ignore") and follow the install instructions described in [our plugins install secion](/plugins#instaling-a-plugin).

Activate our plugin on the _WordPress_ administrative panel section for plugins.

## Usage

Go to your collection or repository Metadata page. In the "Available Metadata Type" list, it should be listed the URL type. Select it and create a new metadatum, providing the name that you prefer. By default, the plugin tries to render a preview for the link using _WordPress_ auto embed strategy. There is [a limited list](https://wordpress.org/support/article/embeds/#okay-so-what-sites-can-i-embed-from ":ignore") of links that work with this strategy, such as YouTube, Twitter, Spotify, etc. If your links won't appear there (for example, a Google Maps link) and you still want to display a preview of the content in the item metadata list, you can set the option "Force iframe" and its related settings.

![Screenshot of the metadata settings screen](/_assets/images/plugins_metadata_type_url_screenshot-1.png)

> [!NOTE]
> Even using "Force iframe", it may be possible that the URL that you are trying to link does not allow embedding via iframe. This is a setting enabled by site authors and can not be ignored.

With the metadata set and ready to go, create a new item and insert URL values there. You can click the preview button while in item edition form, or access the item page to see it rendered.

<div style="display: flex;flex-wrap: wrap; justify-content: space-around;">

![Screenshot of item creation form with an YouTube video](/_assets/images/plugins_metadata_type_url_screenshot-2.png ":size=380")

![Screenshot of item creation form with a Google Maps link](/_assets/images/plugins_metadata_type_url_screenshot-3.png ":size=380")

</div>

![Screenshot of the item page with the embeded links](/_assets/images/plugins_metadata_type_url_screenshot-4.png)
