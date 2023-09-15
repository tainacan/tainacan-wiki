# Importador CSV

El importador CSV permite a los usuarios importar elementos a una colección desde un archivo CSV (valores separados por comas).

El archivo de entrada es un archivo CSV estándar, en el que cada línea contendrá la información de un artículo y cada columna contendrá el valor de un metadato específico. Además, la primera línea contiene los títulos de las columnas.

Cuando el usuario inicia el proceso de importación, debe elegir la codificación de archivo correcta en la que se guardó el CSV (normalmente UTF-8), el separador de columna y el relleno de la celda. Todas estas opciones se establecen cuando el usuario genera el archivo CSV utilizando un editor de hojas de cálculo.

En esta sección el usuario también informará del carácter (o caracteres) utilizados para separar valores en una celda multivaluada.

Tras configurar el importador y elegir la colección de destino, se carga el archivo CSV y el usuario tiene la posibilidad de asignar las columnas presentes en el CSV a los metadatos presentes en la colección de destino.

Si los metadatos no se han creado previamente, el usuario puede crear y mapear los metadatos en esta pantalla, o elegir la opción "Crear metadato" en el mapeador. Si se selecciona esta opción, Tainacan creará automáticamente un metadato cuando se ejecute el importador (véase la sección "Crear metadatos sobre la marcha" más adelante para saber cómo indicar a Tainacan el tipo y otros atributos del metadato que se creará).


## Columnas especiales

Cada columna del CSV debe asignarse a un metadato en la colección de destino. Sin embargo, hay columnas especiales que pueden utilizarse para establecer el valor de otros aspectos del artículo. Por ejemplo, el estado del artículo puede ser público para todos, en borrador o privado para los editores.

Las columnas especiales que pueden utilizarse son:

* **special_item_status** - Informa del estado del elemento. Los valores posibles son borrador, privado o publicar.
* **special_item_id** - Informa del ID del elemento en la base de datos de Tainacan. Esto es útil cuando se reimportan artículos y permite al usuario decidir si actualizar los artículos existentes o ignorarlos y sólo añadir nuevos artículos.
* **special_document** - Permite al usuario informar el documento del elemento. Ver "Importar archivos y adjuntos".
* **special_attachments** - Permite al usuario informar de los archivos adjuntos. Ver "Importar ficheros y adjuntos".
* **special_comment_status** - Informa si el elemento está abierto a comentarios. Los valores posibles son abierto o cerrado. El valor por defecto es cerrado.

Ejemplo:

```csv
name, special_item_status, special_comment_status
item uno, draft,   closed
item due, private, closed
item tre, publish, open
```

### Importar archivos y adjuntos

Si también tiene archivos que desea importar y que están relacionados con los elementos de su CSV, puede utilizar algunas columnas especiales en su csv para hacerlo.

Hay dos columnas especiales que puede utilizar: `special_document`, que establecerá el Documento de su elemento, y `special_attachments` para añadir uno o varios archivos adjuntos.

Los valores de `special_document` deben ir precedidos de `url:'', `file:'' o `text:''. Esto indicará el tipo de documento.

Ejemplo:

```csv
name, special_document
An image,file:http://example.com/image.jpg
A youtube video,url:http://youtube.com/?w=123456
A text,text:This is a sample text
```

Los valores de special_attachments son sólo una lista de archivos. Si desea añadir muchos archivos adjuntos, utilice el separador que estableció en la opción Delimitador multivalor.

En cualquier caso, puede apuntar a un archivo utilizando una URL completa, o sólo un nombre de archivo. En este último caso, debe configurar la opción siguiente para indicar a Tainacan dónde encontrar los archivos en su servidor. A continuación, puede subirlos directamente (a través de FTP, por ejemplo) y Tainacan los añadirá a sus artículos.

Ejemplo:

```csv
name, special_attachments
An image,http://example.com/image.jpg
Many images,http://example.com/image.jpg||http://example.com/image2.jpg||http://example.com/image3.jpg
Images uploaded via FTP,myfolder/image.jpg||myfolder/image2.jpg
```


## Creación de metadatos sobre la marcha

Cuando el usuario mapea las columnas encontradas en el archivo CSV con los metadatos presentes en la colección, tiene la posibilidad de elegir la opción "Crear metadato", para que el importador cree automáticamente los metadatos a medida que procesa el archivo.

Por defecto, creará un metadato de texto público, pero puede informar a Tainacan del tipo y otras características de los metadatos en la cabecera del CSV.

En la primera línea, donde declaras el nombre de cada columna, puedes añadir alguna información que utilizará el importador para crear el metadato_id.

Cada información sobre el metadato irá separada por una tubería "|". 

La primera información debe ser el nombre del metadato, y la segunda, el tipo de metadato.

Por ejemplo:

```csv
Name,Subject|taxonomy,Date of creation|date
```

Los tipos soportados de forma nativa en este momento son:

* text
* textarea
* taxonomía: cuando se utiliza este tipo, se crea una nueva taxonomía.
* date: los valores deben indicarse en el formato AAAA-MM-DD. 
* numeric
* relationship - los valores deben ser el ID del elemento relacionado

Después del tipo, puede utilizar palabras clave para informar de otras características:

* multiple - puede tener múltiples valores 
* required - es obligatorio
* display_yes - mostrar en listas: sí 
* display_no - mostrar en listas: no por defecto 
* display_never - mostrar en listas: nunca 
* status_public - visible para todos
* status_private - visible sólo para editores 
* collection_key_yes - establece esta meta como clave de colección (no puede haber dos elementos con el mismo valor).

Ejemplos que combinan varias funciones:

```csv
Name,Subject|taxonomy|multiple|required,Internal code|numeric|required|collection_key_yes|status_private
```
