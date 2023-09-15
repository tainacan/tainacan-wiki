# Tainacan para desarrolladores

Como saben, **Tainacan es un plugin de [WordPress](https://es.wordpress.org)** y está construido sobre esta conocida plataforma. Si estás familiarizado con _WordPress_ debería serte fácil entender cómo está organizado Tainacan, cómo interactúa con la base de datos y cómo construir tus propias funcionalidades a partir de él.

## Bueno, pero yo soy nuevo en WordPress

Si no tienes experiencia con WordPress y te gustaría desarrollar un plugin para Tainacan, o incluso contribuir al plugin, es una buena idea aprender algunos fundamentos. Éstos serán útiles para todo lo que tratará mientras trabaja con Tainacan.

Esta es una lista no exhaustiva de los temas más importantes que deberías investigar:

<div class="two-columns-list">

- [WP_Query](https://developer.wordpress.org/reference/classes/wp_query/ ":ignore") class - Este es el corazón de WordPress, la clase que le da la interfaz para consultar las entradas en la base de datos. Toda la interacción con la base de datos en Tainacan utiliza esta clase.
- [Custom Post types](https://wordpress.org/support/article/post-types/ ":ignore") y [taxonomías](https://codex.wordpress.org/Taxonomies ":ignore") - Todas las entidades de Tainacan, como las colecciones, los metadatos y los artículos, son tipos de entrada personalizados de WordPress, por lo que resulta útil comprender cómo se gestionan.
- [The Loop](https://developer.wordpress.org/themes/basics/the-loop/ ":ignore") - Uno de los principales elementos de WordPress utilizado para interactuar a través de los mensajes. Útil sobre todo si está retocando con temas.
- [Template Tags](https://developer.wordpress.org/themes/basics/template-tags/ ":ignore") - Funciones simples utilizadas por los desarrolladores de temas para mostrar contenido dinámico. Por lo general, estas funciones se utilizan dentro de "The Loop" y Tainacan implementa [sus propias etiquetas].(/es-mx/dev/template-tags.md).
- [Template Hierarchy](https://developer.wordpress.org/themes/basics/template-hierarchy/ ":ignore") - Crucial si trabajas con temas.

</div>

---

## Recursos para el desarrollo

### Fundamentos del desarrollo {docsify-ignore}

<div class="two-columns-list">

- [Configuración del entorno local](/es-mx/dev/setup-local.md) - Si quieres contribuir al núcleo de Tainacan, debes configurar tu entorno local. Alternativamente, puede utilizar nuestro [repositorio Docker](https://github.com/tainacan/tainacan-docker ":ignore"). **Si quieres desarrollar temas o plugins, no necesitas esto**.
- [Conceptos clave](/es-mx/dev/key-concepts.md) - Lo primero es lo primero. Entendamos qué es qué en Tainacan.
- [Interiores de Tainacan](/es-mx/dev/internal-api.md) - Referencia sobre las principales clases de Tainacan y cómo utilizarlas.
- [Ganchos de Tainacan](/es-mx/dev/hooks.md) - Amplíe o modifique diferentes secciones de código sin modificar el plugin, utilizando Acciones y Filtros, tanto en el backend como en el frontend.
- [API de Tainacan](https://tainacan.org/api-docs/ ":ignore") - Una API Rest JSON que puede utilizar para obtener contenido de una base de datos Tainacan.
- [Roles y capacidades](/es-mx/dev/roles-capabilities.md) - Información básica sobre privacidad de datos y niveles de acceso en Tainacan.

</div>

### Más sobre el desarrollo de plugins {docsify-ignore}

<div class="three-columns-list">

- [Exportar y exponer](/es-mx/dev/exporting-and-exposing.md)
- [Importador CSV](/es-mx/dev/csv-importer.md)
- [Importador de vocabulario](/es-mx/dev/vocabulary-importer.md)
- [Normativa cartográfica](/es-mx/dev/mapping-standards.md)
- [Métodos de repositorio](/es-mx/dev/repository-methods.md)

</div>

### Extensión de Plugin {docsify-ignore}

<div class="two-columns-list">

- [Creación de un nuevo tipo de metadatos](/es-mx/dev/creating-metadata-type.md) - Guía para crear un tipo de metadatos personalizado
- [Creación de un nuevo tipo de filtros](/es-mx/dev/creating-filters-type.md) - Guía para crear un tipo de filtro personalizado
- Cómo crear [Exportadores](/es-mx/dev/exporter-flow.md), [Importadores](/es-mx/dev/importer-flow.md) and [Expositores](/es-mx/dev/exposers.md)
- [Registro de nuevos componentes Vue](/es-mx/dev/registering-custom-vue-components.md) - Registro de nuevos componentes Vue que pueden ser utilizados por su plugin, como metadatos y tipos de filtro o modos de vista adicionales.
- [Componente de lista de elementos Vue](/es-mx/dev/the-vue-items-list-component.md) - La lista de elementos renderizados del lado del cliente que proporciona toda la potencia a la búsqueda facetada.
- [Modificación de la interfaz de administración de Tainacan](/es-mx/dev/admin-ui-options.md) - Uso de un filtro para establecer variables para personalizar el panel de administración de Tainacan.

</div>

### Desarrollo o ampliación de temas {docsify-ignore}

<div class="two-columns-list">

- [Creación de temas compatibles](/es-mx/dev/creating-compatible-themes.md) - Introducción a la creación de un tema totalmente compatible con las funciones de Tainacan.
- [Plantillas personalizadas de Tainacan](/es-mx/dev/custom-templates.md) - Plantillas personalizadas para las que Tainacan añade a la jerarquía de plantillas de WordPress
- [Personalización de la lista de artículos](/es-mx/dev/customizing-the-items-list.md) - Modificar el aspecto de la lista de artículos
- [Creación de modos de vista adicionales](/es-mx/dev/extra-view-modes) - Cómo crear modos de vista adicionales para mostrar la lista de elementos
- [Soporte Gutenberg para temas](/es-mx/dev/theme-gutenberg-support.md) - Detalles para ofrecer una mejor compatibilidad con el último editor de bloques de contenido

</div>

### Configuración y rendimiento {docsify-ignore}

<div class="three-columns-list">

- [Búsqueda por facetas](/es-mx/dev/faceted-search.md)
- [Motor de búsqueda](/es-mx/dev/search-engine.md)
- [Recolector de basura](/es-mx/dev/garbage-collector.md)

</div>

---

## Otras contribuciones al desarrollo

<div class="three-columns-list">

- [Directrices contributivas](/es-mx/dev/CONTRIBUTING.md)
- [Proceso de liberación de Tainacan](/es-mx/dev/release.md)

</div>
