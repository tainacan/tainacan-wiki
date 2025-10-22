# Importers

> [!NOTE]
> Add introduction before listing importers.


<!-- tabs:start -->

#### ** CSV Importer **

## CSV Importer (Items)

The **CSV Importer** allows users to import items into a collection directly from a *.csv* file. 

Video tutorial in in Portuguese:

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=199"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> See also how to [import Taxonomies](#import-csv-vocabulary-taxonomies) to create controlled vocabularies or to import thesaurus.

### *.csv* Parameters

The file to be uploaded must be a standard .csv, where each row contains the information for an item, and each column the values for each specific metadata. In addition, the first row contains the column headings. 

Example:

| Item Column  | Metadata Column 1 | Metadata Column 2 |
|-------------------|----------------------|----------------------|
| Item 1 | Value of Metadata 1  | Value of Metadata 2  |
| Item 2 | Value of Metadata 1  | Value of Metadata 2  |

When you start the import process, you must choose the encoding in which the *.csv* file was saved (usually in UTF-8), the column separator character, and the cell compartment character. These options are set when the user creates the *.csv* file, using a spreadsheet editing program (such as *Microsoft Excel* or *LibreOffice Calc*, for example).

In this section the user will also enter the character (or characters) used to separate multiple values within a single cell (it is recommended to use the pipe symbol: "`|`").

After configuring the importer and selecting the destination collection, the *.csv* file is uploaded and the user has the chance to map the columns present in the *.csv* to the metadata present in the destination collection. 

If the metadata was not previously created in the collection, the user can create and map the metadata in this same screen, or choose the option `Create Metadata` in Mapper. If this option is selected, Tainacan will automatically create the metadata when the importer runs.

