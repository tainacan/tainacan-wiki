# Plugins

Tainacan es un _plugin_ para _WordPress_, lo que significa que mejora la funcionalidad de _WordPress_ con nuevas características. Esto forma parte de la filosofía de _WordPress_ de proporcionar una solución básica importante que pueda satisfacer a la mayoría de los usuarios y, al mismo tiempo, ofrecer la posibilidad de elegir extensiones para que se adapte mejor a las distintas necesidades. Lo mismo se aplica al propio Tainacan, que intenta aportar por defecto las principales funcionalidades de gestión y visualización de colecciones digitales, dejando algunas funcionalidades extra como _plugins para el plugin_.

## Plugins disponibles

- [Visualizador PDF](/es-mx/plugin-pdf-exposer) (Beta) - Añade el visor de PDF, que permite ver las listas de elementos en formato PDF.
- [Metadatos de tipo URL](/es-mx/plugin-metadata-type-url) - Añade un tipo de metadatos que acepta URL y muestra una versión incrustada o iframe de su contenido.
- [Modos de visualización adicionales](/es-mx/plugin-extra-view-modes) - Añade varios modos de visualización alternativos a la lista de elementos.
- [WordPress 3DHOP](/es-mx/plugin-3d-hop) (Beta) - Añade compatibilidad de documentos con modelos 3D que utilicen la función [3D HOP](http://3dhop.net/);

## Instalación de plugins

Los plugins listados arriba que ya no están en beta ahora pueden ser instalados directamente desde el panel de administración de _WordPress_. Sólo tienes que buscar "Tainacan" en la página de plugins del panel de administración de tu sitio. Los que están en fase beta, en cambio, deberán instalarse manualmente. A continuación te explicamos cómo

### Instalación de un plugin desde el panel de control

Una forma visual de instalar plugins descargados es ir al panel de administración de _WordPress_, acceder a la sección Plugins y hacer clic en "Añadir nuevo". Esto te llevará a la lista de plugins y en la parte superior verás el botón "Enviar plugin" donde podrás seleccionar tu archivo `.zip`.

![Instalar un plugin desde el panel de WordPress](_assets/images/plugins_1.png)

### Instalación de un plugin a través de WP-CLI

Si utiliza [CLI de WordPress](https://wp-cli.org/#installing), todo lo que tiene que hacer es ejecutarlo en su directorio _WordPress_:

```
wp plugin install /CAMINHO/PARA/SEU/ARQUIVO/ZIP/nome-do-plugin.zip
```

### Instalación de un plugin directamente desde el servidor

El mismo proceso puede realizarse manualmente con acceso a los archivos de su servidor. Para ello, extraiga su archivo `zip` y muévalo a la carpeta `wp-content/plugins`, en una carpeta con el mismo nombre que el plugin.

## Activación del plugin

No olvide que una vez instalado el plugin, **aún debe activarlo** en la lista de plugins del panel de administración de _WordPress_.
