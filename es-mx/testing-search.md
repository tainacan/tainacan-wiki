# Probar la búsqueda de artículos

Para probar la búsqueda facetada de artículos, necesita una colección con una diversidad mínima de tipos de metadatos, filtros y, por supuesto, artículos. Sugerimos crear colecciones utilizando el [Importador de prueba](/es-mx/importers#test-importer) para ayudar en este proceso. Una vez hecho esto, debería:

## Lo básico

1. Acceda a la Colección o a la lista de Ítems Nivel Repositorio;
2. Aplicar la búsqueda textual simple;
3. Aplicar diferentes combinaciones de filtros;
4. Cambiar los modos de ordenación y visualización de la lista (no olvide probar el modo "Pantalla completa", si está disponible);
5. Navegue por más de una página;
   - [x] Confirme que los filtros y las búsquedas aplicados devuelven resultados coherentes;
   - [x] Confirme que las facetas (los números que aparecen junto a cada valor de filtro) son correctas;
   - [x] Compruebe que las etiquetas aparecen al aplicar un filtro (y que al eliminarlas también se elimina el filtro aplicado);
   - [x] Seleccione la URL de la búsqueda aplicada, cópiela y péguela en otra pestaña del navegador para ver si se conservan todos los ajustes;
6. Repita los pasos descritos anteriormente tanto para la lista de elementos del Admin como para la lista de elementos del tema.

## Búsqueda avanzada

1. Acceda a la lista de elementos a nivel de colección o repositorio;
2. Abra Avanzado;
3. Cree un criterio de búsqueda para cada tipo de metadatos, con diferentes combinaciones de operadores;
   - [x] Intente crear búsquedas que conduzcan realmente a un resultado concreto;
   - [x] Compruebe que cuando elimina cada criterio y vuelve a aplicar la búsqueda, aparecen nuevos elementos;
   - [x] Seleccione la URL de la búsqueda aplicada, cópiela y péguela en otra pestaña del navegador para comprobar si se conservan todos los ajustes;
4. Repita los pasos descritos anteriormente tanto para la lista de elementos Admin como para la lista de elementos temáticos.

## Los Expositores

1. Acceda a la lista de elementos a nivel de colección o repositorio;
2. Repita la aplicación de algunos filtros, como hizo en la primera prueba;
3. Haga clic en el botón "Ver como..." para abrir el modal de visualización;
   - [x] Comprueba que el enlace a la lista de ítems de la web es correcto;
   - [x] Compruebe que las opciones de visualización disponibles (PDF, HTML, CSV) generan enlaces que reflejan la lista de artículos;
   - [x] Comprobar que al aplicar la casilla de verificación "Mostrar sólo metadatos", se eliminan de la lista resultante los metadatos que no han sido marcados para su visualización;
4. Repita los pasos descritos anteriormente tanto para la lista de elementos del Admin como para la lista de elementos del tema.

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-qué-tengo-que-hacer).
