# Comprendiendo Tainacan

El flujo de trabajo típico al crear un Repositorio Digital con Tainacan es:

* Crear una colección
* Elegir qué metadatos tendrá el elemento en esta colección
* Elegir los filtros que se utilizarán al navegar por la colección
* Insertar ítems a la colección o importarlos desde una fuente externa

## Colecciones

Una colección es un grupo de elementos que comparten el mismo conjunto de metadatos. Cada ítem subido a su repositorio digital será parte de una colección - y sólo una colección. Por ejemplo, podría tener una colección de "pinturas", con metadatos como Título, Autor, País, Técnica, etc y otra colección para "películas", con Título, Director, País y Género.

Para cada colección, puede establecer un conjunto diferente de metadatos y pueden compartir taxonomías comunes, lo que significa que podría buscar artículos en un país específico, y obtener tanto pinturas como películas en sus resultados. 

Las colecciones también pueden tener colecciones secundarias, que heredarán los metadatos de la colección principal y podrán añadir su propio conjunto de información adicional.

## Elementos

Los ítems son el contenido real de su repositorio. El cuadro, la película, el libro, etcétera. Pertenecen a una colección y tienen todos los metadatos configurados en la colección a la que pertenece.

En el lenguaje WordPress, cada ítem es un post y su tipo de post representa su colección.

### Documento 

El documento es la información principal del artículo. Es el objeto al que se refieren todos los metadatos. Tainacan acepta 3 tipos de documentos diferentes:

* Archivo: Un archivo adjunto al ítem. Una imagen, vídeo, pdf, audio u otro archivo multimedia.
* URL: URL que apunta a un sitio web o archivo externo. Puede ser un sitio web general, un archivo específico o servicios multimedia. En el caso de los servicios multimedia, Tainacan reconoce las direcciones y muestra el reproductor apropiado, utilizando [oEmbed](https://oembed.com/). Puede encontrar una lista de servicios convertidos automáticamente en embeds por WordPress [aquí](https://codex.wordpress.org/Embeds).
* Texto: Un texto plano, almacenado directamente en la base de datos, que el usuario puede escribir al crear o editar un elemento.

## Metadatos

Datos sobre el documento. 

Cada colección declara un conjunto de metadatos para describir sus documentos. Esto significa que la colección a la que pertenezca el elemento determinará los metadatos que tendrá.

Cada metadato tiene un conjunto de opciones. ¿Es obligatorio? ¿Debe ser único (un número de identificación, por ejemplo)? ¿Acepta múltiples valores? ¿Cuál es su tipo de metadatos? (TODO: ver la lista completa de atributos de metadatos).

Puede tener metadatos a nivel de repositorio, que serán heredados por todas las colecciones de su repositorio. Del mismo modo, las colecciones heredan metadatos de su colección padre.

(Nota: puede utilizar e importar/exportar preajustes de metadatos)

## Tipos de metadatos

Los tipos de metadatos son los objetos que representan los tipos de metadatos que se pueden utilizar. Ejemplos de Tipos de Metadatos son "Texto", "Texto largo", "Fecha", "Relación con otro ítem", etc (TODO: ver lista completa).

Cada objeto de tipo de metadatos tiene su configuración y un componente web que se utilizará para mostrar la interfaz. 

Los tipos de metadatos pueden ser creados mediante plugins y extienden el conjunto de tipos por defecto incluidos en Tainacan.

## Filtros

Para cada colección, puede elegir qué metadatos se utilizarán para filtrar los resultados en una interfaz de búsqueda facetada. Estos son los filtros.

Los filtros permiten al usuario filtrar los elementos de una colección utilizando un tipo de filtro.

## Tipos de filtro

Los tipos de filtro son los diferentes tipos de interfaces para filtrar elementos en una colección basándose en un Metadato específico. Ejemplos de Tipos de Filtro son "entrada de texto", "datepicker", "selector de rango de fechas", "deslizador de rango numérico", "lista de casillas de verificación", etc.

Cada objeto de tipo de filtro tiene una configuración y un componente web que se utilizará para mostrar la interfaz.

Los Tipos de Filtros pueden ser creados mediante plugins y extienden el conjunto de tipos por defecto incluidos con Tainacan. 

## Taxonomías

Las taxonomías se pueden crear y utilizar para clasificar elementos. Taxonomías típicas son Género, País, etc.

En lenguaje WordPress, son Taxonomías Personalizadas, y pueden ser compartidas entre muchas colecciones.

Cada Taxonomía tiene un conjunto de términos. Por ejemplo, la taxonomía Género puede tener términos como "drama" y "comedia".

Los términos pueden tener una jerarquía, lo que significa que cuando busque artículos que tengan un término padre (por ejemplo, "Rock"), los resultados incluirán artículos que tengan cualquiera de los términos hijos (por ejemplo, "Rock progresivo" y "Rock clásico").

Los términos también tienen una descripción, pueden tener un icono o imagen que lo represente y también pueden estar vinculados a un concepto existente de una ontología. Pueden tener su URL en su sitio, con una página que enumera todos los elementos que están relacionados con ellos, a pesar de su colección. De este modo, se comportan como si fueran una colección en sí.

## En discusión

### Tipos de artículos

Los tipos de artículos le ofrecen la posibilidad de especializar la descripción de un artículo en función de su naturaleza. Así, dentro de la misma colección, puede tener elementos que varían en su naturaleza y, por lo tanto, tienen un conjunto diferente de metadatos.

Para cada tipo de elemento, puede elegir un grupo de metadatos, al igual que para una colección. Cuando cree un elemento dentro de una colección, tendrá todos los metadatos elegidos para esa colección más los metadatos relacionados con su tipo.

Un tipo de artículo puede ser cualquier cosa. Por ejemplo, LPs, Libros y pinturas son tipos de ítems obviamente distintos que pueden tener metadatos específicos. Pero también pueden ser conceptos más abstractos, como "transacciones financieras".

### Escritorio

El escritorio contiene elementos que aún no forman parte de ninguna colección. Puede utilizarlo cuando quiera subir un montón de artículos y organizarlos después, en lugar de tener que pensar y preparar todas las colecciones de antemano.

Los ítems en Escritorio no son visibles públicamente y sólo tienen los metadatos configurados a nivel de repositorio.

### Colecciones temáticas

Las Colecciones Temáticas son otra forma de organizar los ítems de tu repositorio. En esencia, cada colección temática es un término dentro de una taxonomía llamada "Colecciones Temáticas", que puede contener ítems de cualquier colección, y un ítem puede formar parte de muchas Colecciones Temáticas.

Funciona de la misma manera que cualquier otra taxonomía, la única diferencia es que tienes otra forma de gestionarla...

Otra idea aquí es, en lugar de tener una "taxonomía fija" llamada colecciones temáticas, podríamos simplemente tener un elemento de menú "Taxonomías" u "Organizar por taxonomías" que le permita navegar por los elementos por taxonomía, en lugar de por colecciones, y manipularlos.
