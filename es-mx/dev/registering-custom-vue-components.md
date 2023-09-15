# Registro de componentes Vue personalizados

Cuando crees plugins para extender las funcionalidades de Tainacan, puede que tengas que enfrentarte a código Vue.js, que es el framework JS adoptado por nuestra comunidad para implementar el Panel de Administración de Tainacan. La mayoría de las veces, dispondrás de las herramientas necesarias para realizar el trabajo utilizando las librerías que ya incluye nuestro plugin. Pero en las situaciones en las que eso no es suficiente, surge la necesidad de registrar **componentes VueJS adicionales**. Aquí algunos ejemplos:

* Puede que necesites un [componente Map](https://github.com/vue-leaflet/Vue2Leaflet ':ignore') para crear un [nuevo tipo de metadatos](/es-mx/dev/creating-metadata-type.md) de geolocalización;
* Es posible que desee utilizar un [componente de selector de color](https://github.com/xiaokaike/vue-color ':ignore') para registrar un [nuevo tipo de filtro](/es-mx/dev/creating-filters-type.md) basado en colores, o incluso añadir un hook de formulario adicional para incrementar la configuración de su colección;
* Puede que quieras algún [componente de galería extravagante](https://github.com/KitchenStories/vue-gallery-slideshow ':ignore') para crear un nuevo [modo de vista extra a pantalla completa](/es-mx/dev/extra-view-modes);

Aquí echamos un vistazo a los detalles de:

* Cómo funciona el [registro de componentes globales](#registro-de-componentes-globales) en la instancia Vue de Tainacan.
* Cómo [registrar tu componente personalizado](#registrar-tu-componente-personalizado).
* Cómo [registrar componentes de terceros](#registrar-componentes-de-terceros).

## Registro de componentes globales

Cada componente global en nuestro código Vue.JS está registrado en el archivo `/src/views/admin/js/main.js` (para el panel Administrativo) o dentro del `/src/views/theme-search/theme-main.js` (para el bundle que renderiza la [Lista de Items](/es-mx/dev/the-vue-items-list-component.md)). Estos archivos suelen tener tres secciones:

1. Las importaciones, que cargan librerías del paquete de plugins, como `import VueMasonry from 'vue-masonry-css';` e `import FilterNumeric from '../../admin/components/filter-types/numeric/Numeric.vue';`;
2. Los registros de componentes y plugins en la instancia global de Vue, como `Vue.use(VueMasonry);` y `Vue.component('tainacan-filter-numeric', FilterNumeric);`;
3. La instanciación `new Vue(...)`, pasando todas las configuraciones necesarias.

Debido a este proceso, etiquetas como `<masonry>` o `<component is="tainacan-filter-numeric">` son entendidas por los componentes Vue a través del código fuente y los componentes registrados son renderizados. Para registrar nuestros propios componentes, necesitamos *engancharnos* a los pasos 1 y 2 descritos anteriormente. Ahí es donde la siguiente rutina (presente en las líneas 73-78 del código `/src/views/admin/js/main.js` y en las líneas 46-51 de `/src/views/theme-search/theme-main.js`) resulta útil:

```javascript
/* Registra los componentes extra de Vue pasados a la ventana.tainacan_extra_components  */
if (typeof window.tainacan_extra_components != "undefined") {
    for (let [extraVueComponentName, extraVueComponentObject] of Object.entries(window.tainacan_extra_components))
        Vue.component(extraVueComponentName, extraVueComponentObject);
}
```

Verás, los Componentes Vue pueden ser exportados como meros objetos JS, conteniendo su configuración. Así que aquí estamos registrando cualquier componente que se pase a este array global *window.tainacan_extra_components*. Para añadir cualquier componente a este array, tenemos un método Helper especial, disponible para los desarrolladores de plugins: el `tainacan-register-vuejs-component()`. Veamos cómo usarlo.

## Registrando nuestro Componente Personalizado

Considera el siguiente archivo PHP, que será el archivo principal de tu plugin:

```php
<?php
/*
Nombre del Plugin: Some Tainacan Plugin
URI del plugin: https://tainacan.org/new
Descripción: "Plugin de Tainacan que registra un componente VueJS de terceros."
Autor: " Tu nombre aquí "
Version: 0.1
Text Domain: some-tainacan-plugin
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-3.0.html
*/
add_action("tainacan-register-vuejs-component", "register_vuejs_component");

function register_vuejs_component($helper) {
	$handle = 'some-tainacan-plugin-component';
	$component_script_url = plugin_dir_url(__FILE__) . '/some-tainacan-plugin-component.js';

	$helper->register_vuejs_component($handle, $component_script_url);
}
?>
```

Tan simple como parece, este plugin le dice a Tainacan dónde está el código del plugin JS que debería cargarse antes de los scripts del plugin `main.js` o `theme-main.js`. Aquí está el contenido de `some-tainacan-plugin-component.js`:

```javascript
// Obtener o crear el objeto window.tainacan_extra_components
var window.tainacan_extra_components = typeof window.tainacan_extra_components != "undefined" ? window.tainacan_extra_components : {};

// Creando tu propio componente VueJS y pasándolo
const SomeTainacanPluginComponent = {
	name: "SomeTainacanPluginComponent",
	data: {
        // ...
    },
    methods: {
        // ...
    },
	template: `
     <!-- Here goes the template, including any components that we desire -->
	`
}
window.tainacan_extra_components["some-tainacan-plugin-component"] = SomeTainacanPluginComponent;
```

Gracias a la rutina vista anteriormente el componente `<some-tainacan-plugin-component>` estará disponible. 

!>Advertencia: DEBE mantener el nombre `window.tainacan_extra_components`, ya que es el que utiliza el plugin para cargar los componentes personalizados, y tenga cuidado de no anularlo completamente. ¡Otros plugins pueden haber registrado sus componentes allí también!

La buena noticia es que, como el componente está registrado en la misma *Instancia Vue* de todo el paquete Tainacan, cualquier otro plugin o componente registrado globalmente estará disponible. Eso significa que, dentro de tu *SomeTainacanPluginComponent* tienes acceso a todos los componentes [Buefy](https://buefy.org/ ':ignore'), a plugins como [VTooltip](https://akryum.github.io/v-tooltip/#/ ':ignore'), [VueMasonry](https://github.com/paulcollett/vue-masonry-css ':ignore') y [VueDraggable](https://github.com/SortableJS/Vue.Draggable ':ignore'). Incluso puedes usar algunos de nuestros plugins de utilidades hechos para Tainacan, como el [UserPrefsPlugin](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/js/utilities.js#L126 ':ignore'), que expone metodos para obtener y establecer las preferencias del usuario [UserCapabilitiesPlugin](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/js/utilities.js#L346 ':ignore'), que nos ayuda a comprobar las capacidades del usuario.

## Registro de componentes de terceros

Eso parece bien, pero ¿qué pasa si quieres algunos componentes de terceros? El proceso se complica un poco dependiendo de cómo esté disponible el plugin. Si no puedes cargar su contenido desde un CDN para simplemente `requerirlo()` en tu JS, necesitarás algo de trabajo extra para pasarlo al array global. Idealmente, sería así:

```javascript
// Obtener o crear el objeto window.tainacan_extra_components
var window.tainacan_extra_components = window.tainacan_extra_components ? window.tainacan_extra_components : {};

// Importar y pasar un componente de terceros ...
import SomeThirdPartyComponent from 'some-third-party-component';
window.tainacan_extra_components["some-third-party-component"] = SomeThirdPartyComponent;
```

Pero el '*some-third-party-component*' debería estar disponible antes, probablemente gracias a un `npm install some-third-party-component`. Esto requiere que nuestro proyecto tenga un Bundler y archivos de gestión de paquetes. Aunque esto puede hacerse con muchas librerías diferentes, usaremos NPM como *gestor de paquetes* y Webpack como *bundler*. Tu proyecto debería tener un archivo **package.json** o puedes crear uno llamando a `npm init .`. Ahora ábrelo y configura algunas dependencias básicas:

```json
{
  "name": "third-party-component",
  "version": "1.0.0",
  "description": "",
  "scripts": {
    "build": "npx webpack some-plugin-component.js" // You can decide the build strategy that you prefer here
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "some-third-party-component": "^0.1.0" // Any third party vue component that you wish
  },
  "devDependencies": {
	"@babel/core": "^7.8.4",
    "babel-loader": "^8.0.6",
    "webpack": "^4.41.6",
    "webpack-cli": "^3.3.11",
    "vue-loader": "^15.9.0",
    "vue-template-compiler": "^2.6.11",
    "webpack-dev-server": "^3.10.3"
  }
}
```

Puedes ejecutar `npm install` para descargar las dependencias especificadas en la carpeta recién creada `node_modules` o instalar manualmente una por una estas dependencias (pasando `--save-dev` para las devDependencies). Observa que en nuestro ejemplo ya hemos instalado el deseado `some-third-party-component`, que debería ser el componente vue de tu preferencia.

Ahora, para poder empaquetar el JS al ejecutar `npx webpack some-plugin-component.js` vía `npm run build` necesitamos configurar Webpack. Esto se hace normalmente en un archivo `webpack.config.js`:

```js
let path = require('path');
let webpack = require('webpack');
const VueLoaderPlugin = require('vue-loader/lib/plugin');

module.exports = {
    entry: './some-plugin-component.js',
	output: {
		path: path.resolve(__dirname, 'dist'),
		filename: 'some-plugin-component.bundle.js'
	}
	module:{
		rules: [
            {
                test: /\.vue$/,
                loader: 'vue-loader'
            },
            {
                test: /\.js$/,
                loader: 'babel-loader',
            }
		]
	},
	plugins: [
		new VueLoaderPlugin()
	]
}
```

Los paquetes y cargadores listados aquí dependen completamente del componente que esté intentando construir. Algunos componentes pueden requerir, por ejemplo, algún cargador SASS o LESS.

Finalmente, después de ejecutar `npm run build` se creará un archivo `/dist/some-plugin-component.bundle.js`. Es este archivo el que ahora debes referenciar como `$component_script_url` en la función `$helper->register_vuejs_component($handle, $component_script_url)`.

## Recapitulando

Para registrar componentes Vue en la misma instancia del plugin Tainacan, todo lo que tienes que hacer es pasar un objeto componente Vue al array global *window.tainacan_extra_components*. Esto puede ser referenciado desde un archivo JS configurado en tu plugin usando el método Helper `tainacan-register-vuejs-component()`. Para registrar componentes de terceros, sin embargo, necesitas manejar cómo se empaquetará la importación a tu archivo JS.

Puedes ver más ejemplos de uso de esta estrategia consultando la documentación de:

* Cómo crear un [nuevo Tipo de Metadatos](/es-mx/dev/creating-metadata-type.md);
* Cómo crear un [nuevo Tipo de Filtro](/es-mx/dev/creating-filters-type.md);
* Cómo crear un [Extra View Mode](/es-mx/dev/extra-view-modes);