> (See [how to automatically create metadata](#automatic-creation-of-metadata) in the section below to learn how to tell Tainacan the type and attributes of metadata to create).

#### Special Columns

Each column of the *.csv* file must be mapped to a metadata in the target collection. However, there are special columns that can be used to configure other aspects of the item. For example, the item status can be set to public, draft, or private for editors.

The special columns that can be used are:

* `special_item_status` - Informs about the status of the item. Possible values are:
  * `draft`
  * `private`
  * `publish`
* `special_item_id` - The **item ID** in the Tainacan database. This function is useful for re-importing items and allowing you to decide whether to update existing items or ignore them and add new items.
* `special_document` - allows you to enter the item document. See [importing files and attachments](#import-files-and-attachments).
* `special_attachments` - allows you to enter attachments. See [importing files and attachments](#import-files-and-attachments).
* `special_comment_status` - allows the user to inform if the items can receive comments or not, the options are: "open" or "closed" (default).

Exemplo:

| Item column 	| Metadata Column 1 | Metadata Column 2 |	special_item_status | special_item_id |	special_document 	              | special_atachments                 |
|-------------------|----------------------|----------------------|---------------------|-----------------|-----------------------------------|------------------------------------|
| Item 1 | Value of Metadata 1  | Value of Metadata 2  |	publish 	        | 01 	          | url:http://exemplo.br/abcd 	      | file:http://seusite.br/anexo1.frmt |
| Item 2 | Value of Metadata 1  | Value of Metadata 2  |	draft 	            | 02 	          | file:http://seusite.br/item2.frmt |	url:http://exemplo.br/abcd         |
| Item 3 | Value of Metadata 1  | Value of Metadata 2  |	private 	        | 03 	          | text:texto de exemplo             | file:http://seusite.br/anexo3.frmt |

#### Import files and attachments

If you have files to import that are related to the items in your *.csv* file, you can use some special columns for that.

Use `special_document`, to define the document for your item, and `special_attachments` to add one or more attachments.

The values for `special_document` can be:

* url
* file
* text

Example:

```
name, special_document
an image,file:http://example.com/image.jpg
a youtube video,url:http://youtube.com/?w=123456
a text,text:This is a sample text
```

The values for `special_attachments` are just a list of files. If you want to add many attachments, use the separator character you set in the multi-value cell separator option of your *.csv* file. In both cases you can point to a file using a URL, or just the file name. To point to the file name, you must set this option for Tainacan to locate the files on your server. You can upload them directly (via FTP, for example) and Tainacan will add them to your items.

Example:

```
name, special_attachments
an image,http://example.com/image.jpg
several images,http://example.com/image.jpg%7C%7Chttp://example.com/image2.jpg%7C%7Chttp://example.com/image3.jpg
images uploaded via FTP,myfolder/image.jpg||myfolder/image2.jpg
```

#### Vídeo Tutorial: Import files and attachments (in Portuguese)

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=451"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

-----

#### Automatic Creation of Metadata

When you map the columns found in the *.csv* file to the metadata present in the target collection, you can select the `Create Metadata` option. Then the importer will create the metadata automatically during the *.csv* file processing.

By default, the metadata created will be of type `Text` and `public`. If you want otherwise, you can define the type and other options of the metadata at the beginning of the *.csv* file. 

In the first line, where you define the name of each column, you can add some information that will be used by the importer to create the `metadatum_id`. 

Each information about the metadata must be separated by the character "`|`".

The first information is the *name of the metadata*, and then follows *the type of metadata*.

The types of metadata currently supported natively are:

* `text`
* `textarea`
* `taxonomy` - when that type is used, a new taxonomy will be created.
* `date` - the values must be entered in the format YYYY-MM-DD (2018-01-01).
* `numeric`
* `relationship` - the values must be the related item ID.

Example:

```
Name,Subject|taxonomy,Date of creation|date
```

#### Taxonomy metadata information


If one of your CSV columns has values for a taxonomy metadata and this taxonomy has a hierarchy, you can enter that hierarchy using the `>>` sign.

Example:

```
name, category
name of item,parent category>>child category>>grandchild category
```

> This notation will only work if this column is mapped to a **taxonomy** metadata, or if you are using the **Automatically Create Metadata** technique explained above, and marking this column as a **taxonomy** metadata.

You can also use the Vocabulary Importer and, in a second step, import the items. If you follow this path, the hierarchy will already be assembled, and in your *.csv* of items it will not be necessary to represent it completely. Just insert the term of the last level. *In this case, the example above would be only*:

```
name, category
name of item,grandchild category
```

#### Instructions for Metadata

Besides the metadata type, you can also report other instructions:

* `multiple` - allowing metadata to have multiple values
* `required` - required metadata
* `display_yes` - Display in list: enable metadata in view.
* `display_no` - Do not show in list: hide metadata in view.
* `display_never` - Never display metadata in the view.
* `status_public` - metadata visible to all
* `status_private` - visible only to editors.
* `collection_key_yes` - Set values of this metadata as unique: the values of this metadata are not repeated in items in this collection.

Example of several instructions combined:

```
Nome,subject|taxonomy|multiple|required,registration number|numeric|required|collection_key_yes|status_private
```

### Import .csv to Tainacan

1. Access the *WordPress* control panel
2. In the left sidebar, click Tainacan
3. Go to **Importers**
4. In the **Available Importers** section, select `CSV`
5. Configure the following fields according to the settings made in your *.csv* file:
  * **Csv delimiter**: character that separates values within the same cell
  * **Multi-value metadata delimiter**: character that separates values within a single cell
  * **Text delimiter**: character delimiting all values within a single cell
  * **File encoding**: parameter that determines the encoding of the text values in the file. (Usually **UTF-8**, make sure that the *.csv* file is encoded according to the options available in the importer).
6. Configure these fields according to your import preferences:  
  * **Item repeated**: Determines the behavior of Tainacan by identifying identical items in the import process. Choose Update so that the item receives the values from the *.csv* file, or choose ignore so that the item already in the collection is not changed.
  * **Importing attachments**: The importer allows multiple items to be inserted into a collection directly from a *.csv* file. See [importing files and attachments](#import-files-and-attachments) to know how to configure your .csv file properly.
    1. According to the documentation, point the URL in the path field to the server.    
7. Select or create a **Destination Collection** to indicate where the items will be created. Selecting to create a new blank collection, when `Complete` the collection, you will be redirected to the **Importer** again.
8. Upload the *.csv* file in the **Source File** field.
9. Click on `Next`;
10. In the Metadata Mapping screen it is possible to carry out the process from among the metadata previously configured in the *.csv*
  1. Select metadata identified in the *.csv* (on the left) and its correspondent from the *.csv* (on the right) in Tainacan.
  2. If the metadata does not yet exist in the collection, select **"Create metadata "**.
  3. To create new metadata in the collection, select `Add more metadata`; (See [Metadata](metadata) to learn more about the creation and types of existing metadata)
  
  > [!WARNING]
> **Attention**: In this process, metadata from the *.csv* file will not be created if they do not have a metadata pointed in the target collection.
  
  > [!WARNING]
> **Attention**: The information of each metadata in each item depends on the creation of its respective metadata in this process.
  
  > [!WARNING]
> **Attention**: Once created, it is not possible to change the Metadata type. (For example, change a Metadata type Text to Long Text, or Numeric to Date).
    * See [General metadata characteristics](metadata#general-metadata-characteristics) for more information.
11.  When finished, click 'Run' to start the **import process**
12. You will be redirected to the **Repository Activities** screen where you can follow the progress of the *import process*. This screen displays all the import processes already performed in this installation, from the most recent to the oldest.  When the process is completed, the **log file** will be displayed and, in case of errors, the **error file**.
13. Once the import process is successfully completed, go to the import destination collection and review whether the **metadata**, **items** and **values** are as expected.

#### ** Vocabulary Importer **

## CSV Vocabulary Importer (Taxonomies)

This importer allows users to add terms to a taxonomy. This tool is useful for importing controlled vocabularies for a Tainacan installation.

#### Video Tutorial: Importing Terms and Taxonomies

(in Portuguese)

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=83"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

-----

### How to configure the .csv

The file format for vocabulary import is *.csv* - *comma separated values*.

For each term you can enter the name of the term and its definition, for example:

```
Term 1,Definition of term 1
Term 2,Definition of term 2
Term 3,Definition of term 3
```

It is also possible to add the hierarchy. To do this, leave the cells on the left empty, indicating the hierarchy level between these terms.

A planilha deve ficar parecida com este exemplo:

|           |                       |                           |                                |
|-----------|-----------------------|---------------------------|--------------------------------|
| Term 1 	| Definition of term 1 	|                           | 	                             |
| Term 2 	| Definition of term 2 	| 	                        |                                |
| 	        | 1st Child of term 2 	| Definition of this term       |                                |
| 	        | 2nd Child of term 2 	| Definition of this term   	|                                |
| 		    |                       | Grandchild of 2nd Child	    | Definition of the grandchild |
| Term 3 	| Definition of term 3 	| 	                        |                                |
| Term 4 	| Definition of term 4 	| 	                        |                                |

This same spreadsheet, when saved in *.csv* format, should look like this example:

```
Term 1,Definition of term 1,,
Term 2,Definition of term 2,,
,1st Child of term 2,Definition of this term,
,2nd Child of term 2,Definition of this term,
,,Grand child,Definition of grand child
Term 3,Definition of term 3,,
Term 4,Definition of term 4,,
```

----

### Import .csv to Tainacan

Once you have finished creating your *.csv* file with the desired terms, follow these steps:

1. Access the WordPress control panel
2. In the left sidebar, click on Tainacan
3. Access the *Importers* section
4. In the section **Available Importers**, select `Vocabulary CSV'
5. Configure the **CSV delimiter field* according to the delimiting characters of your *.csv* file.
6. Select the *.csv* file to upload
7.  Create or choose the *Taxonomy* of destination (See [Taxonomies](/taxonomies) to learn more)
8. Click on `Run`;
9.  You will be redirected to the **Repository Activities** screen where you can follow the progress of the *import process*.
  1. This screen displays all the import processes already performed in this installation, from the most recent to the oldest.
  2. When the process is completed, the **record file** will be displayed and, in case of errors, the **record file**.
10.  Once you have successfully completed the vocabulary import process, go to the **Taxonomies** section and review whether *Taxonomy* and *Terms* have been imported as expected.

<!-- tabs:end -->
