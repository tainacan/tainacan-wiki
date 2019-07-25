# Protecting private files

(to be released in version 0.11)

Tainacan changes the default folders WordPress uses to save attachments for items. Instead of saving attachments in folders and subfolders representing the year and month, Tainacan will save them in folders representing the collection and items ids:

```
uploads/2019/02 <-- WordPress default. Stores uploads for february, 2019
uploads/tainacan-items/123/456/ <-- Stores uploads for item 456 that belongs to collection 123
```

The URL for the files will always remain the plain strucutre, for example, `site.com/wp-content/uploads/tainacan-items/1234/2345/file.jpg`. However, in the file system, collections and items folders can be prefixed, indicating they are protected folders.

So if the item with ID `2345` is private, the folder will be called, for example, `_x_2345`.

Since the URL and the folder in the filesystem don't match, this would cause a 404 error. But then tainacan will detect this is an attempt to access an item file and will look into the prefixed folders for it.

If it finds, it will check whether current user can read the item and then serve it for authorized users, or leave a 404 response for non authorized users.

Everytime you edit an item or a collection, or even bulk edit items, the folders will be renamed accordingly.

The base folder for items attachments can be changed setting the `TAINACAN_ITEMS_UPLOADS_DIR` constant in `wp-config.php`.

The prefix for private folders can be changed setting the `TAINACAN_PRIVATE_FOLDER_PREFIX` constant in `wp-config.php`.

**Note**: This constants must be setted in a fresh install. If they are changed after there are uploads, all the links will break...

## Protecting folders

Now you can add a rule to your `.htaccess` to block access to all prefixed folders inside your uploads directory. This could be done with a rule like this:

```
RewriteRule ^wp-content/uploads/tainacan-items/.*_x_\d+/.+$ - [F,L]
```
Even if a person manages to find out the real file path, with the prefixed folder name, he/she will not be able to access it, only via the clean URL that will pass permission check.
