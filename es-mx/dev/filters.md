# Filtros

Del manual para desarrolladores de WordPress:

> Un filtro toma la información que recibe, la modifica de alguna manera, y la devuelve. En otras palabras: filtra algo y lo devuelve al gancho para su uso posterior. Se usa para modificar algo de una manera específica para que la modificación sea usada por el código más adelante.

Los Filtros Tainacan pueden dividirse en Backend, filtros _basados en PHP_ y Frontend, filtros _basados en Javascript_:

## Filtros Backend

### tainacan-extract-pdf-cover

### tainacan-index-pdf

### tainacan-default-image-blurhas

### tainacan-api-prepare-items-args

### tainacan-api-response-collection-meta

### tainacan-api-response-filter-meta

### tainacan-rest-response

### tainacan-api-response-item-meta

### tainacan-api-items-prepare-for-response

### tainacan-item-get-author-name

### tainacan-api-items-filter-arguments

### tainacan-api-items-${filter_type_component}-filter-arguments

### tainacan-api-get-items-alternate

### tainacan-api-items-filters-response

### tainacan-api-items-filters-arguments-response

### tainacan-api-items-response

### tainacan-submission-item-data

### tainacan-api-response-metadatum-meta

### tainacan-api-response-metadata-section-meta

### tainacan-api-role-prepare-for-response

### tainacan-api-response-taxonomy-meta

### tainacan-api-response-term-meta

### tainacan-collection-to-string

### tainacan-collection-to-array

### tainacan-collection-get-attachments

### tainacan-collection-get-author-name

### tainacan-collection-get-thumbnail

### tainacan-collection-get-header-image

### tainacan-status-require-validation

### tainacan-entity-get-property

### tainacan-entity-set-property

### tainacan-set-post-status

### tainacan-get-post-status

### tainacan-collection-to-array

### tainacan-taxonomy-to-array

### tainacan-metadatum-to-array

### tainacan-metadata-section-to-array

### tainacan-filter-to-string

### tainacan-filter-to-array

### tainacan-item-metadata-get-multivalue-prefix

### tainacan-item-metadata-get-multivalue-suffix

### tainacan-item-metadata-get-multivalue-separator

### tainacan-item-metadata-to-array

### tainacan-status-require-validation

### tainacan-item-to-string

### tainacan-item-to-array

### tainacan-item-get-attachments

### tainacan-item-get-author-name

### tainacan-item-get-thumbnail

### tainacan-status-require-validation

### tainacan-get-item-metadatum-as-html-(before/after)

### tainacan-get-item-metadatum-as-html-(before/after)--type-{$metadatum-type}

### tainacan-get-item-metadatum-as-html-(before/after)--id-{$metadatum-id}

### tainacan-get-item-metadatum-as-html-(before/after)--index-{$metadatum-index}

### tainacan-get-item-metadatum-as-html-(before/after)-title

### tainacan-get-item-metadatum-as-html-(before/after)-value

### tainacan-item-get-document-as-html

### tainacan-get-metadata-section-as-html-(before/after)

### tainacan-get-metadata-section-as-html-(before/after)--id-{$metadata-section-id}

### tainacan-get-metadata-section-as-html-(before/after)--index-{$metadata-section-index}

### tainacan-get-metadata-section-as-html-(before/after)-name

### tainacan-get-metadata-section-as-html-(before/after)-name--id-{$metadata-section-id}

### tainacan-get-metadata-section-as-html-(before/after)-name--index-{$metadata-section-index}

### tainacan-get-metadata-section-as-html-(before/after)-metadata-list

### tainacan-get-metadata-section-as-html-(before/after)-metadata-list--id-{$metadata-section-id}

### tainacan-get-metadata-section-as-html-(before/after)-metadata-list--index-{$metadata-section-index}

### tainacan-log-to-string

### tainacan-log-to-array

### tainacan-log-set-title

### tainacan-metadata-section-to-string

