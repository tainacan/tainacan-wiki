# Temas


Una de las razones por las que WordPress es tan famoso y versátil es su diversidad de temas. Hay miles de temas que pueden dar a tu sitio un estilo y una estructura más formales, llamativos o minimalistas. La gran mayoría son gratuitos y se instalan con un solo clic.

?> **Puede utilizar el plugin Tainacan con cualquier tema activado**, pero la experiencia puede ser mejor con temas que ofrezcan compatibilidad para sus páginas.

En esta página hablaremos sobre:

- Cuáles son [los temas que ofrecen la mejor compatibilidad](#temas-compatibles-con-tainacan) para Tainacan y,
- [Cómo instalar y manejar temas](#gestión-de-temas-en-wordpress) en tu _WordPress_.

## Temas compatibles con Tainacan

Además de insertar un nuevo campo en su panel de administración _WordPress_, desde donde se accede al propio panel de administración de Tainacan, el plugin Tainacan también genera [páginas especiales](/es-mx/tainacan-pages.md) en su sitio web. Si tu tema está diseñado para mostrar estas páginas, los listados de artículos y colecciones se mostrarán con todas las funciones de navegación de las colecciones, como la búsqueda de artículos, los filtros, las distintas formas de mostrarlos, etc. De lo contrario, estos listados deberían ser muy similares a la forma en que el tema muestra las entradas del blog.

Desarrollar un tema compatible no es complicado y tampoco hay que hacerlo desde cero, ya que muchos pueden generarse a partir de [temas hijo](https://codex.wordpress.org/es:Temas_hijos) de otros ya existentes. Aquí en la Wiki tenemos [una sesión entera](/es-mx/dev/creating-compatible-themes.md) dedicada a enseñar esto a los desarrolladores.

Actualmente existe un tema desarrollado por la comunidad Tainacan y publicado en el [repositorio oficial de WordPress](https://es.wordpress.org/themes/). El resto están disponibles a través de GitHub. Para instalar temas, vaya al panel de instalación de temas de WordPress y siga los pasos de la sección de instalación.

### Interfaz de Tainacan

Este es el tema por defecto del proyecto Tainacan y está disponible en los repos oficiales de Wordpress [en este enlace](https://es.wordpress.org/themes/tainacan-interface/). Ha sido desarrollado por el mismo equipo de diseño que creó la interfaz administrativa del plugin Tainacan, por lo que debería aportar la misma formalidad, con una buena legibilidad y diseños que soporten grandes cantidades de información mostrada en la misma pantalla. Este tema es ideal para museos, galerías, bibliotecas y cualquiera que tenga un repositorio digital. Destacamos sus principales ventajas:

- Plantillas específicas para listas de elementos de repositorios, colecciones y términos, con varias opciones de configuración, entre las que se incluyen:
  - Anulación del modo de visualización por defecto para los listados de términos;
  - Ocultar varios elementos de control de la búsqueda;
  - Cambiar el comportamiento de la barra de filtros, como su tamaño o si aparece oculta al principio;
- Plantilla específica para la lista de colecciones, con dos modos de visualización, búsqueda por texto y clasificación;
- Plantilla específica para la página de artículos, con varias opciones, entre ellas:
  - Cambiar el orden en que se muestran los archivos adjuntos, los metadatos y el documento;
  - Mostrar la lista de metadatos en más de una columna;
  - Mostrar los archivos adjuntos en forma de carrusel e integrar el documento en esta misma lista;
  - Mostrar una cabecera personalizada que se asemeje a la de la colección;
  - Botón de descarga en el documento;
  - Mostrar una sección de "Elementos relacionados";
- Actualizaciones frecuentes sincronizadas con las nuevas versiones del plugin Tainacan;
- Paleta de colores personalizable;
- Color de cabecera personalizable para cada colección dentro del plugin, cuando el tema está activo;
- Nuevo modo de visualización "Miniaturas";
- Botones para compartir en Facebook, Twitter, WhatsApp y Telegram en la mayoría de las páginas;
- Bloques Gutenberg estándar estilizados según la identidad visual del tema;
- Soporte de barra lateral;

![Capturas de pantalla del tema de interfaz de Tainacan](_assets/gifs/temas-tainacan-interfaz.gif)

### Blocksy

El segundo tema más recomendado que mencionamos aquí no es un tema hijo, sino un tema popular [tema disponible en el repositorio de WordPress](https://es.wordpress.org/themes/blocksy/ ":ignore"). Su integración con Tainacan es posible a través de un plugin, también disponible en el [repositorio de WordPress](https://es.wordpress.org/plugins/tainacan-blocksy/ ":ignore"). Una vez activados tanto el plugin como el tema (o un tema hijo), tendrás acceso a una serie de ajustes disponibles en el menú Personalizar. Cubrimos estas opciones con más detalle en [el post de lanzamiento del plugin](https://tainacan.org/en/blog/2021/06/14/using-the-blocksy-theme-with-tainacan/) y merece la pena echar un vistazo a la [página oficial del tema](https://creativethemes.com/blocksy/). Por mencionar algunas de sus características:

- Plantillas específicas para las listas de ítems del Repositorio, a partir de Términos y configuraciones independientes _para cada colección_, incluyendo diversas opciones como:
  - Elección de diferentes paletas de colores;
  - Ocultar varios elementos de la barra de control de búsqueda;
  - Cambiar el comportamiento del panel de filtros, como su tamaño y si se inicia oculto;
  - Algunas opciones adicionales para el diseño de la cabecera de la lista;
- Plantilla específica para la página de artículos, con varias opciones, entre ellas:
  - Cambiar el orden en que se muestran Anexos, Documento y metadatos, incluyendo la posibilidad de utilizar dos columnas: una para documentos y anexos, la otra para metadatos, junto;
  - Mostrar la lista de metadatos en más de una columna;
  - Mostrar etiquetas de metadatos junto a sus valores;
  - Mostrar los archivos adjuntos como un carrusel integrado con el documento en la misma lista;
  - Mostrar una cabecera personalizada que utilice la imagen en miniatura como banner;
  - Botón de descarga en el documento;
  - Navegación por artículos (siguiente y anterior);
  - Sesión de elementos relacionados basada en una taxonomía a elegir o en "Elementos relacionados con éste" a través de metadatos de relación;
  - Cuadro para compartir personalizable;
- Paleta de colores muy personalizable;
- Botón "Más" en el menú de cabecera cuando el número de artículos no cabe en la pantalla;
- Otras opciones de personalización del diseño disponibles a través del tema;

![Capturas de pantalla del tema Blocksy](_assets/gifs/themes-blocksy.gif)

### Identidad gubernamental (IDG-WP)

Este tema de WordPress fue desarrollado por un equipo de voluntarios vinculados al antiguo Ministerio de Cultura, con el objetivo de estandarizar varios sitios de WordPress utilizados por el Gobierno federal. Un ejemplo es la [Secretaria de Cultura](https://www.gov.br/cultura/pt-br). El [tema original](https://github.com/culturagovbr/IDG-WP ":ignore") por sí mismo no tiene soporte para Tainacan, pero con la demanda de varios museos vinculados a Ibram para utilizarlo, se creó un _fork_, una variación sobre el tema, en [otro repositorio](https://github.com/medialab-ufg/IDG-WP ":ignore"). Desgraciadamente, este proyecto necesita mantenedores y puede presentar algunos problemas. Destacamos sus características:

- Plantillas específicas para las listas de artículos Repositorio, Colección y Término, pero sin imágenes de cabecera;
- Plantilla específica para la página de artículos, incluido el carrusel de anexos;
- Integración estándar con la barra de enlaces y accesibilidad del Gobierno Federal;
- Compatibilidad con la mayoría de bloques gutenberg;
- Dos ubicaciones del menú: en la barra principal y en el panel oculto junto a ella;
- Carrusel de noticias en la página de inicio;
- Personalización de las sesiones de la página de inicio mediante plugins;

![Capturas de pantalla del tema IDG-WP](/_assets/gifs/themes-idg-wp.gif)

### Veganos (Tema infantil)

Creado para el proyecto [Covid-19 - UnB en acción](http://repositoriocovid19.unb.br/ ":ignore"), este es un tema hijo del tema [Veganos](https://es.wordpress.org/themes/veganos/), así que además de descargarlo de su [repositorio](https://github.com/tainacan/tainacan-unb-covid-19 ":ignore") también es necesario instalar el tema padre. Su característica más destacable es el formato "ondulado" de las imágenes de cabecera, entre otras:

- Plantillas específicas para las listas de elementos Repositorio, Colección y Término, incluyendo imágenes de cabecera y estilizadas con algunos bordes y sombras;
- Plantilla específica para la página del artículo, con metadatos listados antes del Documento y los anexos;
- Listado de entradas en formato de bloque, en una lista de dos columnas;
- Botones estilizados con efecto ondulado;
- Paleta de colores personalizable
- Integración estándar con la barra de enlaces y accesibilidad del Gobierno Federal;
- Integración con la barra de menús del BNU (si no desea utilizarla, basta con sacarla de la barra de menús). [branch 'not-unb'](https://github.com/tainacan/tainacan-unb-covid-19/tree/not-unb ":ignore") do GitHub);

![Capturas de pantalla del tema de Veganos](/_assets/gifs/themes-veganos.gif)

### Rife Free (Tema Hijo)

Este es un [tema hijo](https://github.com/tainacan/rife-free-child ":ignore") del popular tema [Rife Free](https://es.wordpress.org/themes/rife-free/ ":ignore"). Depende de un plugin instalado, el plugin [Apollo13 Framework extensions](https://apollo13themes.com/rife/free ":ignore"), pero ofrece muchas opciones de personalización, desde el formato de páginas y entradas hasta el comportamiento de la cabecera. Otros aspectos destacados son:

- Plantillas específicas para las listas de elementos Repositorio, Colección y Término, incluyendo imágenes de cabecera;
- Plantilla específica para la página de ítems, incluyendo los botones siguiente y anterior, que muestra la miniatura de los ítems;
- Botón de desplazamiento a la parte superior;
- Paleta de colores diversa y personalizable;
- Animaciones y efectos de transición;
- Listado de entradas en formato de bloque, opcionalmente en una lista de tres columnas;

![Capturas de pantalla del tema Rife Free](/_assets/gifs/themes-rife-free.gif)

### Twenty Twenty (Tema Hijo)

Cada año WordPress lanza un "tema oficial", que se activa por defecto en sus instalaciones y que suele tener un diseño popular, con buena aplicación de los bloques gutenberg así como pruebas de accesibilidad y responsiveness. Para validar nuestras pruebas con el plugin, hemos creado un tema hijo de [TwentyTweny](https://wordpress.org/themes/twentytwenty/ ":ignore"), disponible [en este enlace](https://github.com/tainacan/TwentyTwentyChild ":ignore").

![Capturas de pantalla del tema Twenty Twenty](/_assets/gifs/themes-twentytwenty.gif)

---

## Gestión de temas en WordPress

### Videotutorial: Instalación de temas

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/oEl9bWe_rWI?start=780"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> Vea también cómo instalar el [plugin Tainacan](/es-mx/tainacan.md) para WordPress.

### Actualizar el tema

1. Vaya al Panel de control de _WordPress_;
2. En el menú lateral izquierdo, haga clic en **Apariencia**;
3. Seleccione el submenú **Tema**;
4. En el bloque de cada tema, aparece el mensaje "_Nueva versión disponible. Actualizar ahora_" aparece cada vez que se publica una nueva versión;
5. Haga clic en **Actualizar ahora** para recibir la última versión estable del tema.

### Cambiar o eliminar el tema

1. Vaya al Panel de control de _WordPress_;
2. En el menú lateral izquierdo, haga clic en Apariencia;
3. Seleccione el submenú Tema;
4. Para cambiar el tema actual, active otro tema de su elección.
5. Para eliminar el tema, haga clic en Información sobre el tema en el bloque del tema deseado;
6. En la esquina inferior derecha, haga clic en Eliminar.

!> **Atención**: Para preservar la configuración y navegabilidad de los elementos y colecciones, utilice temas compatibles con las mejores prácticas de desarrollo de temas para Tainacan.

!> **Atención**: La desactivación del tema Tainacan afecta a los ajustes de visualización y navegabilidad de los ítems y colecciones del repositorio. Esta operación sólo puede ser deshecha por los administradores.


!> **Atención**: Por motivos de seguridad, siempre se recomienda hacer una copia de seguridad de la instalación antes de realizar cualquier cambio. Sólo elimine el tema si está seguro de que no se producirá una pérdida grave de información. Esta operación sólo puede revertirse restaurando una copia de seguridad de la instalación.
