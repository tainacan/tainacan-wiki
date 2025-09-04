# Admin UI Options

Since version `0.19`, Tainacan offers a series of variables that can help you customize the admin panel. From Tainacan `1.0.0`, the majority of these variables [are tweakable in a *per-user-role* basis in the User Role Editing Form](admin-appearance.md). They do mostly hiding elements, controlling certain default features (such as the presence of the WordPress Admin menu) and dashboard cards.

As a developer, you can also pass them directly to the admin URL as query params, but the ideal way is to use a filter for it. For example:

```php
/*
 * Sends params to the Tainacan Admin Options
 */
function my_plugin_tainacan_admin_options($options) {

	$my_admin_options = [
        'forceFullscreenAdminMode' => true,
        'itemEditionPublicationSectionInsideTabs' => true,
        'showOnlyCollectionCardsThatUserCanEdit' => true
    ];
	$options = array_merge($options, $my_admin_options);

	return $options;
};
add_filter('tainacan-admin-ui-options', 'my_plugin_tainacan_admin_options');
```

The same could be achieved for prototyping by accessing your admin URL like this:
`https://<your-site.com>/wp-admin/?forceFullscreenAdminMode=true&itemEditionPublicationSectionInsideTabs=true&showOnlyCollectionCardsThatUserCanEdit=true&page=tainacan_admin#/collections/`

You can read about an explanation of the available options in the [Admin appearance page](admin-appearance.md). For a complete list of their IDs, check the code reference of the [Admin_UI_Options class](/dev/phpdoc/classes/Tainacan/Traits/Admin_UI_Options.md).