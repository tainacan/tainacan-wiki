# Probando Bloques Gutenberg

Hay varios bloques gutenberg ofrecidos por Tainacan, que están documentados con más detalle [aquí](/es-mx/gutenberg-blocks.md). La siguiente prueba debe hacerse para cada bloque existente, siguiendo esta documentación como recomendación de qué esperar. Recomendamos probar no sólo añadiendo nuevos bloques, sino también abriendo páginas que ya tenían bloques antes de la actualización, para comprobar que no se ha roto nada de una versión a la siguiente.

## Lo básico

1. Vaya al panel de administración de WordPress;
2. Crea una nueva entrada o página accediendo al editor de bloques de WordPress;
3. En este post, inserta uno de los bloques Gutenberg de Tainacan;
4. Elige la fuente de información del bloque, normalmente el botón que aparece en el centro del bloque;
5. Aplica los diferentes ajustes disponibles en la documentación del bloque;
6. Si es posible, cambie las opciones de alineación del bloque (alineación completa, ancho, centrado...);
7. Si está permitido, inserte más de un bloque del mismo tipo con diferentes configuraciones;
8. Visualice estos cambios en la página publicada;
9. Vuelva al editor y cambie la fuente de información o la configuración. Guarde, publique y vea los resultados.

## Datos dinámicos en los bloques

La mayoría de los bloques de Gutenberg son "dinámicos", lo que significa que su información se actualiza a través de la API. La excepción son los tres primeros bloques creados (Lista de artículos, Lista de colecciones, Lista de términos). Una forma de comprobarlo es, además de utilizar el bloque como se ha descrito anteriormente, actualizar los datos en Tainacan y comprobar que se reflejan en el bloque. Por ejemplo

1. Cree un bloque Lista de elementos de la colección;
2. Configure la búsqueda aplicando filtros;
3. Publique la entrada;
4. Ir a Tainacan, cambiar la lista de elementos para que la búsqueda previamente configurada resulte en algo diferente;
5. Acceda de nuevo al post publicado, compruebe que el cambio se refleja en el bloque;

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-qué-tengo-que-hacer).
