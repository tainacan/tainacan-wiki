# Personalización de la lista de elementos

Se puede hacer mucho para añadir soporte de Tainacan a tu tema usando la lógica de jerarquía de plantillas mencionada en la sección [Plantillas personalizadas](/es-mx/dev/custom-templates.md). Aunque esto puede ser suficiente puede que estés interesado en ajustar un poco más la apariencia de la página más compleja que Tainacan te ofrece: **La Página de Lista de Artículos**. Mira el ejemplo de abajo, del tema hijo de [TwentyTwenty](https://wordpress.org/themes/twentytwenty/ ':ignore') que implementó un `archive-items.php` básico:

![Plantilla añadida a la página de lista de items.](/_assets/the-vue-items-list-component-1-new.png)

Parece una potente interfaz de búsqueda facetada, pero definitivamente podríamos hacer algunos ajustes para que encaje mejor con nuestro tema padre. Resulta que esta página funciona con una estrategia muy diferente, que se explica en detalle en [la sección "El componente de lista de elementos Vue"](/es-mx/dev/the-vue-items-list-component.md). 

> En resumen, **la lista de elementos devuelta por _tainacan_the_faceted_search()_ es en realidad un componente Vue.js**, renderizado en el lado del cliente. La mayor parte de su código se comparte con la versión del panel de administración de la lista de elementos. 

## Jugando con algunas variables de personalización

Por suerte para los desarrolladores de temas, desde Tainacan 0.16 se ofrecen muchas opciones de personalización. Hay dos tipos de personalizaciones que se pueden aplicar fácilmente:

* [Pasar variables `php` a la llamada a la función de plantilla](#pasando-variables-php-a-tainacan_the_faceted_search); 
* [Pasar variables `css` a la clase de lista de elementos](#pasando-variables-css-a-la-clase-items-list); 

Aquí hay tres ejemplos de resultados de plantillas después de jugar con estas variables:

<div style="display: flex; align-items: center; justify-contents: space-evenly;">
<div style="margin: 0 12px">

![Ejemplo de lista configurada 1](/_assets/blocks-faceted-search-2.jpg)

</div>
<div style="margin: 0 12px">

![Ejemplo de lista configurada 2](/_assets/blocks-faceted-search-3.jpg)

</div>
<div>

![Ejemplo de lista configurada 3](/_assets/blocks-faceted-search-4.jpg)

</div>
</div>

Veamos cómo es posible:

### Pasando variables `php` a _tainacan_the_faceted_search()_

Como vimos en nuestra introducción de [creación de temas compatibles](/es-mx/dev/creating-compatible-themes.md). Tener una lista de elementos de búsqueda rica en facetas es tan sencillo como crear un archivo con tres líneas. La magia la hace la función de ayuda `tainacan_the_faceted_search()`, que renderiza el componente Vue.js. Como es lógico, esta función ofrece varias variables de personalización, que describimos a continuación:

| Variable name                                | Type        | Default        | Description                          |
|----------------------------------------------|-------------|-------------|--------------------------------------|
| `$hide_filters`                              | `bool`      | `false`      | Oculta completamente la barra de filtros o el modal                                                         |
| `$hide_hide_filters_button`                  | `bool`      | `false`      | Oculta el botón responsable de colapsar la barra lateral de filtros en el escritorio                       |   |
| `$hide_search`                               | `bool`      | `false`      | Oculta la barra de búsqueda completa, incluyendo el enlace de búsqueda avanzada                                   |   |
| `$hide_advanced_search`                      | `bool`      | `false`      | Oculta sólo el enlace de búsqueda avanzada.                                                             |   |
| `$hide_displayed_metadata_dropdown`          | `bool`      | `false`      | Oculta el desplegable "Metadatos mostrados" incluso si los modos de vista actuales lo permiten                |   |
| `$hide_sorting_area`                         | `bool`      | `false`      | Oculta completamente todos los controles de ordenación                                                           |   |
| `$hide_sort_by_button`                       | `bool`      | `false`      | Oculta el botón donde el usuario puede seleccionar los metadatos para ordenar por elementos (mantiene la dirección de ordenación) |   |
| `$hide_exposers_button`                      | `bool`      | `false`      | Oculta el botón "Ver como...", también conocido como modal Expositores                                            |   |
| `$hide_items_per_page_button`                | `bool`      | `false`      | Oculta el botón para seleccionar la cantidad de elementos cargados por página                                  |   |
| `$hide_go_to_page_button`                    | `bool`      | `false`      | Oculta el botón para saltar a una página específica                                                 |   |
| `$hide_pagination_area`                      | `bool`      | `false`      | Oculta completamente los controles de paginación                                                            |   |
| `$default_items_per_page`                    | `int`       | `12`       | Número predeterminado de elementos por página cargada                                                         |   |
| `$show_filters_button_inside_search_control` | `bool`      | `false`      | Muestra el botón "ocultar filtros" dentro del control de búsqueda en lugar de flotante              |   |
| `$start_with_filters_hidden`                 | `bool`      | `false`      | Carga la lista de filtros ocultos desde el inicio                                                        |   |
| `$filters_as_modal`                          | `bool`      | `false`      | Muestra los filtros como un modal en lugar de como una región colapsable en el escritorio                       |   |
| `$show_inline_view_mode_options`             | `bool`      | `false`      | Muestra los modos de vista como botones con iconos en línea en lugar de desplegables                               |   |
| `$show_fullscreen_with_view_modes`           | `bool`      | `false`      | Muestra los modos de vista de pantalla completa junto con otros modos de vista en lugar de por separado                |   |
| `$default_view_mode`                         | `string`    | `masonry`    | El modo de visualización por defecto                                                                           |   |
| `$is_forced_view_mode`                       | `bool`      | `false`      | Ignora las preferencias del usuario para mostrar siempre el modo de vista elegido por defecto                               |   |
| `$enabled_view_modes`                        | `string[]`  | Todos los modos de vista son registrados para el repositorio y la página de términos. Modos de vista habilitados en la configuración de la colección para la lista de elementos de la colección                                                        |   |

Tenga en cuenta que `$enabled_view_modes` son anulados por la configuración de colecciones cuando la lista de elementos es un archivo de elementos de colección.

### Pasando variables `css` a la clase items list;

Además, puedes usar variables css para sobreescribir las propias variables CSS de Tainacan. Puedes comprobar todas las existentes [en este archivo](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/scss/_custom_variables.scss). Ten en cuenta, sin embargo, que no sería interesante anularlas directamente en el selector `:root`, ya que esto afectaría también a todos tus estilos de Tainacan Admin. Para los temas, una mejor aproximación sería sobreescribirlos directamente en la clase `.theme-items-list`. A continuación puedes ver los que consideramos más relevantes para esta parte del contenido renderizado de Vue.js:

```css

.theme-items-list {
    /* Estilización de formularios y textos */
    --tainacan-input-color: #1d1d1d; /* No es negro del todo */
    --tainacan-input-background-color: #fff;
    --tainacan-input-border-color: #dbdbdb; /* Algunos bordes de entrada desactivan los colores de estado */
    --tainacan-label-color: #454647;
    --tainacan-info-color: #555758;
    --tainacan-heading-color: #000;

    /* Color de carga del esqueleto */
    --tainacan-skeleton-color: #eee;

    /* Elementos */
    --tainacan-item-background-color: #fff;
    --tainacan-item-hover-background-color: #f2f2f2;
    --tainacan-item-heading-hover-background-color: #dbdbdb;

    /* Colores derivados */
    --tainacan-primary: #d9eced; /* Fondo de los tooltips y de los elementos desplegables seleccionados (en realidad no es un buen nombre, ya que el secundario es el color más importante en general) */
    --tainacan-secondary: #298596; /* Enlace, estado activo, ¡color acentuado! */
    --tainacan-success: #25a189;
    --tainacan-danger: #a23939; 
    --tainacan-warning: #e69810;

    /* Fondo */
    --tainacan-background-color: #fff;

    /* Font family and size */
    --tainacan-font-family: Roboto, Source Sans, Helvetica, sans-serif;
    --tainacan-base-font-size: 1em; /* 16px en la mayoría de los navegadores, pero no necesariamente en su tema. La lista de elementos obtendrá el siguiente padre que tenga definido el valor de font-size. */

    /* Filtra el ancho del menú cuando no es modal */
    --tainacan-filter-menu-width-theme: 20%;

    /* Una columna es 1/24 y se usa mucho en la distribución del espacio horizontal */
    --tainacan-one-column: 4.16667%;

    /* No se utiliza realmente en TODOS los contenedores, pero es un valor bastante frecuente */
    --tainacan-container-padding: 25px;
}

```

?> Si desea ver un enfoque más "visual" de estas variables en juego, consulte el [Bloque de búsqueda por aspectos](/es-mx/blocks-items#busqueda-por-aspectos) que permite ajustar la mayoría de ellas en el control de configuración del bloque.

## Personalización más avanzada

Si quieres realizar una personalización más avanzada, deberías echar un vistazo a dónde está el código fuente de cada parte de la lista, de forma que si necesitas cambiar el CSS por ejemplo, puedas ver dónde buscar las definiciones de clases.

### La estructura de archivos del componente Vue

El árbol de archivos de abajo contiene sólo los elementos que de alguna manera se importan al paquete ThemeSearch - otros archivos relacionados con el panel de administración están ocultos por simplicidad:

```
/src/views
    ├── admin
    │   ├── components
    │   │   ├── filter-types
    │   │   │   ├── autocomplete
    │   │   │   │   ├── Autocomplete.vue
    │   │   │   │   └── class-tainacan-autocomplete.php
    │   │   │   ├── checkbox
    │   │   │   │   ├── Checkbox.vue
    │   │   │   │   └── class-tainacan-checkbox.php
    │   │   │   ├── date
    │   │   │   │   ├── class-tainacan-date.php
    │   │   │   │   └── Date.vue
    │   │   │   ├── date-interval
    │   │   │   │   ├── class-tainacan-date-interval.php
    │   │   │   │   └── DateInterval.vue
    │   │   │   ├── filter-type
    │   │   │   │   └── class-tainacan-filter-type.php
    │   │   │   ├── numeric
    │   │   │   │   ├── class-tainacan-numeric.php
    │   │   │   │   └── Numeric.vue
    │   │   │   ├── numeric-interval
    │   │   │   │   ├── class-tainacan-numeric-interval.php
    │   │   │   │   └── NumericInterval.vue
    │   │   │   ├── numeric-list-interval
    │   │   │   │   ├── class-tainacan-numeric-list-interval.php
    │   │   │   │   └── NumericListInterval.vue
    │   │   │   ├── selectbox
    │   │   │   │   ├── class-tainacan-selectbox.php
    │   │   │   │   └── Selectbox.vue
    │   │   │   ├── taginput
    │   │   │   │   ├── class-tainacan-taginput.php
    │   │   │   │   └── Taginput.vue
    │   │   │   ├── tainacan-filter-item.vue
    │   │   │   └── taxonomy
    │   │   │       ├── Checkbox.vue
    │   │   │       ├── class-tainacan-taxonomycheckbox.php
    │   │   │       ├── class-tainacan-taxonomytaginput.php
    │   │   │       └── Taginput.vue
    │   │   ├── modals
    │   │   │   ├── checkbox-radio-modal.vue
    │   │   │   └── exposers-modal.vue
    │   │   ├── other
    │   │   │   └── collection-filter.vue
    │   │   └── search
    │   │       ├── advanced-search.vue
    │   │       ├── filters-items-list.vue
    │   │       ├── filters-tags-list.vue
    │   │       └── pagination.vue
    │   ├── js
    │   │   ├── axios.js
    │   │   ├── event-bus-search.js
    │   │   ├── filter-types-mixin.js
    │   │   ├── mixins.js
    │   │   ├── store
    │   │   │   ├── modules
    │   │   │   │   ├── collection
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── exposer
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── filter
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── item
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── metadata
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   ├── search
    │   │   │   │   │   ├── actions.js
    │   │   │   │   │   ├── getters.js
    │   │   │   │   │   ├── index.js
    │   │   │   │   │   └── mutations.js
    │   │   │   │   └── taxonomy
    │   │   │   │       ├── actions.js
    │   │   │   │       ├── getters.js
    │   │   │   │       ├── index.js
    │   │   │   │       └── mutations.js
    │   │   │   └── store.js
    │   │   ├── utilities.js
    │   └── scss
    │       ├── _buttons.scss
    │       ├── _checkboxes.scss
    │       ├── _dropdown-and-autocomplete.scss
    │       ├── _filters-menu-modal.scss
    │       ├── _inputs.scss
    │       ├── _modals.scss
    │       ├── _notices.scss
    │       ├── _pagination.scss
    │       ├── _radios.scss
    │       ├── _repository-level-overrides.scss
    │       ├── _selects.scss
    │       ├── _switches.scss
    │       ├── _tables.scss
    │       ├── _tabs.scss
    │       ├── _tags.scss
    │       ├── _tainacan-form.scss
    │       ├── _tooltips.scss
    │       ├── _variables.scss
    │       ├── _view-mode-cards.scss
    │       ├── _view-mode-grid.scss
    │       ├── _view-mode-masonry.scss
    │       └── _view-mode-records.scss
    └── theme-search
        ├── components
        │   ├── circular-counter.vue
        │   ├── view-mode-cards.vue
        │   ├── view-mode-masonry.vue
        │   ├── view-mode-records.vue
        │   ├── view-mode-slideshow.vue
        │   └── view-mode-table.vue
        ├── js
        │   ├── theme-main.js
        │   └── theme-router.js
        ├── pages
        │   └── theme-items-page.vue
        ├── scss
        │   ├── theme-basics.sass
        │   └── _view-mode-slideshow.scss
        └── theme-search.vue
```

Como puedes ver, hay una estructura similar en ambas carpetas `/src/view/theme-search` y `/src/view/admin`, pero la última es considerablemente más compleja. Las cosas que son usadas por ambos están siempre dentro de "admin" ya que es el "módulo" principal del plugin. Por eso, si quieres sobreescribir cualquier clase css, por ejemplo, probablemente encontrarás su definición dentro de `/src/view/admin/scss/`. Pero los componentes Vue tienen la particularidad de permitir `scoped css` dentro de su código, lo que significa que también puedes encontrar lo que buscas dentro de uno de los archivos `.vue` a través del código.

No obstante, podemos mencionar algunas de las clases "principales" que pueden interesarte:
* `.theme-items-list`: el contenedor padre;
  * `.filters-menu`: el contenedor de la barra lateral donde vive la búsqueda textual y la lista de filtros;
  * `.items-list-area`: el contenedor donde está el control de búsqueda, la propia lista de elementos y la paginación;
    * `.search-control`: la barra donde están las opciones de ordenación, metadatos mostrados y modo de vista;
    * `.filter-tags-list`: un contenedor para la lista de etiquetas de filtrado, que sólo existe cuando se aplica alguna;
    * `.above-search-control`: un contenedor para todo lo que hay debajo del control de búsqueda; 
      * `.table-container>.table-wrapper`: donde se muestra el resultado de la lista de elementos con diferentes modos de visualización;
      * `.pagination-area`: la barra de pie de página con cosas relacionadas con la paginación;

### Personalizaciones CSS avanzadas del componente Vue

Así que aquí hay algunos ejemplos de personalizaciones que puedes hacer, ahora que entiendes más del componente de lista de elementos:

1. __Ocultar o cambiar el orden de los elementos__. Supongamos que deseas modificar un poco la sección *paginación*. No quiere que aparezca la selección "Elementos por página" y la selección "Ir a la página" probablemente debería estar después de los enlaces de paginación. Un vistazo al [componente de Paginación](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/components/search/pagination.vue ':ignore') y [scss](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/scss/_pagination.scss ':ignore') puede darnos una pista sobre qué hacer:
    ```css
    /* Esconde este, por favor */
    .pagination-area .items-per-page:not(.go-to-page) {
        display: none;
        visibility: hidden;
    }
    /* Mueve esto al final de .pagination-area */
    .pagination-area .go-to-page {
        order: 2;
    }
    ```
2. __Aumentar el tamaño de la fuente de algún elemento__. Los tamaños de fuente de *la interfaz de Tainacan* son más bien pequeños debido a su estilo formal, pero puedes ajustarlo también buscando las definiciones de *font-size* de tus elementos. Aquí hay algunos ajustes hechos al Control de Búsqueda de la lista de Elementos (la región donde la opción de Ordenación y la selección del Modo de Vista están disponibles). Podemos encontrar definiciones que afectan a esto [aquí](), [aquí]() y [aquí]():
    ```css
    /* Esto aumentará las etiquetas */
    .search-control-item .label {
        font-size: 1.5rem;
    }
    /* Esto hará que los botones desplegables y otros botones sean más grandes*/
    .button:not(.is-small):not(.is-medium):not(.is-large) {
        font-size: 1.5rem !important;
    }
    /* Este es para los elementos de la lista desplegable */
    .dropdown .dropdown-menu .dropdown-content .dropdown-item {
        font-size: 1.25rem;
    }
    /* Por último, para la fuente del icono */
    .theme-items-list .search-control .gray-icon i::before, 
    .theme-items-list .search-control .gray-icon .icon i::before {
        font-size: 1.5rem;
    }
    ```
    Por supuesto, aquí también tienes que tener cuidado con los márgenes y los paddings, dependiendo de cuánto estés cambiando estos valores;
3. __Ajustar el contenedor de la lista según el margen del sitio__. En muchos temas, una página tiene un margen lateral, que mantiene el contenido dentro de un contenedor de un cierto `max-width`, que puede dejar la lista de elementos un poco...apretada. La mejor manera de manejar esto es tener una [Plantilla Personalizada](/es-mx/dev/custom-templates.md) para la lista de elementos que proporcione las clases contenedoras adecuadas para la sección de la lista. Si no puedes hacer eso, aún puedes solucionarlo con márgenes negativos y un poco de trabajo:
    ```css
    /* Reemplaza $max-width por el max-width de tu contenedor. Recuerda que puede cambiar según el tamaño de la pantalla, que se puede adaptar con media queries. /*
    /* El contenedor de la lista de elementos */
    .theme-items-list {
        width: 100%;
        margin-left: calc( - (100vw - $max-width) / 2);
        margin-right: calc( - (100vw - $max-width) / 2);
    }
    ```
4. __Cambiar el ancho de la lista de filtros__. Aquí hay uno más complicado. Debido a su lógica de scroll, el elemento `#filters-desktop-aside` tiene una posición absoluta (puedes comprobarlo [aquí]()). Esto significa que cambiar su anchura también requerirá un ajuste en `#items-list-area`, que está justo a su lado:
    ```css
    #filters-desktop-aside {
        min-width: 15%;
        width: 15%;
    }
    #items-list-area {
        margin-left: 15%;
    }
    ```
    Usamos el *id* `#filters-desktop-aside` en lugar de *class* `.filters-menu` porque eso también afectaría al modal de filtros que aparece en la versión móvil.
