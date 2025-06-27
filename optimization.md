
# Optimization

## Guides to optimize Tainacan

This page gathers tips and configuration guidelines to your server in order to optimize Tainacan performance.

Some of the things listed here can be performed directly in tha WordPress admin panel, while others might need you to edit some configuration files and have access to your server configuration. It might also be needed some knowledge on server administration.


------

## System check

Taincan has a **System Check** page that gives you important information on your installation:

1. Access the WordPress admin panel;
2. In the left menu, pass the mouse over Tainacan;
3. Select the subitem **System Check**;

This screen gives you the following information:

* **WordPress version**: Gives you the current WordPress version compared to the latest version
* **PHP version**: Gives you the version of the PHP installed on your server
* **Database version**: Gives you the version of the database server installed on your server
* **PHP modules**: Gives you information about required and recommended PHP modules installed on your server
* **Maximum exection time of PHP scripts**: Gives you the current value for the Maximum exection time of PHP scripts
* **Permalinks structure**: Informs you if your permalink strucutre is configured correctly
* **Uploads folder**: Informs you if the permission to write in your uploads folder is configured correctly
* **Upload limit**: Gives you the maximum file size an user can upload, as it is configured in your server
* **Cron**: Informs you about cron jobs configuration

Results have a small icon (▇) at the left indicating:

* <span style="color: #a23939">▇</span> - Incorrect configuration, Tainacan may not work;
* <span style="color: #e69810">▇</span> - Partially correct configuration, some functions might not work
* <span style="color: #25a189">▇</span> - Correct!


### Imagick module permissions (solves not generating thumbnails from PDF files)

Imagick module is used to extract the first page from a PDF file and automatically generate a thumbnail for the item. If it is not present, System check will throw a warning.

However, due to recent changes in Imagick package, it may come pre-configured in a way it does not have the rights to open and read PDF files.

In order to solve this you must do the following.

In file `/etc/ImageMagick-6/policy.xml` (or `/etc/ImageMagick/policy.xml`) find the following line

```
<policy domain="coder" rights="none" pattern="PDF" />
```

and change it to allow reading and writing by the PDF coder in ImageMagick:

```
<policy domain="coder" rights="read|write" pattern="PDF" />
```

Finally, don't forget to restart your web server.


------

## Performance Guidelines

### Reduce the number of metadata displayed by default in the listing

If your item listing is slow, especially in the "table" view, reduce the number of metadata displayed by default in the listing. The fewer metadata displayed in the listing, the faster it will be.

To do this, access the metadata configuration page of your collection, edit the metadata, look for the option "Display in listing" and mark "do not display by default." This option will still allow users to choose to view this metadata in the listing if they want, but it will remove it from the default listing, speeding up loading for visitors.

### Limit the maximum number of items in a listing

By default, Tainacan has a limit of 96 items per page in any listing or API request. Perform some tests and verify if this number is suitable for your server.

If this number is too high and requests are very slow, you can reduce it to ensure a good user experience.

Similarly, if your server is more powerful, you can increase this number and offer more comprehensive listings. This is especially useful for links generated for visitors to access the collection in other formats, such as CSV. The larger the number of items per page, the fewer pages they will need to access to retrieve all items in a collection.

To change this configuration, add the following line to your `wp-config.php` file:

```php
define('TAINACAN_API_MAX_ITEMS_PER_PAGE', 96);
```

Replace 96 with the number of your preference.

### Improving the speed of textual search

For small collections, Tainacan's default settings should work well, and the general keyword search can be efficient. However, for slightly larger collections, this search, which looks for a term in all metadata of an item, can be quite inefficient.

For this bottleneck, there is an ideal solution and a workaround.

The ideal solution is to integrate WordPress with a search server called Elastic Search. The installation and configuration of Elastic Search are outside the scope, at least for now, of this documentation, but once you have such a server running, simply install the ElasticPress plugin. (This integration is still in an experimental phase but with excellent results. As it matures, we will write specific documentation. Meanwhile, it would be great to receive reports of attempts).

The workaround is to restrict the search to WordPress's default functionality, which looks for terms only in the title and description of items. Although much less comprehensive, it is much faster.

To do this, add the following line to your `wp-config.php` file:

```php
define('TAINACAN_DISABLE_DEFAULT_SEARCH_ENGINE', true);
```

More information in the developer documentation for the [search engine](/dev/search-engine).

### Adjusting facets

By default, the values loaded for facets will always consider the current search you are performing. This means that as filters are selected, the facets will reload and bring only the values that will still return items in the results. Thus, as the user applies filters, the options in the facets will reduce, creating a "search funnel."

If this behavior is not suitable for you, it is possible to configure Tainacan to always display all possible values in a facet, disregarding the current search. (In some cases, this can also improve performance).

To do this, add the following line to your `wp-config.php` file:

```php
define('TAINACAN_FACETS_DISABLE_FILTER_ITEMS', true); 
```

### Improving the loading speed of facets

Many facets or filters can also worsen the user experience of your site depending on the size of your collection and the capacity of your server.

If the loading of your facets is slow, the most appropriate action is to look at the guidelines in the "Server Configuration Adjustments" section of this page.

If you do not have access or the ability to modify server settings, here are some alternatives:

1. Consider reducing the number of facets, keeping only the essential ones. If some facets are essential for management work but dispensable for general public navigation, mark these as "visible only to editors." This way, you will improve the visitor's experience.
2. Disable the item count per facet. To do this, add the following line to your `wp-config.php` file:
```php
define('TAINACAN_FACETS_DISABLE_COUNT_ITEMS', true);
```

