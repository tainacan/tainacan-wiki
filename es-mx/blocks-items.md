# Bloques de elementos

Los bloques de elementos son una forma de mostrar una vista previa o lo más destacado de su colección, sin tener que exponer al usuario a toda la complejidad de la colección. [Lista de elementos con búsqueda por aspectos](/es-mx/tainacan-pages#páginas-de-elementos-de-una-colección). Actualmente, hay 4 bloques relacionados con artículos de Tainacan:

1. [Lista de elementos de la colección](#lista-de-elementos-de-la-colección) _(Dinámica)_
2. [Carrusel de elementos](#carrusel-de-elementos)
3. [Barra de búsqueda Tainacan](#barra-de-búsqueda)
4. [Búsqueda por aspectos](#búsqueda-por-aspectos) _(Una lista de elementos completa)_

---

## Lista de elementos de la colección

Este es uno de los bloques más importantes que ofrece Tainacan. Con él configuras una "Búsqueda de elementos" para que se muestren. Pero, ¿qué se entiende por búsqueda? En lugar de seleccionar los elementos uno por uno, usted determina los parámetros que filtrarán una lista de elementos. Por eso llamamos a este bloque una lista "dinámica" de elementos, porque si se añaden nuevos elementos a esa lista, tu bloque seguirá actualizándose. Véase más abajo:

### Ajustes iniciales del Bloque

![Seleccionar la colección en el bloque](/_assets/gifs/blocks-collection-items-1.gif)

En cuanto inserto el bloque, tengo que configurar mi búsqueda. Este proceso comienza determinando en qué colección concreta voy a buscar elementos. Una vez hecha esta elección, se me presenta mi lista de elementos, la misma que veo en el panel de administración de _Tainacan_. Los elementos que aparezcan en esta lista serán los que busque mi bloque. Aquí puedo cambiar, por ejemplo **filtros, orden de búsqueda, número de elementos buscados y ya aplicar una búsqueda textual simple**. Una vez hecho esto, esta información se guardará en la configuración de mi bloque y se mostrará la lista.

<div style="float: right; margin-left: 32px;">

![Lista de ajustes relacionadas con la cabecera de la colección](/_assets/images/blocks_collection_items_1.jpg ":size=200")

</div>

Con los elementos cargados, podemos realizar una serie de ajustes que estarán disponibles en el panel lateral cuando tengamos el bloque activo.

### Cabecera de colección

La primera opción le permite decorar un poco su bloque añadiendo una cabecera para su colección en la parte superior de la lista. Debería ser similar a lo que se ve en la página de elementos, pero una versión reducida, con la miniatura de la colección en el centro, la imagen de cabecera a la derecha y el nombre de la colección a la izquierda. Puede configurar el color de fondo de la cabecera, el texto y elegir si desea mostrar o no una etiqueta "Colección" antes del nombre de la colección.

### Barra de búsqueda Tainacan

Si ofreces una vista previa de tu lista de elementos pero no quieres impedir que el usuario siga explorándola, puedes ofrecer una barra de búsqueda en el propio bloque. Esta barra filtrará los elementos mostrados, cargando siempre como máximo la cantidad configurada para la búsqueda. Recuerde que los filtros que se hayan aplicado anteriormente seguirán aplicándose a esta lista, por lo que puede restringir lo que se muestra. La barra también le permite alternar la dirección de ordenación que haya elegido, como _ascendente_ o _descendente_, y cambiar de página si hay más elementos resultantes de su búsqueda.

![Cabecera de bloque y barra de búsqueda](/_assets/gifs/blocks-collection-items-2.gif)

### Ajustes de visualización de elementos

Por último, puede elegir cuántos elementos se mostrarán como máximo. El valor por defecto en los listados de Tainacan es siempre 12. A continuación, hay nuevos ajustes disponibles, y están directamente relacionados con el **cómo se muestran los elementos**. Sí, en los bloques también tenemos diferentes formas de visualizar la lista cargada de elementos. Esto se puede cambiar en el propio bloque, en la barra superior. Este bloque ofrece tres modos:

<!-- tabs:start -->

#### ** Rejilla de elementos **

El modo por defecto es la rejilla de artículos, que mostrará las miniaturas de los artículos (185px _x_ 185px), con sus títulos debajo. En este modo, puede configurar si desea mostrar o no el título del elemento y si desea más espacio entre los elementos. Recuerde que cuanto mayor sea el espaciado, menos elementos cabrán por línea.

![Configurar el bloque en modo cuadrícula](/_assets/gifs/blocks-collection-items-3.gif)

#### ** Lista de Elementos **

La lista de elementos permite una vista más simplificada, con miniaturas más pequeñas (54px _x_ 54px) y los títulos junto a ellas. En este modo, puedes elegir no mostrar la miniatura, lo que es ideal para colecciones que no tienen imágenes.

![Configuración del bloque en modo lista](/_assets/gifs/blocks-collection-items-4.gif)

#### ** Mosaico de elementos **

Desde [Tainacan 0.14 :link:](https://tainacan.org/blog/2019/11/22/tainacan-beta-0-14-e-tainacan-interface-1-6-novo-modo-mosaico-do-bloco-de-itens-e-suporte-ao-wordpress-5-3/ ":ignore"), también presentamos el modo mosaico. Este modo tiene varios ajustes adicionales. Es ideal para aquellos que desean ofrecer una visión más "artística" de su lista de colecciones. La composición montada por el mosaico es más irregular y no se limita a cortar las imágenes para montar varios **grupos de cuadrículas de artículos**. Los títulos sólo aparecen cuando se pasa el ratón por encima del artículo, pero pueden ocultarse del mismo modo que en el modo cuadriculado, al igual que el espaciado entre los artículos.

![Ajustando el bloque en modo mosaico](/_assets/gifs/blocks-collection-items-5.gif)

También puede configurar los siguientes detalles en el modo mosaico:

- La altura del bloque, a través del panel lateral o redimensionando el bloque;
- La cuadrícula utilizada para montar cada grupo del bloque (cuadrículas más grandes significan más elementos por grupo, por lo tanto más imágenes pequeñas);
- La densidad del grupo, es decir, el número de elementos por columna en cada grupo;

Estos detalles influirán en el tamaño del mosaico. Recuerde que cuantos más elementos, más densa será la composición.

![Más ajustes del bloque en el modo mosaico](/_assets/gifs/blocks-collection-items-6.gif)

Finalmente, un último detalle: al cortar las imágenes para encajarlas en sus cuadrículas, el mosaico siempre centra la imagen, vertical y horizontalmente. Quizá no quieras esto y prefieras, por ejemplo, que las imágenes se vean siempre en la parte superior (supongamos que tienes una colección de bustos de varias personas). Para ello, existe la opción _Punto focal de la imagen de fondo_.

<!-- tabs:end -->

---

## Carrusel de elementos

El salto de línea que la [Lista de elementos de la colección](#lista-de-elementos-de-la-colección) puede no ser del gusto de todos. Para presentar varios artículos en secuencia y dar a su publicación un aspecto más "dinámico", el bloque carrusel puede ser ideal.

### Ajustes iniciales del Bloque

![Selección de la colección en el bloque](/_assets/gifs/blocks-collection-items-7.gif)

Al igual que con los ajustes del Bloque [Lista de elementos de la colección](#lista-de-elementos-de-la-colección#ajustes-iniciales-del-bloque) puede configurar una búsqueda para mostrar sus elementos en el carrusel. De esta forma, se buscarán dinámicamente según determinados parámetros de búsqueda, ordenación y filtrado que tú definas. Pero en este bloque también existe la posibilidad de elegir "a mano" qué elementos quieres mostrar. Tenga en cuenta que las opciones son excluyentes. Tiene que utilizar una estrategia u otra. En el caso de la selección manual de elementos, añades elementos a través del modal y los eliminas en la propia lista haciendo clic en el botón "X" que aparece encima del elemento insertado.

Con los elementos cargados, puede observar que el carrusel no se mueve. De hecho, sólo se activa en la versión publicada o de previsualización del post o página. Aquí, en el editor, verás una lista desplazable normal y corriente. Ahora podemos realizar una serie de ajustes que están disponibles en el panel lateral cuando tenemos el bloque activo.

### Cabecera de la colección

![Ver el carrusel en acción en el tema](/_assets/gifs/blocks-collection-items-8.gif)

<div style="float: right; margin-left: 32px;">

![Lista de ajustes del carrusel de elementos](/_assets/images/blocks_items_carousel_1.png ":size=200")

</div>

La primera opción le permite decorar un poco su bloque añadiendo una cabecera para su colección en la parte superior de la lista. Debería ser similar a lo que se ve en la página de elementos, pero una versión reducida, con la miniatura de la colección en el centro, la imagen de cabecera a la derecha y el nombre de la colección a la izquierda. Puede configurar el color de fondo de la cabecera, el texto y elegir si desea mostrar o no una etiqueta "Colección" antes del nombre de la colección.

### Opciones del carrusel

Al igual que con otros bloques, puede elegir si desea mostrar o no el título de los elementos debajo de la miniatura. Las otras opciones disponibles en el carrusel están relacionadas con la reproducción. Son las siguientes

- Diapositivas en bucle - Hace que el carrusel vuelva al principio cuando llega al final de la lista;
- Reproducción automática - Reproduce el carrusel automáticamente;
- Intervalo de tiempo entre cada cambio de elemento;
- Posición de las flechas: Cómo deben disponerse las flechas de navegación del carrusel;

<br>

---

## Barra de búsqueda

Este bloque es un poco diferente de los anteriores. En lugar de mostrar una vista previa de la lista completa de elementos, le lleva a la lista. Puede considerarse como un acceso directo a la lista, con una búsqueda textual. El bloque básicamente te ofrece una barra de búsqueda disponible en tu publicación. Pero lo interesante es que puedes configurar esta barra de diferentes maneras.

### Ajustes iniciales del bloque

Configurar el bloque es muy sencillo: Sólo tiene que elegir el destino de su búsqueda: una lista de elementos del repositorio o una lista de elementos de una colección específica.

![Seleccionando la fuente de búsqueda del bloque](/_assets/gifs/blocks-collection-items-9.gif)

### Alineación de Barras

Justo en la parte superior del bloque, junto a las opciones tradicionales de anchura y disposición del bloque, tenemos tres opciones de alineación, que se refieren a la alineación de la barra dentro del bloque. Por defecto, la barra está centrada, pero puede alinearse a la izquierda o a la derecha.

### Estilos de Barra

En el panel lateral, en los ajustes del bloque, hay 3 estilos que se pueden aplicar.

- El estilo Estándar ofrece una barra sencilla con un borde gris y un fondo blanco;
- El estilo Alternativo comienza sin borde y con un fondo transparente claro. Su tamaño es menor al principio y aumenta cuando se pasa el ratón por encima de la barra o se hace clic en ella. Cuando se activa, aparece un borde blanco;
- Por último, el modesto estilo "Elegante" comienza con sólo un icono y un gran botón redondeado, que se expande para mostrar el campo de búsqueda;

![Estilos y alineación de la barra de búsqueda](/_assets/gifs/blocks-collection-items-10.gif)

### Opciones generales de la barra

Una vez elegido el estilo, puede determinar la anchura de la barra en su versión ampliada (el valor está en porcentaje). También puede cambiar la etiqueta que aparece en el interior de la barra por algo más específico, como "Escriba aquí para buscar cuadros...".

Pero no tenemos por qué detenernos ahí. De forma similar a los bloques [Lista de elementos de la colección](#lista-de-elementos-de-la-colección) y [Carrusel de elementos](#carrusel-de-elementos]), en este bloque puedes mostrar una cabecera de la colección. Puede definir la altura y el color de fondo de la cabecera, así como el color y el tamaño del texto. Tenga en cuenta que al combinar diferentes estilos y alineaciones, su barra y cabecera cambiarán un poco:

![Configuración de la cabecera de la colección](/_assets/gifs/blocks-collection-items-11.gif)

> La Barra de Búsqueda es uno de los pocos bloques que no permite insertar más de uno de su tipo en el documento. Cuando se crea una, se desactiva la opción de insertar una nueva.
---

## Búsqueda por aspectos

La **Busqueda por aspectos** es el bloque más complejo que ofrece el plugin. Con él puedes mostrar, en cualquier página o entrada, la Lista completa de Elementos tal y como se ve en la imagen [Páginas de elementos](/es-mx/tainacan-pages#las-páginas-especiales-de-tainacan) de Tainacan, incluyendo la posibilidad de aplicar filtros, búsqueda avanzada, cambiar los modos de visualización y ordenación, así como la paginación. Es una forma práctica de ofrecer todas estas funcionalidades en una sola página si estás usando un Tema que no ha implementado soporte para estas páginas especiales que registra el plugin, o quieres personalizar mucho el resto de la plantilla. También es una alternativa más versátil al `shortcode` que se sugirió anteriormente para mostrar esta lista. Véase más abajo:

### Ajustes iniciales del bloque

![Selección de la colección del bloque](/_assets/gifs/blocks-collection-items-12.gif)

Cuando inserte el bloque, tendra que configurar la fuente de la búsqueda. Puede ser la lista de todos los elementos del repositorio, la lista de elementos de una colección o la lista de elementos asociados a una condición. En los dos últimos casos, un modal ofrecerá las opciones disponibles para elegir. Una vez configurado esto, aparecerá una figura ilustrativa donde se renderizará la Lista. Esto es sólo una demostración porque la lista completa es demasiado compleja para mostrarla dentro del editor, pero puede ver los resultados previsualizando la página o publicándola.

Es posible que inmediatamente desee dar más espacio a su lista, lo que puede configurarse estableciendo el bloque en **Ancho completo** o **Ancho amplio**. En el panel lateral encontrará docenas de opciones de configuración. Los detallamos a continuación y damos tres ejemplos de los resultados que se pueden conseguir con sólo hacer estos ajustes en este bloque:

<div style="display: flex; align-items: center; justify-contents: space-evenly;">
<div style="margin: 0 12px">

![Ejemplo de la lista configurada 1](/_assets/images/blocks-faceted-search-2.jpg)

</div>
<div style="margin: 0 12px">

![Ejemplo de la lista configurada 2](/_assets/images/blocks-faceted-search-3.jpg)

</div>
<div>

![Ejemplo de la lista configurada 3](/_assets/images/blocks-faceted-search-4.jpg)

</div>
</div>

<!-- tabs:start -->

#### ** Área de control de búsqueda **

El área de control de búsqueda es la barra horizontal situada encima del área de filtrado y de la propia lista de elementos. Como muchos de los controles disponibles allí pueden ser demasiados para lo que se quiere mostrar en este bloque, la mayoría de las opciones permiten limitar algunos de estos controles:

- **Ocultar el campo de búsqueda**: esta opción oculta conjuntamente la barra de búsqueda de texto y el enlace de búsqueda avanzada.
- **Ocultar búsqueda avanzada**: no muestra el enlace a la búsqueda avanzada.
- **Ocultar el botón "Metadatos visualizados "**: oculta el botón "Metadatos visualizados". Cabe señalar que este botón sólo es visible en la lista si el modo de visualización actual lo permite, como Tabla y Hojas.
- **Ocultar región de ordenación**: oculta los _desplegables_ relacionados con la dirección de ordenación y los metadatos por los que se ordena la lista.
- **Ocultar el botón "Ordenar por "**: basta con ocultar el _desplegable_ donde aparecen los diferentes metadatos por los que se ordena la búsqueda.
- **Mostrar las opciones del modo de visualización en línea**: En lugar de mostrar un _desplegable_ con las opciones del modo de visualización, con este ajuste sólo se muestran iconos uno al lado del otro para que el usuario elija.
- **Mostrar el modo de visualización "Galería" (pantalla completa) junto a los demás modos de visualización**: por defecto, este modo aparece como un botón junto a las opciones de visualización. Con este ajuste esta diferenciación ya no existe.
- **Ocultar botón "Ver como... "**: hace que no aparezca el botón "Ver como...", también conocido como botón de visualización o enlaces alternativos. Este botón se encarga de abrir un modal con opciones para compartir y acceder a la lista de elementos en diferentes formatos.
- **Modo de visualización por defecto forzado para listas de términos o repositorios**: A diferencia de las colecciones, las listas de términos o repositorios tienen un modo de visualización por defecto definido por el sistema: Mosaico. Con esta opción puede configurar el modo de visualización inicial.
- **Modos de visualización disponibles en la lista**: En colecciones, estas opciones provienen de la propia configuración de la colección, y en temas y repositorios, provienen del sistema. Aquí puedes activar o desactivar completamente determinados modos de visualización para tu tema. Si sólo queda un modo activo, éste será el predeterminado y no estará disponible el botón de seleccionar modo de visualización.
- **Mostrar el botón de filtros en la barra de control**: Muestra el botón de mostrar u ocultar filtros dentro de la propia barra de control de búsqueda.

#### ** Área de filtrado **

El área de filtrado, por defecto, es un panel lateral junto a la lista de elementos. Estas opciones le permiten cambiar un poco su comportamiento.

- **Ocultar filtros**: oculta completamente la barra, sin posibilidad de acceder a ella en este bloque.
- **Ocultar el botón "Ocultar filtros "**: no ofrece al usuario la opción de ocultar la barra de filtros.
- **Empezar con filtros ocultos**: hace que el panel de filtros empiece oculto, pero aún se puede llamar utilizando el botón "Mostrar/ocultar filtros";
- **Mostrar la lista de filtros como un modal**: muestra los filtros como un modal a pantalla completa en lugar de un panel lateral, superponiéndose a la lista de elementos.

#### ** Área de paginación **

La paginación es esencial para evitar sobrecargar la búsqueda con listas muy largas de resultados. Por defecto, se controla en la barra situada debajo de la lista de elementos, mostrando 12 elementos a la vez, a menos que el usuario la configure de otro modo.

- **Ocultar el área de paginación**: oculta completamente los controles de paginación, permitiendo que en este bloque sólo se vea una página, la inicial.
- **Ocultar botón "Elementos por página "**: oculta el botón donde se selecciona cuántos elementos por página deben mostrarse.
- **Ocultar el botón "Ir a la página: "**: oculta el botón que permite saltar fácilmente de una página a otra.
- **Número predeterminado de elementos por página**: útil especialmente si se han ocultado algunos de los controles anteriores, aquí se puede establecer el número de elementos por página que se carga, forzando el valor sobre el establecido por el usuario.

#### ** Colores y Tamaños **

Además del comportamiento y la presencia de determinados elementos en el bloque, también puede configurar el color de varios componentes de la interfaz y otros ajustes más estéticos:

- **Tamaño de fuente base**: por defecto todos los elementos de la interfaz se escalan a partir de una fuente _16px_. En esta opción puede aumentar o disminuir este valor para mejorar la legibilidad de su lista.
- **Anchura del panel de filtrado**: El panel de filtros ocupa un ancho máximo del _20%_ de la lista de elementos (y un mínimo de _154px_). En este ajuste puedes modificar este valor, dando más o menos espacio a los filtros.
- **Color de fondo**: El color de fondo de la lista de elementos en su conjunto;
- **Color de los enlaces y estados activos**: En la interfaz, los enlaces y algunos iconos se colorean con un color para indicar su estado activo. Por defecto este color es el _Azul Turquesa_ de Tainacan, pero puede configurarse por temas a otros colores. Con este ajuste puedes anular este valor;
- **Color de fondo de los tooltips**: En general, el color de los enlaces es demasiado oscuro para mostrar los tooltips (las pequeñas burbujas que contienen notas adhesivas o resúmenes del contenido). En este ajuste, se puede elegir un color más claro para esta función. Esto también afecta al botón "Ocultar filtros".
- **Color de fondo de los campos**: es el color que aparecerá en el fondo de los campos de texto y otros elementos de la interfaz relacionados con la introducción de datos. Por defecto es el mismo que el fondo y puede cambiarse a un color más destacado.
- - **Color del texto del campo**: es el color que aparecerá en el contenido de los campos de texto y otros elementos de la interfaz relacionados con la introducción de datos.
- **Color del borde de los campos**: es el color del borde de los campos de texto, casillas de verificación y similares.
- **Color de las etiquetas**: es el color de las etiquetas de los campos de la interfaz, como los nombres de los filtros.
- **Color de la cabecera**: color de las cabeceras, es decir, de las etiquetas principales, como los nombres de los elementos y el indicador de sesión de filtro.
- **Color de la información general**: este color por defecto es un gris que se utiliza para la información secundaria en la interfaz. Por ejemplo, los valores de metadatos menos importantes y los iconos de los botones de control de búsqueda.
- **Color de fondo de los elementos**: el color de cada unidad de elemento de la lista es el mismo que el color de fondo por defecto.
- **Color de fondo de los elementos al pasar el ratón por encima**: el color de cada elemento de la lista al pasar el ratón por encima.
- **Color de fondo de la cabecera del elemento al pasar el ratón por encima**: algunos elementos tienen un color de realce para la cabecera de su modo de visualización (como las tarjetas, por ejemplo). En estos casos, este será el color que aparecerá en esta región del elemento cuando el ratón se sitúe sobre él.

<!-- tabs:end -->

!> La búsqueda por atributos es uno de los bloques que no permite insertar más de uno de su tipo en el documento. Cuando se crea uno, se desactiva la opción de insertar uno nuevo. Esto se debe a que al realizar cualquier búsqueda, la URL del sitio se complementa con los parámetros que causarían conflicto entre las diferentes listas.

---