### tainacan-metadatum-to-string

### tainacan-taxonomy-to-string

### tainacan-term-to-string

### tainacan-term-to-array

### tainacan-term-to-html

### tainacan-terms-hierarchy-html-separator

### tainacan-the-modified-author

### tainacan-exporter-step-length-items

### tainacan-exporser-type-mappers

### tainacan-exposer-html

### tainacan-exposer-numeric-item-prefix

### tainacan-exposer-jsonld

### tainacan-exposer-head

### tainacan-oai-pmh-root

### tainacan-exposer-txt

### tainacan-exposer-numeric-item-prefix

### tainacan-get-mapper-from-request

### tainacan-oai-maxrecords

### tainacan-oai-token-valid

### tainacan-get-map-{$this->get_name()}

### tainacan-fetch-args

### tainacan-get-thumbnail-id-from-document

### tainacan_add_related_item

### tainacan-entity-diff

### tainacan-fetch-all-metadatum-values

### tainacan_repository_archive_template_hierarchy

### tainacan-get-the-document

### tainacan_get_the_document_raw

### tainacan_get_the_item_document_url

### tainacan_get_the_document_type

### tainacan-get-collection-name

### tainacan-get-collection-description

### tainacan-get-collection-url

### tainacan-default-view-mode-for-themes

### tainacan-enabled-view-modes-for-themes

### tainacan-get-term-name

### tainacan-get-term-description

### tainacan-get-the-attachments

### tainacan-get-initials

### tainacan-admin-ui-options

```php
add_filter(
    'tainacan-admin-ui-options',
    function($strings)
);
```

Un array de Admin UI Options. Aprende mas sobre este filtro [en su página dedicada](/es-mx/dev/admin-ui-options.md).

#### Parámetros

| Nombre    | Tipo    | Descripción                                                                                      |
| ------- | ------- | ------------------------------------------------------------------------------------------------ |
| options | `array` | Admin UI options. Se enumeran los posibles valores [aquí](/es-mx/dev/admin-ui-options.md). Por defecto es `[]`. |

### tainacan-i18n

```php
add_filter(
    'tainacan-admin-hooks-positions',
    function($strings)
);
```

Un array de tuplas clave-valor donde la clave es una clave simple para identificar una cadena traducible y el valor es la cadena traducida, usando `__('Some string here', 'tainacan' )`. Esto se exporta como un objeto global a la parte javascript del plugin Tainacan, que luego renderiza las traducciones en el frontend.

#### Parámetros

| Nombre    | Tipo    | Descripción                                                                                                                                                                                        |
| ------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| strings | `array` | Matriz de objetos que contienen la clave y el valor de la traducción de los strings. Por defecto es [el arreglo de este archivo](https://github.com/tainacan/tainacan/blob/master/src/views/tainacan-i18n.php ":ignore"). |

### tainacan-admin-hooks-positions

```php
add_filter(
    'tainacan-admin-hooks-positions',
    function($positions)
);
```

Lista de formularios disponibles en las que se pueden colocar ganchos para formularios.

#### Parámetros

| Nombre      | Tipo    | Descripción                                                                                                   |
| --------- | ------- | ------------------------------------------------------------------------------------------------------------- |
| positions | `array` | Posible forms regions con form hooks. Por defecto es `['begin-left', 'begin-right', 'end-left', 'end-right']`. |

### tainacan-admin-hooks-contexts

```php
add_filter(
    'tainacan-admin-hooks-contexts',
    function($contexts)
);
```

Lista de formularios disponibles donde admin form hooks puede ser usado

#### Parámetros

| Nombre     | Tipo    | Descripción                                                                                                    |
| -------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------- |
| contexts | `array` | Posibles forms para recibir form hooks. Por defecto es `['collection', 'metadatum', 'item', 'taxonomy', 'term', 'filter', 'role', 'metadataSection']`. |

## Filtros Frontend

### tainacan_use_legacy_masonry_view_mode_cols

```js
wp.hooks.addFilter(
    'tainacan_use_legacy_masonry_view_mode_cols',
    function(enable)
);
```

Este filtro permite a los desarrolladores utilizar el antiguo diseño Masonry, en oposición al introducido en Tainacan 0.19. La anterior tiene más columnas por pantalla y, por tanto, imágenes más pequeñas, utilizando el tamaño `tainacan-media-full`, mientras que la nueva utiliza menos columnas, utilizando el tamaño de imagen `tainacan-large-fill`.

#### Parámetros

| Nombre   | Tipo      | Descripción                                                          |
| ------ | --------- | -------------------------------------------------------------------- |
| enable | `Boolean` | Si se debe utilizar o no el diseño heredado. Por defecto es `false` |

### tainacan_faceted_search_search_control\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_search_control_(before/after)',
    function(htmlContent)
);
```

Permite insertar contenido html alrededor de la barra de control de búsqueda (donde están disponibles las opciones de ordenación, búsqueda textual, modo de vista, etc.). Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_search_control_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto |

### tainacan_faceted_search_advanced_search\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_advanced_search_(before/after)',
    function(htmlContent)
);
```

