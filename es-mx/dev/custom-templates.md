# Plantillas personalizadas

Cuando uses el plugin Tainacan con tu tema personalizado habilitado, tendrás acceso a todas las páginas [Tainacan pages](/es-mx/tainacan-pages.md) como Ítems, Colecciones y Elementos de términos taxonómicos de la misma forma que WordPress muestra cualquier **post_type** personalizado. Una lista de Elementos, por ejemplo, tendrá _thumbnail_, _title_ y _description_ con la misma apariencia que las entradas de su blog, sin presentar un _banner de Colección_, _lista de filtros_ o la _búsqueda avanzada_ que ofrecen temas como [Interfaz de Tainacan](https://wordpress.org/themes/tainacan-interface).

Este es un ejemplo de una lista de elementos en un [child theme](https://developer.wordpress.org/themes/advanced-topics/child-themes/) de [TwentyTwenty](https://wordpress.org/themes/twentytwenty/):

![Lista de artículos, página de artículo único y páginas de lista de artículos por términos en el tema TwentyTwenty.](_assets/custom-templates-1.gif)

Parece un blog, ¿verdad? También puede ver la página individual del artículo, que es bastante parecida a cualquier entrada, mostrando la _miniatura_, el _documento_ y luego los _metadatos_.

## Cree los archivos para las plantillas

La _manera WordPress_ de cambiar esto es creando **plantillas personalizadas**. En pocas palabras, necesitas archivos `.php` equivalentes a los que el plugin Tainacan registra por defecto:

- `/tainacan/archive-items.php` - Listas de elementos de la colección
- `/tainacan/archive-repository.php` - Lista de elementos del repositorio (todos los elementos de todas las colecciones)
- `/tainacan/archive-taxonomy.php` - Listas de elementos con un término de una taxonomía
- `/tainacan/single-items.php` - Página de un solo artículo
- `/tainacan/archive-tainacan-collection.php` - Lista todas las Colecciones (no confundir con `archive-collections.php`, que es otra plantilla, que WordPress ya utiliza)

De acuerdo, todo lo que tienes que hacer es crear estos archivos y rellenarlos a tu gusto... pero ¿cómo recuperar y renderizar allí el contenido relacionado con Tainacan?

### Funciones del ayudante de temas

Para ayudarte a crear tu plantilla, hay funciones exclusivas disponibles en tu tema una vez activado el plugin. Puedes encontrar todas o sus definiciones en la página [Tainacan Template Tags](/es-mx/dev/template-tags.md). Las resumimos a continuación.

Si estás desarrollando un `single-items.php` personalizado, puede que te interese:

- `tainacan_get_item()` - Devuelve el Elemento objeto según el ID dado;
- `tainacan_get_the_document()` o `tainacan_the_document()` - Obtiene una versión HTML del "Item Document", que puede ser una imagen, una versión incrustada de PDF, enlaces de vídeo, tweets, etc.
- `tainacan_has_document()` - Comprueba si el elemento actual (en un bucle) tiene un documento establecido o no;
- `tainacan_get_the_metadata_sections` o `tainacan_the_metadata_sections` - Obtiene una lista HTML de las secciones de metadatos y los metadatos que contienen. Se pueden pasar varios parámetros para modificar su apariencia.
- `tainacan_get_the_metadata()` o `tainacan_the_metadata()` - Obtiene una lista HTML de los metadatos de los elementos. Puede pasar argumentos para ajustar cómo se crea la lista, con parámetros similares a los disponibles en algunas funciones de WordPress para la representación de listas;
- `tainacan_get_the_attachments()` - Devuelve una lista HTML de los adjuntos del elemento actual;
- `tainacan_get_attachment_html_url()` - Devuelve un adjunto HTML renderizado, dado su ID;
- `tainacan_the_item_edit_link()` - Genera un enlace HTML para editar un elemento si el usuario tiene permiso;
- `tainacan_the_item_gallery()` - Genera la "galería multimedia del elemento", un componente con carrusel y zoom que puede utilizarse para mostrar el documento y los archivos adjuntos;
- `tainacan_the_related_items()` - Muestra una lista de elementos que tienen alguna relación con el elemento actual en sus metadatos de tipo relación;

Si está desarrollando cualquier listado de archivo de artículos, las siguientes funciones son esenciales:

- `tainacan_the_faceted_search()` - Renderiza un div HTML con ID y parámetros para la instancia de Vue.js (del lado del cliente) responsable de un listado de ítems con menú de filtros, control de búsqueda y modos de vista. Es aplicable a elementos de colecciones, elementos de términos y elementos de repositorios. Más información [en la sección The Vue Items List Component](/dev/the-vue-items-list-component.md);
- `tainacan_register_view_mode()` - Registra un modo de vista. Lo utilizan los temas o plugins que implementan [modos personalizados de vista extra](/dev/extra-view-modes.md);
- `tainacan_current_view_displays()` - Comprueba si un determinado metadato o propiedad debe mostrarse en este modo de vista;

Si está desarrollando un archivo personalizado de artículos o colecciones, estas funciones pueden serle de ayuda:

- `tainacan_get_collection_id()` - Devuelve el ID de la colección actual dentro de un archivo de elementos o individual;
- `tainacan_get_collection()` - Devuelve el objeto de la colección actual dentro de un archivo de elementos o individual;
- `tainacan_get_the_collection_name()` o `tainacan_the_collection_name()` - Devuelve el nombre de la colección actual dentro de un archivo de elementos o individual;
- `tainacan_get_the_collection_description()` o `tainacan_the_collection_description()` - Devuelve la descripción actual de la colección dentro de un archivo de elementos o individual;
- `tainacan_the_items_carousel` - Etiqueta de plantilla para representar el [Bloque de carrusel de elementos](/es-mx/blocks-items.md#carrusel-de-elementos);

Si está desarrollando un archivo de elementos de términos personalizado, estas funciones pueden ayudarle:

- `tainacan_get_term()` - Devuelve el objeto término actual dentro de un archivo de términos;
- `tainacan_get_the_term_name()` o `tainacan_the_term_name()` - Devuelve el nombre del término actual dentro de un archivo de términos;
- `tainacan_get_the_term_description()` o `tainacan_the_term_description()` - Devuelve la descripción del término actual dentro de un archivo de términos;

Y más...

- `tainacan_get_the_mime_type_icon()` - Obtiene un icono de tipo mime para un archivo según su tipo. Esto genera las miniaturas utilizadas en los carruseles de adjuntos y bloques;
- `tainacan_get_initials()` - Función de presentación utilizada por algunas miniaturas en algunos temas. Produce una versión de cadena de un nombre con sus iniciales - por ejemplo: "Pinturas Clásicas" sería devuelto como "PC";

Se trata, por supuesto, de _funciones de ayuda_. Si no está satisfecho con la forma en que se realiza el renderizado, puede crear la suya propia. Consulta [el código fuente](https://github.com/tainacan/tainacan/blob/develop/src/classes/) para tener una idea más completa de cómo obtener el contenido de Tainacan. También puedes engancharte a varias de estas funciones usando [nuestras acciones y filtros](/es-mx/dev/filters.md). También hay [un ejemplo](/es-mx/dev/the-vue-items-list-component) de una implementación de `archive-items.php` en la siguiente sección.

## Plantillas aún más específicas

Hemos mencionado [arriba](#cree-los-archivos-para-las-plantillas) plantillas para las cuatro [páginas de Tainacan](/es-mx/tainacan-pages.md) básicas que el plugin generará para ti. Sin embargo, aún puede crear plantillas más específicas, usando la [jerarquía de archivos de plantilla de WordPress](https://developer.wordpress.org/themes/basics/template-hierarchy/) estándar.

Ejemplos:

- Una plantilla para la página de un solo artículo de la colección con ID 4: `single-tnc_col_4_item.php`;
- Una plantilla para un único artículo específico: `single-tnc_col_4_item-item-name.php`;
- Una plantilla para la lista de elementos de la colección con ID 4: `archive-tnc_col_4_item.php`;
- Una plantilla para una taxonomía específica: `taxonomy-tnc_tax_123.php`;
- Una plantilla para un término específico de una taxonomía específica: `taxonomy-tnc_tax_123-term-name.php`;
