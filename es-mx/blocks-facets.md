# Lista de aspectos

Los **aspectos** son una buena forma de ofrecer una vista filtrada de los elementos. En Tainacan, llamamos _facet_ a una lista de elementos filtrados por un valor de metadatos. Por ejemplo, si una colección tiene un metadato _Género Musical_, entonces los ítems en ella pueden tener valores como "Rock", "MPB", "Funk", "Rock Alternativo"... en este metadato. Si hay un metadato _Nacionalidad_, entonces los posibles valores del metadato serán probablemente "Argentino", "Brasileño", "Chileno"... Y creando un filtro para estos metadatos, podemos ver cuántos elementos tienen cada uno de estos atributos. Son aspectos de la lista de artículos_.

En el caso de los metadatos de tipo Taxonomía, esto adquiere una nueva dimensión, ya que los términos (los posibles valores de estos metadatos) tienen una imagen, una descripción y una [página especial sobre Tainacan](/es-mx/tainacan-pages#páginas-de-elementos-de-un-término), que enumera todos los artículos que tienen ese término. Con esto se puede crear el concepto de "Exposiciones" o "Colecciones virtuales", que agregan artículos de más de una colección con atributos comunes basados en una taxonomía.

Para mostrar este tipo de listas se utilizan los bloques de aspectos, que además del enlace a la lista filtrada, nos muestran cuántos elementos tiene esa faceta.

> Tenga en cuenta que los bloques de aspectos son diferentes de los [Bloques de términos](/es-mx/blocks-terms), porque no todas las facetas tienen que ser de una Taxonomía. Puedo tener una faceta que muestre, por ejemplo, elementos por un atributo de fecha _Year Created_. En este caso, los nombres de las facetas serían "1999", "2001", "2005"... Otra diferencia importante es que en los bloques de términos podemos mostrar términos que aún no tienen ningún elemento asociado. Las facetas, en cambio, muestran los que ya son utilizados por un artículo.

Tainacan ofrece actualmente un bloque de aspectos:

1. [Lista de Aspectos](#lista-de-aspectos)

---

## Lista de Aspectos

### Configuraciones iniciales del bloque

Para empezar, elija la fuente de la búsqueda de metadatos. Puede buscar metadatos a nivel de repositorio o de una colección específica. Una vez hecho esto, se listarán los metadatos de esa fuente. Ahora elija de cuál quiere cargar los aspectos relacionados. Si su elección es un tipo de metadatos de Taxonomía, aparecerán las imágenes configuradas para los términos y los enlaces le llevarán a la sección [Lista de elementos del término](/es-mx/tainacan-pages#páginas-de-elementos-de-un-término). Caso contrario, no habrá imágenes y los enlaces llevarán a una versión filtrada del [Lista de elementos de la colección](/es-mx/tainacan-pages#páginas-de-elementos-de-una-colección)o desde la [Lista de elementos del Repositorio](/es-mx/tainacan-pages#página-de-elementos-del-repositorio).

![Configuraciones iniciales del Bloque](/_assets/gifs/blocks-facets-list-1.gif)

Con los aspectos cargados, podemos realizar algunos ajustes que estarán disponibles en el panel lateral cuando tengamos el bloque activo.

<div style="float: right; margin-left: 32px;">

![Lista de ajustes del bloque de aspectos](/_assets/images/blocks_facets_list_1.png ":size=200")

</div>

### Configuración general de los aspectos

Por defecto, sólo se cargan 12 aspectos en el bloque. Para cargar más aspectos a la vez, aumente el parámetro **Número Máximo de Aspectos** en el panel lateral. También puede mostrar un botón **Cargar más aspectos** justo debajo de la lista, que realizará una nueva petición y se añadirá a la lista actual (tenga en cuenta que, aunque se muestre en el editor, este botón sólo tendrá efecto en el documento publicado o previsualizado). Si desea ofrecer una búsqueda textual simple, active la opción **Mostrar barra de búsqueda**.

<div style="max-width: calc(100% - 240px);">

![Configuración de la carga de los aspectos](/_assets/gifs/blocks-facets-list-2.gif)

</div>

En el caso de los aspectos de metadatos de tipo Taxonomía, se cargan los aspectos de cualquier término que sea un valor en un elemento. Sin embargo, es posible que sólo desee mostrar aspectos de términos que son **hijos de un término específico**, o sólo términos raíz, aquellos que son **no hijos de ningún otro término**. Para configurar esto, puede seleccionar el **Término Padre** en el panel lateral.

### Opciones de visualización de los aspectos

Este bloque ofrece tres modos de visualización. Para todos ellos, puede activar o desactivar la opción de mostrar el recuento de elementos junto al nombre de la faceta.

<!-- tabs:start -->

#### ** Red de aspectos **

El modo por defecto es la red de aspectos, que mostrará miniaturas de aspectos (185px _x_ 185px) relacionadas con términos taxonómicos, con sus nombres y número de elementos debajo. En este modo, puede configurar si desea mostrar o no la imagen de el aspecto y si desea más espacio entre los aspectos. Recuerde que cuanto mayor sea el espaciado, menos aspectos cabrán por línea.

![Configuración del bloque en modo cuadrícula](/_assets/gifs/blocks-facets-list-3.gif)

#### ** Lista de Aspectos **

La lista de aspectos le ofrece una vista más simplificada, con miniaturas más pequeñas (54px _x_ 54px) y los nombres junto a ellos. En este modo, puedes elegir no mostrar la miniatura, lo que es ideal para los aspectos que no tienen imágenes.

![Configuración del bloque en modo lista](/_assets/gifs/blocks-facets-list-4.gif)

#### ** Nube de aspectos **

Por último, el bloque de aspectos tiene un modo especial, inspirado en las _nubes de etiquetas_ que suelen verse en los blogs. Con él, la lista de aspectos se muestra centrada y cada aspecto tiene un tamaño de fuente ajustado en función de cuántos elementos estén asociados a ella. Así, los aspectos con varios elementos son proporcionalmente más prominentes. Esta proporción puede ajustarse en el panel lateral contiguo, en la opción **Tasa de crecimiento** de los ajustes de la nube.

![Configuración del bloque en modo nube](/_assets/gifs/blocks-facets-list-5.gif)

<!-- tabs:end -->