More information about facets in the developer documentation for [faceted search](/dev/faceted-search).

------

## Server Configuration Adjustments

The adjustments in this section concern the configuration of your Apache server. The mode of access and the way to make these configurations can vary greatly depending on the server or hosting service used. In some hosting services, you may not have access to all these options.

To know exactly how to make each of these configurations, consult the documentation of the server used, the system administrator responsible, or the technical support of your hosting service. The recommended directives here are based on a server with the following configurations:

* Processor: Intel(R) Xeon(R) CPU E5-2609 0 @ 2.40GHz, 4 cores;
* Operating system: Ubuntu Linux 16.04.1;
* Real and virtual memory: 16 GB and 2 GB;
* Kernel and CPU: Linux 4.4.0-72-generic on x86_64
* Apache version: 2.4

### Increase your server's *timeout*

By default, most servers are configured with a timeout of `30 seconds`. This means that any request that takes longer than 30 seconds to complete will be canceled.

In general, this time is sufficient, but it can be a bottleneck in some specific operations, such as some export and import operations and bulk editing of items.

For safety, increase this value to something around `200` to `300 seconds`.

### Configure *KeepAlive*

This directive, if set to `on`, allows persistent connections to Apache. For better performance, it is recommended to set this option to `on` and allow more than one request per connection.

MaxKeepAliveRequests: This directive is used to define the number of requests allowed per connection when the KeepAlive option above is set to `on`. Set this option to `0` to indicate an unlimited number.

KeepAliveTimeout: This directive is used to define how long, in seconds, Apache will wait for a subsequent request before closing the connection. The value `10` is a good average to use.

### Configure *MPM Prefork*

On some Tainacan pages, especially in the item listing, many simultaneous requests are made to the server. To improve performance in these situations, it is recommended that you configure the Apache server's MPM Prefork module.

For the conceptualization of each configuration directive presented below, it is recommended to read article [1](https://elias.praciano.com/2015/12/como-configurar-o-modulo-mpm-prefork-para-melhorar-a-performance-do-servidor-web-apache/) which explains all the aspects involved, and for determining the most suitable configuration for your environment, it is recommended to read article [2](https://www.woktron.com/secure/knowledgebase/133/How-to-optimize-Apache-performance.html) which provides a simple and objective approach to determining these configurations.

Below are the recommended configurations that should be made in the `/etc/apache2/mods-available/mpm_prefork.conf` file:

* **StartServers**: set the value to `4`.
* **MaxClients**: set the value to `256`.
* **MinSpareServers**: set the value to `15`.
* **MaxSpareServer**: set the value to `30`.
* **MaxRequestsPerChild**: set the value to `5`.
* **MaxRequestWorkers**: set the value to `250`.

After making these configurations, another important aspect is securing the WordPress installation where the Tainacan plugin and theme will be executed. The next section addresses this aspect.

-----

## Securing WordPress

The first step is to correctly configure the permissions of the files and directories of the installation. This can be done using the following commands:

For directories:
```shell
find /path/to/wordpress/folder/ -type d -exec chmod 755 {} \;
```

For files:
```shell
find /path/to/wordpress/folder/ -type f -exec chmod 644 {} \;
```

Another protection measure that can be added is to block scripts in parts where they generally should not be accessed by any user. One way to do this is to use `mod_rewrite` to block scripts in the `.htaccess` file.

```directive
RewriteEngine On
RewriteBase /
RewriteRule ^wp-admin/includes/ - [F,L]
RewriteRule !^wp-includes/ - [S=3]
RewriteRule ^wp-includes/[^/]+\.php$ - [F,L]
RewriteRule ^wp-includes/js/tinymce/langs/.+\.php - [F,L]
RewriteRule ^wp-includes/theme-compat/ - [F,L]
```

Blocking access to the `wp-config.php` file via `.htaccess` is another interesting measure. To do this, simply insert the following code into the `.htaccess` file of the WordPress installation:

```php
<files wp-config.php>

order allow,deny

deny from all

</files>
```

Disable file listing and direct access to *.php* files in the uploads directory. This can be done by including a `.htaccess` file inside the `/wp-content/uploads` directory of the WordPress installation with the following content:

```php
Options -Indexes

<Files *.php>

Require all denied

</Files>
```

### Wordfence

Closing the security recommendations, it is recommended to install, activate, and configure the plugin [Wordfence](https://wordpress.org/plugins/wordfence/) which has a range of features aimed at protecting the WordPress installation from various types of attacks and vulnerability exploitation.

The plugin and its documentation can be accessed [here](https://wordpress.org/plugins/wordfence/).

## Cache

There are many WordPress plugins to add caching for your site. This is a good approach and could speed up page load time for your visitors.

There is one thing you have to pay attention when configuring cache in your Tainacan site, though. 

Tainacan uses `nonces`, which a is a security procedure to verify users intention to perform some actions. These `nonces` are codes generated to users that last for a shor period of time and then are regenerated.

In order to make cache plugins work fine, you must **set your cache lifetime for no longer than 12 hours**, which is how long the `nonce` codes last. If your cache lives longer, your user may access the website using an expired code and have permission issues.

If you want to better understand this issue, check [this](https://medium.com/myatus/wordpress-caching-and-nonce-lifespan-bb357d984da9) [articles](https://joshpress.net/wordpress-nonces-and-wordpress-caching/).
