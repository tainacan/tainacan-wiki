# Búsqueda facetada 

Tainacan implementa una búsqueda facetada para sus colecciones.

Los filtros se muestran en la parte izquierda de la pantalla y permiten a los usuarios filtrar los resultados.

Por defecto, Tainacan filtrará los valores disponibles en cada faceta dependiendo de los filtros actuales seleccionados. Esto significa que sólo mostrará los valores que aporten al menos un elemento en los resultados. Cada vez que el usuario selecciona un valor de un filtro, se reducen todos los demás valores de todos los demás filtros. Esto ayuda a los usuarios a refinar sus filtros.

Si desea desactivar este comportamiento, y mostrar siempre todos los valores posibles para un filtro, incluso si no hay elementos que cumplan los criterios, añada esto a su `wp-config.php`:

```php
define('TAINACAN_FACETS_DISABLE_FILTER_ITEMS', true);
```

Tainacan will also add the number of items found for each value of each filter. This, when used without an Elastic Search* integration, might have performance issues. So if you want to remove the items count from the filters, add this to your `wp-config.php`:

```php
define('TAINACAN_FACETS_DISABLE_COUNT_ITEMS', true);
```

\* Nota: La integración de Elastic Search para esta función aún está en fase de desarrollo.
