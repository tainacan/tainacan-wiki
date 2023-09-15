# Versiones


Aquí tienes enlaces y detalles de las últimas versiones del plugin Tainacan. Recomendamos, especialmente mientras estemos en Beta, que utilices siempre la última versión.

## Tainacan Beta 0.19

### Publicación

Publicación de lanzamiento: [https://tainacan.org/blog/2022/08/23/tainacan-beta-0-19-secao-de-metadados-bloco-de-galeria-de-midia-do-item-e-muitas-muitas-melhorias/](https://tainacan.org/blog/2022/08/23/tainacan-beta-0-19-secao-de-metadados-bloco-de-galeria-de-midia-do-item-e-muitas-muitas-melhorias/ ":ignore")

### Resumen de la versión

#### Novedades

- [Sección de metadatos](/es-mx/metadata-sections.md);
- [Bloque de Galería de Medios del Elemento](/es-mx/block-item.md#galeria-de-mídias-do-item);

#### Mejoras

- Reestructuración de la búsqueda avanzada;
- Reorganización de la pantalla de edición de artículos;
- Redefinición del botón de actualización y de estado;
- Modo de navegación centrado en los metadatos;
- Filtro obligatorio de metadatos;
- Redistribución de la pantalla de configuración de la colección;
- Descripción de metadatos y marcadores de posición;
- Relación entre elementos de borrador;
- Filtros que comienzan desactivados;
- Nuevo tamaño de imagen: `tainacan-large-full`;
- Modo de visualización Masonry con imágenes más grandes;
- Opción de tamaño de imagen en bloques;
- Bibliotecas de galería de carrusel y zoom actualizadas;
- Sustitución de la librería _tooltips_;
- Actualización de la biblioteca que muestra documentos PDF incrustados;
- Varias mejoras en la capacidad de respuesta de la página de edición de elementos para pantallas pequeñas;
- Visualización de metadatos compuestos dentro de relaciones;
- Mayor prominencia del campo de texto alternativo de la imagen en miniatura;
- Botón de ordenación en la lista de metadatos y filtros;
- Visualización de una etiqueta que indica cuál de los anexos es el documento;
- Corrección de la cabecera en las listas de Actividades, Procesos y Permisos; y
- Corrección de varios errores.

#### Para desarrolladores

- Nuevos _hooks_ (filtros) para el [_backend_](/es-mx/dev/filters.md#filtros-backend) y el [_frontend_](/es-mx/dev/filters.md#filtros-frontend);
- Nuevos _template tags_ para la sección de metadatos;
- [Configuraciones](/es-mx/dev/admin-ui-options.md) para modificar el Admin;
- Form _hook_ específico para tipos de metadatos;
- Form _hook_ en el formulario de roles de usuario;

### Fecha de lanzamiento

- 23 de agosto de 2022

---

## Tainacan Beta 0.18

### Publicación

Publicación de lanzamiento: [https://tainacan.org/blog/2021/06/07/tainacan-beta-0-18-relatorios-sobre-o-acervo-nova-galeria-de-midias-e-melhorias-na-lista-de-itens/](https://tainacan.org/blog/2021/06/07/tainacan-beta-0-18-relatorios-sobre-o-acervo-nova-galeria-de-midias-e-melhorias-na-lista-de-itens/ ":ignore")

### Resumen de versión

#### Novedades

- Página de informes de Tainacan, que muestra gráficos e información estadística relativa a la recopilación y gestión del repositorio;
- Nuevo modo de archivos adjuntos con zoom y opción de mostrar título, descripción y subtítulo de los archivos (para ser utilizado por temas);
- Iconos por tipo de documento para los elementos sin miniaturas;
- Carga progresiva de imágenes con efecto de desenfoque;
- Filtrado de texto y tipos en la pantalla de metadatos y filtros;
- Sustitución del documento de un artículo a través del importador CSV;
- Opción de borrar un elemento a través del importador CSV;
- Opción de añadir un enlace al final del bloque de envío de elementos al elemento creado;

#### Mejoras

- Opción de crear todos los metadatos en la pantalla de asignación del importador;
- Añade paginación a la búsqueda de entrada de casillas, tanto en el filtro como en los metadatos de tipo taxonomía;
- Varias mejoras en la eficacia del importador y del exportador;
- Mejoras en la apariencia de la pantalla de metadatos y visualización de información más relevante sin necesidad de abrirla para editarla;
- Las colecciones se crean con los comentarios desactivados por defecto;
- Mejora de la visualización de incrustaciones (y resolución de conflictos con WordPres css);
- Mejor etiquetado del estado de los comentarios en la colección;

#### Corrección de errores

- Hemos resuelto varios conflictos de css con librerías externas;
- Hemos creado un filtro para listar las páginas en las que no se desea cargar javascript y css relacionados con los bloques de Tainacan;

### Fecha de lanzamiento

- 07 de junio de 2021

---

## Tainacan Beta 0.17

### Resumen de versión

#### Novedades

- Flujo de envío (depósito) de elementos por usuarios no registrados (Bloque de envío de elementos)
- Filtros por tipo de documento y miniatura;
- Filtrado más inteligente por colecciones (incluye facetas);
- Modo de visualicación Lista
- Cambiar el orden y el título de los archivos adjuntos;
- Tipo de metadatos URL incrustados (por hora mediante plugin);
- Aviso emergente de errores en las peticiones del sistema;
- Botón para iniciar en modo de pantalla completa desde un elemento específico;
- Corregida la opción de barra de filtros con desplazamiento en el listado de elementos (requiere actualización del tema Tainacan Inferface);

#### Mejoras

- Nueva entrada de taxonomía mediante casillas de verificación;
- Inserción mejorada de términos nuevos y existentes en los metadatos de la taxonomía;
- Inserción mejorada de nuevos elementos en los metadatos de relaciones;
- Los filtros comienzan a colapsarse si no tienen valores para la faceta actual;
- Opción de dirigir los enlaces de términos a la lista de elementos filtrados por determinadas colecciones (ajuste de metadatos de tipo taxonomía);
- Opción de no mostrar nunca la miniatura si su colección no suele tener imágenes;
- Selección mediante MAYÚS en los listados de artículos en la administración.
- Nuevas opciones de tamaño de las miniaturas para los artículos en los bloques de carrusel;
- Los temas ahora pueden implementar la navegación elemento por elemento en sus páginas basándose en las consultas pasadas al hacer clic en el elemento de la lista;
- Ajustes en el modo de pantalla completa, incluido el modal de instrucciones para la navegación mediante teclado;
- Paginación en las visualizaciones y visualización sólo de los elementos seleccionados;
- Compatibilidad con WordPress 5.5 (incluyendo algunas adaptaciones de bloques a las nuevas características);
- Descripción en miniatura alternativa para permitir el uso de etiquetas alt (accesibilidad al listar elementos);

#### Corrección de errores

- Hacer que el permiso `manage_collection_x` también permita cambiar la configuración de la colección, no sólo sus metadatos, elementos, etc;
- Errores en la ejecución de algunas operaciones masivas;
- Las miniaturas de portadas PDF con transparencia ahora dan como resultado imágenes de fondo blanco en lugar de negro;
- Se oculta el botón "Seleccionar todos los elementos" cuando sólo existe una página;
- La redirección del bloque de búsqueda no funcionaba en temas que no soportan Tainacan;
- Evita que se rompa la colección si un tipo de metadatos registrado ya no está presente;
- Los metadatos numéricos entendían el valor 0 como "vacío";
- Los metadatos heredados de una colección raíz se creaban en orden inverso a la colección raíz;
- La inserción de metadatos de relación a través de taginput se limitaba a 100 elementos y eliminaba algunos valores cuando se duplicaban;
- Evita el autoenfoque del modal de filtro si es un panel lateral;
- Los enlaces incrustados como Tweets y Páginas en el documento de tipo URL tenían un margen enorme debajo de ellos;
- Filtros de taxonomía heredados que hacían la solicitud errónea;
- Edición masiva para cambiar el estado generando errores;

### Fecha de lanzamiento

- A mediados de noviembre de 2020.

---

## Tainacan Beta 0.16.1

### Publicación

Publicación de lanzamiento: https://tainacan.org/blog/2020/05/28/tainacan-beta-0-16-1/

### Resumen de versión

#### Mejoras

- El importador de elementos CSV obedece ahora el orden en que se pasan los metadatos cuando se utiliza la opción de crear metadatos automáticamente;
- Evita cerrar el panel de filtros con 'ESC' si se ha ocultado el botón ocultar/mostrar filtros;
- Carga el JS y CSS de la lista de elementos sólo una vez (debido a la búsqueda facetada del bloque gutenberg);

#### Correcciones

- La edición por lotes no funcionaba con la opción "Sustituir valores" para taxonomías;
- La eliminación de valores en metadatos multivaluados mediante edición en bloque eliminaba valores erróneos cuando los metadatos eran del tipo taxonomía;
- Se desactivan correctamente los registros de actividad de los metadatos al ejecutar el importador cuando se añaden nuevos elementos;
- La lista de elementos de términos no mostraba el título y la descripción en los modos de visualización Tabla y Hojas;
- El error `wp.primitives is undefined` impedía que apareciera el icono de los bloques de Tainacan Gutenberg;
- Varias correcciones de traducción o erratas en cadenas relacionadas con las nuevas funcionalidades;
- Ajustes CSS para filtros y tarjetas que estaban desalineados en Google Chrome;

### Fecha de lanzamiento

28 de mayo de 2020

---

## Tainacan Beta 0.16

### Publicación

Anuncio de la versión: https://tainacan.org/blog/2020/05/19/tainacan-beta-0-16-metadado-tipo-composto-e-usuario-bloco-da-busca-facetada-suporte-ao-wordpress-5-4/

### Resumen de versión

#### Novedades

- **Metadatos compuestos**
- **Bloque de lista de elementos** (la búsqueda facetada);
- Metadato tipo usuario de WordPress;
- Acción para copiar valores de metadatos en bloque;
- Compatibilidad con WordPress 5.4;
- Ventana emergente de error en el formulario de edición de elementos;

#### Mejoras

- Cambios en la interfaz de la cabecera de la colección: todos los iconos tienen ahora etiquetas y un nuevo color de fondo;
- Mejora de la accesibilidad: la escala del tamaño de la fuente es ahora más proporcional entre todos los elementos: entradas, iconos, etiquetas, etc;
- Desplazamiento infinito en todos los autocompletados y etiquetas de entrada;
- Mostrar no sólo el nombre de la colección utilizando la Taxonomía, sino también los metadatos;
- Al abrir un formulario de edición de metadatos o términos, la pantalla se desplaza automáticamente hasta él.
- Al acercar el ratón a la esquina inferior de la pantalla en la lista de elementos durante un segundo, aparece la barra de paginación. Cuando se acerque a la esquina superior, si está oculta, aparecerá la barra de búsqueda. Al aplicar cualquier cambio a la lista, el desplazamiento vuelve automáticamente a la parte superior de la barra de control.
- Muestra un icono de candado en la lista de metadatos y filtros cuando son privados.
- Formulario de edición de colecciones mejorado: evita establecer páginas vacías como principal y ofrece una selección más inteligente de los modos de visualización.
- Muestra la fecha y la hora de los archivos exportados.

#### Correcciones

- Error con los filtros de nivel de repositorio cuando se ven en una página de colección (en instalaciones con varias colecciones);
- ~~Metadatos creados automáticamente a través del importador ahora siguen el orden del archivo fuente;~~
- Bloques Gutenberg que tenían errores al editar su contenido vía modo;
- Al cambiar de página en la lista de elementos y volver a la página anterior, no se conservaba el número de página de búsqueda.
- No se estaba bloqueando la inserción de nuevos términos si la configuración en la taxonomía no lo permitía, pero los metadatos sí.
- Corrección de los problemas de carga de la lista de archivos adjuntos cuando el documento del artículo es de tipo Texto o Vínculo.
- Los roles de usuario creados por Tainacan ahora siempre comienzan con los permisos mínimos para acceder al panel de WordPress.

#### Para desarrolladores

- La tan esperada reorganización de la estructura de archivos del proyecto, que ahora debería ser más clara para cualquiera que quiera contribuir al código.
- Diversas parametrizaciones disponibles para los desarrolladores de temas que deseen adaptar la Lista de elementos a su tema, entre las que se incluyen:
  - Variables CSS para personalizar colores, fuentes y tamaños;
  - Variables de plantilla para mostrar u ocultar diversos elementos y cambiar el comportamiento predeterminado de algunas zonas, como el panel de filtros;
- Nuevo esquema para registrar tipos de filtros y metadatos de terceros, incluyendo componentes VUE sin tener que cambiar el código del núcleo, sólo a través de plugins.

#### Fecha de lanzamiento

- 19 de mayo de 2020

---

## Tainacan Beta 0.15.1

### Publicación

[Tainacan Beta 0.15.1 – Importante corrección de errores al crear taxonomías](https://tainacan.org/blog/2020/02/20/tainacan-beta-0-15-1-importante-correcao-de-erro-na-criacao-de-taxonomias/)

### Resumen de versión

#### Corrección

Corrección de un error al crear una nueva taxonomía, donde los metadatos que la utilizan tenían su estado cambiado a "borrador automático", lo que modificaba completamente su visibilidad y funcionamiento en general.

#### Fecha de lanzamiento

20 de febrero de 2020

---

## Tainacan Beta 0.15

### Publicación

[Tainacan Beta 0.15 – Permisos y roles de usuario, mejora del rendimiento y edición en lote mejorada](https://tainacan.org/blog/2020/02/13/tainacan-beta-0-15-permissoes-e-funcoes-de-usuarios-melhor-performance-e-edicao-em-massa-refatorada/)

### Resumen de versión

#### Novedades

- Nuevo esquema de permisos de usuario;
- Pantallas para la administración de roles de usuario y permisos específicos de repositorios o colecciones;

#### Mejoras

- Edición por lotes ejecutada como proceso en segundo plano;
- Mayor eficacia en las peticiones a la Base de Datos;
- Información añadida al archivo de registro de los procesos de edición en lote, como el número total de elementos procesados;
- Visualización únicamente de los campos especiales válidos en la lista de asignación de metadatos del importador CSV;

#### Correcciones

- Corrección del orden de listado del bloque Carrusel de términos;
- Mejoras en la seguridad de la API, impidiendo la visualización de metadatos y filtros privados a usuarios no registrados;

#### Fecha de lanzamiento

12 de febrero de 2020