Permite insertar contenido html alrededor del panel de búsqueda avanzada. Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_advanced_search_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto |

### tainacan_faceted_search_filters\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_filters_(before/after)',
    function(htmlContent)
);
```

Permite insertar contenido html alrededor del panel de filtros. Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_filters_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto |

### tainacan_faceted_search_filter_tags\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_filter_tags_(before/after)',
    function(htmlContent)
);
```

Permite insertar contenido html alrededor de las etiquetas de filtro, que aparecen encima de la lista de elementos cuando se aplica un filtro. Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_filter_tags_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto |

### tainacan_faceted_search_items_list\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_items_list_(before/after)',
    function(htmlContent)
);
```

Permite insertar contenido html alrededor de la lista de elementos. Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_items_list_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto|

### tainacan_faceted_search_pagination\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_pagination_(before/after)',
    function(htmlContent)
);
```

Permite insertar contenido html alrededor de la región de paginación. Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_pagination_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                             |
| ----------- | -------- | --------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto |

### tainacan_faceted_search_item\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_faceted_search_item_(before/after)',
    function(htmlContent, item)
);
```

Permite insertar contenido html alrededor de una unidad de elemento en la lista de elementos. Tenga en cuenta que esto tendrá efecto en varios modos de vista. Existe una versión dinámica para colecciones específicas: `tainacan_faceted_search_collection_${collectionId}_item_(before/after)`.

#### Parámetros

| Nombre        | Tipo     | Descripción                                                      |
| ----------- | -------- | ---------------------------------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto                        |
| item        | `Object` | Objeto elemento con varios atributos, como ID, título, url, etc. |

### tainacan_item_submission_collection\_${$collectionId}\_${location}\_(before/after)

```js
wp.hooks.addFilter(
    'tainacan_item_submission_collection_${collectionId}_${location}_(before/after)',
    function(htmlContent, entity)
);
```

Filtro dinámico que permite insertar contenido html alrededor de diferentes partes del bloque de envío de artículos. Las ubicaciones son:

- `document` - El campo Documento del formulario;
- `attachments` - El campo Attachments del formulario;
- `thumbnail` - El campo Thumbnail del formulario;
- `metadata` - La lista de metadatos del formulario;
- `metadata_section` - Cada sección de metadatos (entidad = la sección de metadatos);
- `metadatum` - Cada Metadato (entidad = el Metadato);
- `footer` - El pie de página del formulario;

#### Parámetros

| Nombre        | Tipo     | Descripción                                                     |
| ----------- | -------- | --------------------------------------------------------------- |
| htmlContent | `String` | Contenido html a añadir. Vacío por defecto                        |
| entity      | `Object` | Objeto entidad si la entidad es Metadatum o una Sección Metadatum |
