# Buscador

Además de la [búsqueda facetada](es-mx/dev/faceted-search.md), que permite a los usuarios filtrar artículos por metadatos específicos, Tainacan también ofrece una búsqueda textual libre.

Por defecto, cuando se utiliza esta opción para buscar, WordPress sólo busca dentro del Título (post_title) y la Descripción (post_content). Esto, por supuesto, es muy limitado, y este artículo presenta y discute el enfoque que Tainacan tomará para enfrentar este problema.

No hay una bala de plata para resolver este problema. En algunos casos, quizás para pequeños repositorios, un simple cambio en la forma en que WordPress consulta las entradas, incluyendo la relación con los metadatos y las taxonomías, puede dar a los usuarios los resultados que estaban buscando. En otros casos, los gestores de repositorios pueden querer utilizar soluciones sofisticadas como Elastic Search o Solr para habilitar la búsqueda de texto completo para sus usuarios.

Un enfoque intermedio podría ser la creación de tablas de índices y la tokenización de cadenas. Esto permitiría incluso ordenar los resultados en función de su relevancia. (Existe al menos un plugin de pago para WordPress que lo hace).

Considerando todas estas opciones, nuestro enfoque actual fue filtrar la consulta SQL construida por el objeto WP_Query de WordPress e incluir todas las uniones y fueron necesarias para buscar también en valores de metadatos y taxonomías. Este enfoque es el mismo que el plugin "[Search Everything](https://wordpress.org/plugins/search-everything/)".

Este enfoque podría ralentizar las consultas de búsqueda, especialmente la entrada de búsqueda de palabras clave abiertas.

Si desea desactivar este cambio en el comportamiento por defecto de WordPress, puede hacerlo añadiendo la siguiente línea a su `wp-config.php`. Debería hacer esto si va a utilizar otro plugin para este propósito para evitar conflictos.

```
define('TAINACAN_DISABLE_DEFAULT_SEARCH_ENGINE', true);
```
Nuestros esfuerzos en este momento se centran en mejorar la compatibilidad con el plugin [ElasticPress](https://wordpress.org/plugins/elasticpress/). Ya es totalmente funcional desde la [version 0.9](https://tainacan.org/blog/2019/05/20/tainacan-beta-0-9-elastic-search-new-gutenberg-block-and-importers/)
*nota: versión soportada elasticsearch 6.1.0+*

Entendemos que, si un repositorio se hace demasiado grande, puede necesitar una infraestructura más robusta y Elastic Search es nuestra llamada.

Sin embargo, ya que nos aseguramos de construir las cosas al "estilo WordPress", y ya que la búsqueda de Tainacan usa la clase nativa `WP_Query` para hacer sus consultas, cualquier plugin que filtre su comportamiento podría funcionar con Tainacan. Así que siéntase libre de probar otros plugins de búsqueda para WordPress y, por favor, ¡háganos saber lo bien que funcionan!
