?> _TODO_  This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Importadores" 
		src="_assets/images/icon_importers.png"
		width="40"
		height="40">
</div>

# Importadores

?> _TODO_ Fazer introdução para o assunto importadores antes de listar eles


<!-- tabs:start -->

#### ** Importador CSV **

## Importador CSV (Items)

O **Importador CSV** permite que usuários importem itens para uma coleção diretamente de um arquivo *.csv*. 

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=199"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> Consulte também como [importar Taxonomias](#importador-csv-de-vocabulários-taxonomias) para criar vocabulários controlados ou realizar a importação de tesauros.

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
name of item,parent category>>child category>>needed category
```

> This notation will only work if this column is mapped to a **taxonomy** metadata, or if you are using the **Automatically Create Metadata** technique explained above, and marking this column as a **taxonomy** metadata.

You can also use the Vocabulary Importer and, in a second step, import the items. If you follow this path, the hierarchy will already be assembled, and in your *.csv* of items it will not be necessary to represent it completely. Just insert the term of the last level. *In this case, the example above would be only*:

```
name, category
name of item,needed category
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
    
    
    
    
    
    
7. Selecione ou crie uma **Coleção Destino** para indicar onde os itens serão criados;
   *. Selecionando criar uma nova coleção em branco, ao `Concluir` a coleção, você será redirecionado para o **Importador** novamente.
   
   
   
   
   
8. Select or create a **Fate Collection** to indicate where the items will be created
  * Selecting to create a new blank collection, when `Complete` the collection, you will be redirected to the **Importer** again.
  * Upload the *.csv* file into the **Font File** field.

8. Faça o upload do arquivo *.csv* no campo **Arquivo Fonte**.
9. Clique em `Próximo`;
10. Na tela Mapeamento de Metadados é possível realizar o processo de-para entre os metadados previamente configurados no *.csv*;
  1. Selecione metadados identificados no *.csv* (à esquerda) e seu correspondente da *coleção destino* (à direita) no Tainacan.
  2. Caso o metadado ainda não exista na coleção, selecione **"Criar metadado"**.
  3. Para criar novos metadados na coleção, selecione `Adicionar mais metadados`; (Consulte [Metadados](/pt-br/metadata) para saber mais sobre a criação e os tipos de metadados  existentes)
  
  !> **Atenção**: Neste processo, metadados do arquivo *.csv* não serão criados se não tiverem um metadado apontado na coleção destino.
  
  !> **Atenção**: As informações de cada metadado em cada item dependem da criação de seu respectivo metadado neste processo.
  
  !> **Atenção**: Uma vez criado, não é possível alterar o tipo do Metadado. (Por exemplo, alterar um metadado do tipo Texto para Texto Longo, ou Numérico para Data).
    * Consulte [Características gerais de metadados](/pt-br/metadata#características-gerais-de-metadados) para saber mais.
11. Ao concluir, clique em `Executar` para iniciar o **processo de importação**;
12. Você será redirecionado para a tela de **Atividades do Repositório** onde poderá acompanhar o andamento do *processo de importação*.
     Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo.
     Quando o processo for concluído serão exibidos o **arquivo de registro** e, em caso de erros, o **arquivo de registro de erros**.
13. Uma vez terminado com sucesso o processo de importação, vá para a coleção destino da importação e revise se os **metadados**, **itens** e **valores** estão de acordo com  esperado.

#### ** Importador Vocabulários **

## Importador CSV de Vocabulários (Taxonomias)

Este importador permite que usuários adicionem termos a uma taxonomia. Essa ferramenta é útil para a importação de vocabulários controlados para uma instalação do Tainacan.

#### Vídeo Tutorial: Importação de Termos e Taxonomias

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=83"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

-----

### Como configurar o .csv

O formato de arquivo para a importação de vocabulários é o *.csv* - *comma separated values* (valores separados por vírgula).

Para cada termo você pode informar o nome do termo e sua definição, por exemplo:

```
Termo 1,Definição do termo 1
Termo 2,Definição do termo 2
Termo 3,Definição do termo 3
```

Também é possível informar a hierarquia. Para isso, deixe as células à esquerda vazias, indicando o nível de hierarquia entre estes termos.

A planilha deve ficar parecida com este exemplo:

|           |                       |                           |                                |
|-----------|-----------------------|---------------------------|--------------------------------|
| Termo 1 	| Definição do Termo 1 	|                           | 	                             |
| Termo 2 	| Definição do Termo 2 	| 	                        |                                |
| 	        | 1 Filho do Termo 2 	| Definição desse termo     |                                |
| 	        | 2 Filho do Termo 2 	| Definição desse termo 	|                                |
| 		    |                       | 1 Neto do Filho 2 	    | Definição do 1 Neto do Filho 2 |
| Termo 3 	| Definição do Termo 3 	| 	                        |                                |
| Termo 4 	| Definição do Termo 4 	| 	                        |                                |

Essa mesma planilha, quando salva no formato .csv, deve se parecer com este exemplo:
```
Term 1,Definition of term 1,,
Term 2,Definition of term 2,,
,1st Child of term 2,Definition of this term,
,2nd Child of term 2,Definition of this term,
,,Gran child,Definition of grand child
Term 3,Definition of term 3,,
Term 4,Definition of term 4,,
```

----

### Enviar o .csv para o Tainacan

Uma vez terminada a criação do seu arquivo *.csv* com os termos desejados, siga estes passos:

1. Acesse o painel de controle do WordPress
2. Na barra lateral esquerda, clique em Tainacan
3. Acesse a seção *Importadores*;
4. Na seção **Importadores Disponíveis**, selecione `Vocabulário CSV`;
5. Configure o campo **Delimitador csv** de acordo com as caractere delimitador do seu arquivo .csv:
6. Selecione o arquivo *.csv* para upload;
7. Crie ou escolha a *Taxonomia* de destino (Consulte [Taxonomias](/pt-br/taxonomies) para saber mais);
8. Clique em `Executar`;
9. Você será redirecionado para a tela de **Atividades do Repositório** onde poderá acompanhar o andamento do *processo de importação*.
  1. Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo.
  2. Quando o processo for concluído serão exibidos o **arquivo de registro** e, em caso de erros, o **arquivo de registro de erros**.
10. Uma vez terminado com sucesso o processo de importação do vocabulário, vá para a seção de **Taxonomias** e revise se a *Taxonomia* e os *Termos* foram importados como o esperado.

<!-- tabs:end -->
