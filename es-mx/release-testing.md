# Script de prueba


Esta sección describe el script para las pruebas de integridad al instalar o actualizar el plugin Tainacan para WordPress:

## Flujo de lanzamiento de versión RC _(Release Candidate)_

Estos son los procedimientos para asegurar que las nuevas versiones del plugin Tainacan son validadas previamente por la comunidad, evitando que el plugin sea enviado al repositorio de WordPress con errores:

1. Dar a conocer la RC en [comunidad de Tainacan](https://tainacan.discourse.group) para la realización de pruebas de uso;
2. Realizar las pruebas siguientes [Script de prueba](#script-de-pruebas-de-tainacan) a seguir;
3. Resolver los problemas encontrados y publicar una nueva versión RC _(Release Candidate)_ hasta que las pruebas no muestren problemas.
4. A partir de ahí, siga los pasos para [lanzar una nueva versión](/es-mx/dev/release.md) para Wordpress.

## Script de pruebas de Tainacan

Este script está destinado a realizar pruebas para comprobar que las funciones funcionan correctamente y que el Plugin Tainacan lleva a cabo los procesos.

?> Los problemas encontrados pueden notificarse como [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en [foro de la comunidad](https://tainacan.discourse.group ":ignore") de Tainacan. Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de Preguntas Frecuentes](/es-mx/faq#creo-que-encontré-un-error-¿qué-tengo-que-hacer).

Hay varios tipos de pruebas que se pueden llevar a cabo para cubrir la mayor funcionalidad posible. Todas empiezan con los siguientes pasos básicos:

<div style="float: right; margin-left: 32px;">

![Menu de Admin de Tainacan](/_assets/images/release-testing-1.png)

</div>

1. Accede al **panel de control de WordPress** donde está instalada y activada tu versión de prueba del plugin Tainacan (normalmente la dirección de tu web + `/wp-admin`).;
2. En la barra lateral izquierda, haga clic en **Diagnóstico de la instalación** en la sección Tainacan:
3. Compruebe que la instalación cumple los requisitos recomendados para el funcionamiento del _Plugin de Tainacan_.
4. Descargue el archivo de registro desde el botón `Download Log` **para añadir esta información** al Informe de Pruebas.
5. En la barra lateral izquierda, haga clic en Tainacan:

- [x] Observa el tiempo de carga de la pantalla de inicio;
- [x] Asegúrese de que todos los elementos de la página se muestran correctamente;
- [x] Observe de nuevo estos aspectos al completar los siguientes procesos para informar de cualquier cambio sustancial en el tiempo de carga de la pantalla o de la visualización incorrecta de elementos.

Una vez hecho esto, elija un tema en el que desee profundizar:

<div style="column-count: 2; column-width: 250px;">

- [Colecciones](/es-mx/testing-collections.md)
- [Taxonomías](/es-mx/testing-taxonomies.md)
- [Metadatos](/es-mx/testing-metadata.md)
- [Filtros](/es-mx/testing-filters.md)
- [Elementos](/es-mx/testing-items.md)
- [Búsqueda facetada](/es-mx/testing-search.md)
- [Importadores](/es-mx/testing-importers.md)
- [Exportadores](/es-mx/testing-exporters.md)
- [Envíos](/es-mx/testing-capabilities.md)
- [Bloques de Gutenberg](/es-mx/testing-gutenberg-blocks.md)
- [Envío de elementos](/es-mx/testing-item-submission.md)

</div>
