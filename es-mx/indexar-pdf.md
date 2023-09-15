# Búsqueda en PDFs


En la versión 0.12 hemos puesto a disposición un enfoque experimental para indexar texto de archivos en formato _“PDF”_ cargados como un documento de _“elementos”_. Esto permite a los usuarios utilizar la _“busca textual”_ para buscar dentro de documentos _“PDF”_.

Sin embargo, esta funcionalidad está aún en fase de desarrollo y puede no funcionar correctamente en todos los contextos, o en todos los tipos de documentos _“PDF”_. Por lo tanto, hemos decidido que, por defecto, esta función no esté activada. Sin embargo, es totalmente posible que los usuarios habiliten esta función y nos ayuden a mejorarla.

## Habilitación de la indexación de texto en documentos en formato PDF

Para habilitar esta función tienes que editar tu archivo ‘wp-config.php’ (este archivo normalmente se encuentra en las carpetas del servidor donde se guardan WordPress y Tainacan, comuníquese con su soporte técnico si es necesario) y agregar la siguiente línea:

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Una vez activada la función, los archivos _“PDF”_ creados como documentos de los _“elementos”_, a partir de este momento, su contenido indexable y accesible mediante _“búsqueda textual”_.

## Búsqueda del texto indexado de documentos en formato PDF

El contenido textual de _“PDF”_  indexado se buscará a través de la función de “_Búsqueda textual de Tainacán”_, que busca en todos _“metadatos”_. Ver más en: [Mecanismo de búsqueda](/es-mx/dev/search-engine.md)

También puede buscar solo el contenido del “PDF” usando la opción _“Búsqueda Avanzada”_. Hay una nueva opción de búsqueda llamada _“Documento”_, ue buscará directamente en el contenido indexado de los documentos _“PDF”_ cargados.

## Indexación de documentos PDF existentes

Si en el momento de activar la función de indexación del contenido textual de los _“PDFs”_ ya existen documentos en formato “PDF” en su repositorio, deberá _“ejecutar un comando para indexar el contenido de los PDFs ya existentes”_. Esto puede hacerse utilizando la herramienta WPCLI (póngase en contacto con su soporte técnico si es necesario).

Conéctese a su servidor y escriba:

```
wp tainacan index-content --collection=all
```

O si desea indexar documentos PDF de una colección específica:

```
wp tainacan index-content --collection=<id of collection>
```

Ingrese lo siguiente para obtener información sobre cómo usar el comando "index-content":

```
wp tainacan index-content --help
```
