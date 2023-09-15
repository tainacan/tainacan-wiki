# Conceptos generales


En esta página presentamos algunos conceptos fundamentales para el uso cotidiano de Tainacan. Es importante decir que los términos que utilizamos fueron definidos por el equipo de investigación y desarrollo de Tainacan, pero dependiendo de tu área de especialización, pueden ser sinónimos de otros términos que conozcas.

### Videotutorial: Usando Tainacan - Conceptos generales

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/fzbd36fbuII?start=52"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## Colecciones

Una colección es un grupo de elementos (ítems) que comparten un conjunto común de metadatos. Cada elemento cargado en el repositorio digital pertenecerá a una única colección.

> Por ejemplo: puede haber una colección para "cuadros" con metadatos como "Título", "Autor", "País", "Técnica", etc. y otra colección para "películas", con metadatos como "Título", "Director", "País", "Duración" y "Género"'.

Para cada colección se puede configurar un conjunto diferente de metadatos, sin embargo, pueden compartir taxonomías comunes, lo que significa, por ejemplo, que se pueden buscar elementos de un "país" y obtener resultados de "pinturas" y "películas" en los resultados porque ambas colecciones comparten la taxonomía “países”.

> Para tener información más detallada, consulta la sección de [taxonomías](#taxonomías).

Las colecciones también pueden tener colecciones "hijas", que heredarán sus metadatos y a partir de ahí también se podrán añadir otros metadatos para obtener información adicional.

Consulta el artículo completo sobre el uso de **colecciones** [aquí](/es-mx/collections).

## Ítems o elementos

Los elementos son el contenido real del repositorio. El "cuadro", la "película", el "libro", etc. Estos elementos pertenecen a una colección y tienen los metadatos configurados para la colección a la que pertenecen.

> En el lenguaje WordPress, cada elemento o ítem es un post y el tipo de post representa la colección a la que pertenece.

### Documento

El documento es la información principal del elemento. Es el objeto al que se refieren los metadatos. Tainacan acepta tres tipos de documentos:

- **"Archivo"**: archivo añadido al elemento. Puede ser una imagen, vídeo, pdf, audio u otro tipo de archivo compatible.
- **"URL"**: enlace de una página web con un contenido o archivo externo. Estos enlaces pueden ser a un sitio web genérico, a un archivo específico o a servicios multimedia. En el caso de los servicios multimedia (como YouTube, por ejemplo), Tainacan reconoce la dirección y muestra el reproductor adecuado mediante la herramienta [oEmbed](https://oembed.com/)(formato para permitir una representación incrustada de una URL en sitios de terceros). La lista de servicios compatibles con la conversión a "incrustaciones" en WordPress puede consultarse en [este enlace](https://wordpress.org/documentation/article/embeds/).
- **"Texto"**: Un texto sencillo, almacenado directamente en la base de datos, que el usuario puede escribir al crear o editar un elemento.

> El "tipo de documento" puede modificarse una vez enviado el elemento, por ejemplo: puedes enviar el elemento con un documento de referencia de tipo "texto" e insertar posteriormente el "archivo" o la "URL" correspondiente. También puedes llenar los campos de metadatos de un elemento y posteriormente añadir los documentos.

Consulta el artículo completo sobre el uso de los **documentos** [aquí](#conceptos-generales).

## Metadatos

Los metadatos son el conjunto de información que describe al elemento.

Cada colección dispone de un conjunto de metadatos para describir sus documentos. Esto significa que la colección a la que pertenece el elemento determina los metadatos que tiene.

Cada metadato tiene un conjunto de configuraciones posibles: ¿Es un metadato obligatorio? ¿Sus valores son únicos para cada ítem (un número de registro, por ejemplo)? ¿Acepta valores múltiples (por ejemplo, varios autores)?

### Videotutorial: Creación de Metadatos

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/fzbd36fbuII?start=433"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> Consulta la sección [Tipos de metadatos](#tipos-de-metadatos)

Es posible configurar metadatos a nivel de repositorio, que serán heredados por todas las colecciones. Del mismo modo, las colecciones configuradas como "hijas" heredan todos los metadatos de la colección seleccionada como “padre”.

> Consulta la sección [Colecciones](#colecciones)

> También es posible "importar y exportar metadatos predefinidos”.

### Tipos de Metadatos

Un paso importante para configurar las colecciones en Tainacan es elegir de qué tipo serán los metadatos. Esto se hace utilizando la función `Metadata Types`.

> Tainacan, por defecto, tiene un conjunto de `tipos de metadatos` que nos permiten elegir si los metadatos son de tipo "Texto", "Texto largo", "Fecha", “Numérico”, "Relación", etc..

Cada uno de estos tipos tiene un formato predefinido para la captura de información y también una forma de visualizarse en la interfaz. Por eso es fundamental elegir el `tipo de metadato` correcto según la información de que se trate. Una vez creado un metadato, su tipo no se puede modificar; si se requiere hacer este cambio, será necesario borrar el metadato y crearlo de nuevo.

Además del conjunto de tipos de metadatos que trae por defecto Tainacan, se suman algunos plug-ins, que amplían el conjunto de posibilidades (por ejemplo, el tipo de metadato “url” es un plug-in).

Consulta el artículo completo sobre el uso de **metadatos** [aquí](/es-mx/metadata).

## Filtros

Para cada colección es posible elegir cuáles de sus metadatos se utilizarán como opción de filtro para mostrar los resultados de una búsqueda facetada en la vista de la colección.

> Los filtros permiten al usuario filtrar la visualización de los elementos de una colección.

### Tipos de Filtros

Los `filter types` o tipos de filtro actúan como diferentes interfaces para filtrar elementos en función de un tipo específico de metadatos en las colecciones. Algunos ejemplos de `tipos de filtro` son:

- **"input text"** - entrada de texto
- **"datepicker"** - selector de fechas
- **"date range picker"** - selector de intervalos de fechas
- **"number range slider"** - barra de rango numérico
- **"list of checkboxes"** - lista de selección múltiple

Cada `tipo de filtro` tiene su propia configuración y componentes web que determinarán la forma en la que se visualizan en la interfaz.

> Al conjunto de tipos de filtro que trae por defecto Tainacan, se suman los tipos de filtro creados mediante plug-ins, que amplían el conjunto de posibilidades.

Consulta el artículo completo sobre el uso de **filtros** [aqui](/es-mx/filters.md).

## Taxonomías

Se pueden crear y utilizar taxonomías para clasificar los ítems del repositorio. Ejemplos de taxonomías comunes son “género”, “país”, “tipo de objeto”, “técnica”, etc.

> En el lenguaje de WordPress, se conocen como taxonomías personalizadas. Consulta la [documentación de WordPress](https://es-mx.wordpress.org/support/article/taxonomies/) para obtener más información.

Cada taxonomía tiene un conjunto de términos, por ejemplo, la taxonomía "género" puede tener términos como "drama" y "comedia". Los términos pueden tener jerarquía, lo que significa que los términos más generales (términos padre) contienen términos más específicos a los que se denomina términos hijos. Por ejemplo, si el término padre es “danza” y los términos hijos son "danza ritual" y "danza escénica", cuando el usuario busque ítems de “danza”, los resultados incluirán a los elementos que tengan cualquiera de los términos hijos.

Los términos pueden tener una descripción, un icono o una imagen que los represente y también pueden estar vinculados a un concepto existente en una ontología. Los términos también pueden tener su propia URL en el sitio, con una página que enumere todos los ítems relacionados con ellos, incluso de diferentes colecciones, de esta forma se comportan como si fueran una colección, aunque pertenezcan a colecciones distintas.

> Las taxonomías pueden compartirse entre colecciones.
> Consulta el tema ["Tipos de metadatos"](#tipos-de-metadatos) para saber cómo hacerlo.

Consulta el artículo completo sobre el uso de **taxonomías** [aquí](/es-mx/taxonomies.md).

### Videotutorial: Filtros y Taxonomías

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/y2WIzDyzKSs?start=17"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## En discusión

Esta sección recoge algunos conceptos y funcionalidades que se están debatiendo para su desarrollo.

### Tipos de elementos

Los "tipos de elementos" permiten hacer una descripción especializada del ítem en función de su naturaleza. Así, dentro de una misma colección es posible que haya elementos que varíen su naturaleza y, por tanto, tengan un conjunto de metadatos diferente.

Para cada "tipo de elemento"', es posible elegir un grupo de metadatos, del mismo modo que se hace para una colección. Al crear un elemento dentro de una colección, tendrá todos los metadatos elegidos para esta colección y, además, los metadatos relacionados con su tipo.

Un "tipo de elemento" puede ser cualquier cosa. Por ejemplo, los discos de vinilo, los libros y los cuadros son distintos tipos de ítems que pueden tener metadatos específicos. Pero también podrían ser conceptos abstractos, como "transacciones financieras".

### Área de trabajo

El "área de trabajo" contiene ítems que aún no forman parte de colecciones. Esta función puede ser útil para enviar varios elementos al repositorio y organizarlos posteriormente en colecciones.

Los elementos del "área de trabajo" no son visibles públicamente y solo tienen los metadatos configurados a nivel de repositorio (metadatos heredados).

### Colecciones temáticas

Las "colecciones temáticas" son otra forma de organizar los elementos del repositorio. En esencia, cada colección temática es un término dentro de una taxonomía llamada "Colecciones temáticas", que puede contener elementos de cualquier colección, y un mismo ítem puede formar parte de varias colecciones temáticas.

La lógica es la misma que para los términos en las taxonomías, la única diferencia es que nos ofrece otra forma de gestionar estas colecciones.

Otra idea aquí es que al tener una "'taxonomía fija'" llamada colecciones temáticas, podríamos tener un solo elemento de menú "Taxonomías" u ''Organizar por taxonomías'' que permita navegar los elementos por taxonomía en lugar de hacerlo por colecciones, y manipularlos.
