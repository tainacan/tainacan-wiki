# Exportar y exponer tu repositorio

Cuando construyes un repositorio digital con Tainacan, obtienes la capacidad de mostrarlo al mundo de muchas maneras diferentes gracias a la potencia y flexibilidad de WordPress.

Pero a veces no sólo quieres tener tus colecciones navegables vía web, quieres descargar una hoja de cálculo para trabajar con ella o quieres hacerla disponible a través de APIs para que pueda ser consumida por otras aplicaciones o recolectada por un agregador. Esta página describe cómo Tainacan maneja estas situaciones.

## Mapeo

Con Tainacan tienes la posibilidad de mapear la estructura de tu colección a uno o más estándares conocidos con los que quieras ser compatible. Así, aunque utilice un conjunto personalizado de metadatos para describir su colección, podrá ser compatible e interoperar con otros repositorios.

Lo hace informando, para cada metadato que crea, de qué es relativo en cada formato al que desea asignar su colección. Puedes decir, por ejemplo, que tu metadato "Nombre" es equivalente al atributo dc:Título en Dublin Core y a algún otro atributo en otros formatos que elijas.

Tainacan se entrega con algunos estándares de mapeo que implementan estándares de metadatos populares. Y será fácil crear nuevos estándares.  Ver más [detalles sobre normas de mapeo](/es-mx/dev/mapping-standards.md). 

También puede utilizar estos estándares de mapeo como preajuste al crear una nueva colección.

## Exportar

Exportar le permite descargar el contenido de su repositorio a un archivo - o múltiples archivos. El formato del paquete que descargará depende del exportador que utilice. Tainacan incluye un sencillo exportador CSV y un exportador Tainacan-Package, que le permite exportar todo el contenido de sus colecciones, incluidos los archivos adjuntos, para importarlos en otra instancia de Tainacan.

Sea cual sea el exportador que elijas, podrás elegir si quieres descargar la colección tal cual, es decir, con los metadatos tal y como se crearon en Tainacan, o si quieres descargarla en una versión mapeada. Por ejemplo, si ha mapeado su colección a Dublin Core, puede descargar un archivo CSV en formato Dublin Core o en el formato original.

Tainacan facilita mucho a los desarrolladores la creación de nuevos exportadores y su publicación como plugins que cualquiera puede utilizar.

## Exposición de

Tainacan cuenta con una API que permite a otras aplicaciones buscar y consumir el contenido de tu repositorio. Por defecto, esta API sirve el contenido en formato JSON, preservando los metadatos de las colecciones tal y como usted las creó.

Del mismo modo que puedes elegir el formato del archivo cuando exportas tu colección, uno puede elegir el formato en el que quiere consumir tu contenido. Para eso están los expositores.

Cada expositor implementa una forma diferente de presentar sus datos en la respuesta de la API, y puede admitir una o varias correspondencias. Ver más [detalles sobre los expositores](/es-mx/dev/exposers.md).

Por ejemplo, el expositor JSON por defecto soporta cualquier mapeo y puede servir tu contenido exponiendo cualquier estándar de metadatos al que hayas mapeado tu contenido. La decisión está en manos de la aplicación que solicita su API.

Por otro lado, el expositor OAI-PMH sólo soporta mapeado Dublin Core y siempre servirá el contenido de esta manera.

Los expositores también son muy fáciles de desarrollar y se pueden añadir a tu instancia de Tainacan a través de plugins.

## Exponer API

El uso de la API de exposición es fácil, sólo hay que establecer algunos parámetros a la llamada de la API, por ejemplo, para exponer un artículo con id 123 utilizando el formato XML en el sitio URI http://example.com, por lo que necesitamos llamar a la API con este URI: http://example.com/wp-json/tainacan/v2/items/123 con este URI el Tainacan devolverá los datos del artículo 123, pero con enviamos este parámetro en el cuerpo, exposer=xml, se devolverá un JSON de WordPress con formato XML en la propiedad de datos.
Ejemplo usando WordPress rest server:

	$item_exposer_json = json_encode([
				'exposer'  => 'Xml',
				'mapper'  => 'Dublin Core',
			]);
			$request = new \WP_REST_Request('GET', '/wp-json/tainacan/v2/items/123' );
			$request->set_body($item_exposer_json);
			$response = $this->server->dispatch($request);


O si sólo queremos los datos XML, sin respuesta JSON, por ejemplo, sólo tenemos que poner el parámetro expose en URI, como:
http://example.com/wp-json/tainacan/v2/items/123?exposer=xml

Tainacan tiene soporte para mapeo de metadatos, el parámetro para usar el mapeador es mapper=[mapper], así que para nuestro último ejemplo, si queremos un CSV, usando dublin-core mapper exponiendo el contenido en formato CSV, no JSON:
http://example.com/wp-json/tainacan/v2/items/123?exposer=xml&mapper=dublin-core

