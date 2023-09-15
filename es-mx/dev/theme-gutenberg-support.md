?> _TODO_ Esta página está en construcción.

# Soporte para el Tema Gutenberg

Como se explica en nuestra documentación para [Bloques Gutenberg](/es-mx/gutenberg-blocks.md), son el futuro de la edición de contenidos en WordPress. Si tu tema es capaz de funcionar en *WordPress >= 5.0*, los usuarios ya tienen disponibles una variedad de bloques para componer post y páginas, como encabezados, párrafos, imágenes, columnas, etc, que se complementan con los [Bloques Tainacan](/es-mx/gutenberg-blocks#los-bloques-de-tainacan).

Aunque esto debería funcionar de inmediato, hay cosas que puedes hacer, como desarrollador, para mejorar la experiencia del usuario con esta nueva característica. Las demostraremos aquí, usando la mayor parte del código de la [Interfaz Tainacan](https://wordpress.org/themes/tainacan-interface/) como ejemplo:

- [Soporte para el Tema Gutenberg](#soporte-para-el-tema-gutenberg)
  - [Soporte de nuevas opciones de alineación](#soporte-de-nuevas-opciones-de-alineación)
  - [Añadir soporte de esquema de color a los bloques](#agregar-combinaciones-de-colores-a-los-bloques)

## Soporte de nuevas opciones de alineación

<div style="float: right; margin-left: 32px;">

![Opciones de alineación en un bloque de imagen gutenberg](/_assets/images/theme-gutenberg-support-1.jpeg ':size=250')

</div>

Algunos Bloques Gutenberg (incluyendo la mayoría de los Bloques Tainacan) ofrecen opciones de alineación como `left`, `center` y `right`, que es bastante sencillo y utiliza CSS `float` para hacer que el bloque fluya en una dirección. Pero hay otras opciones que requieren cierto trabajo de "desarrollador temático": las alineaciones `wide` y `full`. La idea es que los bloques `wide` "se escapen" del margen del post o de la página, como un medio destacado. Los bloques `full`, por otro lado, cubren todo el ancho del post o de la página, haciéndolos realmente "atractivos". Entonces, ¿cómo ponerlos a disposición de nuestros usuarios?

1. Vaya a su tema `functions.php` e inserte la rutina de registro de opciones:
   ```php
    <?php
        /**
        * Soporte de registro para bloques anchos y completos de Gutenberg
        */
        function your_theme_gutenberg_support_setup() {
            add_theme_support( 'align-wide' );
        }
        add_action( 'after_setup_theme', 'your_theme_gutenberg_support_setup' );
    ?>
   ``` 
2. Ve a tu `style.css` (o al css que prefieras que esté cargado) y añade la lógica para que los bloques con las clases `.alignwide` y `.alignfull` funcionen como se espera. Esto dependerá de ciertas circunstancias, como la configuración de `max-width` y `margin` de tu tema, así como si permite barras laterales o no. Así es como lo hicimos en el tema *Tainacan Interface*:
    ```css
    .alignwide {
        margin-left: calc(-8.3333333333vw + 3.1%) !important;
        margin-right: calc(-8.3333333333vw + 3.1%) !important;
        width: 116.66667%;
        max-width: 1400px;

        /* 1400px es el máximo que debe tener el cointainer interior, así que */
        /* usamoas 1526px - 1 column - 1 column; */
        @media only screen and (min-width: 1526px) {
            margin-left: calc(-1*(87.5vw - 1400px)/2) !important !important;
            margin-right: calc(-1*(87.5vw - 1400px)/2) !important !important;
        }
    }
    .alignfull {
        margin-left: calc( -100vw / 2 + 100% / 2 ) !important;
        margin-right: calc( -100vw / 2 + 100% / 2 ) !important;
        max-width : 100%;
        max-width : 100vw;
        width: 100%;
        width: 100vw;
    }
   ```
   !> Estamos usando CSS `viewport measures` (vw) aquí, que puede [no estar totalmente soportado](https://caniuse.com/#feat=viewport-units ':ignore') en navegadores antiguos, de ahí el "%" fallback para cada "vw". 
   
   Aunque los bloques `full` siempre deben ser "full-page", no hay ninguna regla oficial sobre cómo de "ancha" debe ser una alineación `wide`, nosotros simplemente decidimos usar nuestra lógica de 24 columnas, pero tu tema puede ser tan simplista como `margin-left: -42px; margin-right: -42px;`.

## Agregar hoja de estilo del lado del editor

La experiencia de edición con el nuevo Editor de Bloques, *aka* Gutenberg, puede ser a la vez mágica y frustrante dependiendo del soporte de tu tema. Eso es porque, a pesar de la promesa, no es realmente *lo que ves es lo que obtienes* a menos que te ocupes de ello, lo que significa que necesitas una hoja de estilos dedicada para garantizar que la apariencia del lado de edición sea lo más parecida posible al lado *preview/published* de tu entrada.

> Puede sonar redundante al principio, pero tener que implementar una **hoja de estilo del editor** tiene sentido: En el *lado del tema*, puedes tener clases para dar estilo a un `<botón>` como desees, pero en el *lado del editor*, ese botón es en realidad un formulario `<input type="text">`, esperando a que el usuario inserte el contenido. Así que tienes que fingir que parece un botón. Además, un post en tu tema puede tener cero o mucho margen lateral, mientras que el *lado del editor* tiene que mostrar menús de administración, controles de bloque y opciones de documento aparte del editor de contenido. 

¡Así que es hora de enfrentarse a la bestia!

1. Vaya a su tema `functions.php` y registre el estilo del editor:
   ```php
    <?php
        /**
        * Estilos del editor de cola para Gutenberg
        */
        function your_theme_editor_styles() {

         	// Añade el estilo de editor tu Tema para Gutenberg.
            wp_enqueue_style( 'your-theme-editor-style', get_template_directory_uri() . '/editor-style.css' );
         	
         	// Añada otros estilos necesarios, como archivos de fuentes.
         	wp_enqueue_style( 'RobotoFonts', 'https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i' );
        }
        add_action( 'enqueue_block_editor_assets', 'your_theme_editor_styles' );
    ?>
   ```
2. Ahora, cree el archivo `/editor-style.css` con el contenido necesario. No hay una solución única para esto y realmente depende de lo "ajustado" que esté tu tema con respecto al estilo estándar de Gutenberg. Para comprobar cómo se hizo en la *Interfaz Tainacan*, echa un vistazo a este [archivo fuente](https://github.com/tainacan/tainacan-theme/blob/develop/src/assets/scss/editor-style.scss ':ignore').

## Agregar combinaciones de colores a los bloques

Otra característica interesante que ofrece Gutenberg es la posibilidad de personalizar qué colores se ofrecerán en los selectores de color disponibles en muchos de los bloques.
