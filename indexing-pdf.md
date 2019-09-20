# Indexing PDF Contents

In 0.12 we released an experimental approach to index the text of PDF files uploaded as items documents. This allows users to search for text inside the PDFs.

Since this is still in beta, and might not work in all environments or with all PDF files, we decided not to enable this feature by default. But users are encouraged to activate ir and help us validate it.

## Activating

To activate this feature you must edit your `wp-config.php` file and add the following line:

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Once this feature is available, PDFs files uploaded from this moment on will have their contents indexed and searchable.

## Searching

The indexed PDF content will be searched whenever you use the "text search" feature, that searches in all metadata. (If enabled, see [Search Engine](dev/search-engine.md))

You can also search in PDF content using the Advanced Search. There is a new option called "Document" which will search inside the content of indexed PDF files.

## Indexing existing PDF files

If at the moment you enable this feature you already have many PDF files in your repository, you can run a command to index them all. This is done using the WP CLI tool.

Access your server and type:

```

```

Or if you want to index PDF only from a certain collection:

```

```

Type this for help on how to use this command:

```

```
