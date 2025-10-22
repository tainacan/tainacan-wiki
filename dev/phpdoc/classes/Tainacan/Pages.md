# Pages


Pages is an abstract base class for all Tainacan admin pages.

***

* Full name: `\Tainacan\Pages`
* This class is an **Abstract class**

## Properties

### tainacan_root_menu_slug

$tainacan_root_menu_slug is the root menu slug for all Tainacan admin pages.

```php
public string $tainacan_root_menu_slug
```

***

### tainacan_other_links_slug

$tainacan_other_links_slug is the menu slug for the "Others" menu collapse

```php
public string $tainacan_other_links_slug
```

***

## Methods

### get_page_slug

This method must be implemented, providing a page_slug (page's ID or Slug), used to identify the page in the admin menu.

```php
protected get_page_slug(): string
```

* This method is **abstract**.
***

### __construct

Class constructor, never called directly but used to invoke the init method.

```php
protected __construct(): void
```

***

### init

init adds WordPress basic admin hooks

```php
public init(): void
```

Registers user meta, check admin menu collapse state and add links to the admin menu.

***

### load_page

load_page is called from the 'load-$page_suffix' action and should trigger the load of page's assets.

```php
public load_page(): void
```

In a child class, when registering a page with add_submenu_page, the $page_suffix is returned and can be
used to load the page's assets. This guarantees that the body class and the assets are only loaded when the
user visits the respective page.

***

### add_admin_menu

add_admin_menu is called from the 'admin_menu' action and should register whatever menu links the page has.

```php
public add_admin_menu(): void
```

If a page or group of pages is to be listed in the root level of the Tainacan admin, the parent should be
$this->tainacan_root_menu_slug. A child slug then should be defined so that child submenus are added to it
(see class-tainacan-admin for an example). If the page is to be listed in the "Others" menu collapse, the
parent should be $this->tainacan_other_links_slug.

***

### admin_enqueue_css

admin_enqueue_css is called from the 'admin_enqueue_scripts' action only when the page is loaded and should
enqueue the page's CSS using wp_enqueue_script()

```php
public admin_enqueue_css(): void
```

***

### admin_enqueue_fonts

admin_enqueue_fonts is called from the 'admin_enqueue_scripts' action only when the page is loaded and should
enqueue the page's fonts using wp_enqueue_script(). This is a default implementation that enqueues the Roboto
as most pages will use this typography

```php
public admin_enqueue_fonts(): mixed
```

***

### admin_enqueue_js

admin_enqueue_js is called from the 'admin_enqueue_scripts' action only when the page is loaded and should
enqueue the page's JS using wp_enqueue_script()

```php
public admin_enqueue_js(): void
```

***

### admin_body_class

admin_body_class is called from the 'admin_body_class' filter and should add the page's class to the body.

```php
public admin_body_class(mixed $classes): void
```

By default, it adds the class 'tainacan-pages-container', responsible to style the default container for
the Tainacan admin pages. If overriden, this class should possibly be added to the returned string if
a sidemenu is desired.

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$classes` | **mixed** |             |

***

### get_admin_js_user_data

get_admin_js_user_data is used to build the user data object that is passed to the JS global object 'tainacan_user'.

```php
public get_admin_js_user_data(): mixed
```

The navigation script, which is enqueued to all admin pages, uses this object to check user capabilities and tweak
user prefs.

***

### get_admin_js_localization_params

get_admin_js_localization_params is used to build the JS tainacan_plugin global object that serves as a
bridge between PHP and JS. Not every page needs it but they can call it to add their own data to the object.

```php
public get_admin_js_localization_params(): void
```

***

### register_user_meta

register_user_meta is called from the 'init' action and defines the tainacan_prefs object as a user meta.

```php
public register_user_meta(): void
```

The tainacan_prefs holds several user defined options such as perpage and orderby preferences.

***

### render_page_content

render_page_content defines the inner content of the page. It is called from the render_page method, aside the menu.

```php
public render_page_content(): void
```

* This method is **abstract**.
***

### render_page

render_page creates the canvas/container where the admin pages will be rendered, adding the navigation menu aside.

```php
public render_page(): void
```

Usually this function is to be passed as a callback to the add_submenu_page function, in each child class.

***

### render_navigation_menu

render_navigation_menu creates the aside navigation menu for the Tainacan admin pages.

```php
public render_navigation_menu(): void
```

Internally, it loops through the submenu global variable to render the menu items.
All submenu registered with the $tainacan_root_menu_slug are considered root links.
They may or may not contain links and submenu items of their slug are rendered as ul/li tags.

***

### render_breadcrumbs

render_breadcrumbs creates the breadrcumbs for the Tainacan admin pages.

```php
public render_breadcrumbs(): void
```

***

### render_navigation_menu_toggler_buttons

Renders buttons for minimizing and collapsing the menu.

```php
public render_navigation_menu_toggler_buttons(): mixed
```

***

### remove_admin_notices

remove_admin_notices removes all admin notices from the admin_notices and all_admin_notices hooks.

```php
public remove_admin_notices(): mixed
```

***

### admin_init_ui_options

admin_init_ui_options is a filter that sets the admin UI options for the current user,
based on his/her role.

```php
public admin_init_ui_options(): mixed
```

***

### admin_add_screen_options

Hooks into WordPress Admin Screen Options to add option
to insert fullscreen mode toggle button.

```php
public admin_add_screen_options(mixed $current, mixed $screen): mixed
```

**Parameters:**

| Parameter  | Type      | Description |
|------------|-----------|-------------|
| `$current` | **mixed** |             |
| `$screen`  | **mixed** |             |

***

## Inherited methods

### get_available_admin_ui_options

Lists a translatable and grouped version of the available admin ui options

```php
public get_available_admin_ui_options(): array
```

**Return Value:**

of available admin ui options

***

### has_admin_ui_option

```php
public has_admin_ui_option(mixed $option): string
```

**Parameters:**

| Parameter | Type      | Description |
|-----------|-----------|-------------|
| `$option` | **mixed** |             |

**Return Value:**

option value for the given setting

***

### get_svg_icon

```php
public get_svg_icon(mixed $icon_slug): string
```

**Parameters:**

| Parameter    | Type      | Description |
|--------------|-----------|-------------|
| `$icon_slug` | **mixed** |             |

**Return Value:**

icon_slug with that points to the icon file

***
