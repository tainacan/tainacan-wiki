# Creación de un tipo de metadatos personalizado

Los tipos de metadatos son los objetos que representan los tipos de metadatos que se pueden utilizar. Ejemplos de tipos de metadatos son "Texto", "Texto largo", "Fecha", "Relación con otro elemento", etc. Cada objeto de tipo de metadatos tiene su configuración y componente web que se utilizará para representar la interfaz.

Los desarrolladores pueden crear Tipos de Metadatos personalizados a través de plugins a partir de Tainacan 0.16. Este artículo muestra cómo hacerlo, dividido en las siguientes secciones:

- [Registro de ](#registro-de-su-tipo-de-metadatos) su tipo de metadatos
- Creando la [Clase en PHP](#creando-la-clase-en-php)
- Creando el [componente Web Vue](#creando-el-componente-web-vue)
- Creación de un componente web Vue para el [Formulario de Metadatos](#creando-el-componente-vue-web-para-el-formulario-de-metadatos)
- Uso avanzado de [Componentes Vue de terceros](#uso-avanzado-de-componentes-vue)

> Si quieres jugar con la muestra utilizada aquí, todo está disponible en [este repositorio de Github](https://github.com/tainacan/custom-metadata-type-samples ":ignore") :wink:

## Registro de su tipo de metadatos

En primer lugar, tienes que registrar tu clase de Tipo de Metadatos. Esto se hace llamando al método `register_metadata_type` del `Metadata Type Helper`, disponible si el plugin Tainacan está instalado. Para simplificar este artículo, supongamos que estás creando una versión personalizada del Tipo de Metadatos _Numeric_ existente, que llamarás "Tipo de Metadatos Personalizado". Podrías tener el archivo principal del plugin, llamado `custom-metadata-type.php` con el siguiente contenido:

```php
<?php
/*
Plugin Name: Custom Metadata Type
Plugin URI: https://tainacan.org/new
Description: "A Custom Metadata Type for Tainacan, that does pretty much what the Numeric metadata type does"
Author: "Your Name Here"
Version: 0.1
Text Domain: custom-metadata-type
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-3.0.html
*/
add_action("tainacan-register-metadata-type", "register_metadata_type");
function register_metadata_type($helper) {

    // Registering the Class
    require_once( plugin_dir_path(__FILE__) . 'metadata_type/metadata-type.php' );

    // Registering the Vue Component
    $handle = 'custom-metadata-type';
    $class_name = 'Custom_Metadata_Type';
    $metadata_script_url = plugin_dir_url(__FILE__) . 'metadata_type/metadata-type.js';
    $helper->register_metadata_type($handle, $class_name, $metadata_script_url);
}

add_action("tainacan-register-vuejs-component", "register_metadata_type_form");
function register_metadata_type_form($helper) {

    // Registering the Vue Component for the Metadata Options Form
    $handle2 = 'custom-metadata-type-form';
    $component_script_url = plugin_dir_url(__FILE__) . 'metadata_type/metadata-type-form.js';
    $helper->register_vuejs_component($handle2, $component_script_url);
}
?>
```

Puedes ver que tenemos una carpeta llamada "metadata_type" para mantener la clase y el componente separados, lo cual depende de ti como prefieras organizar la estructura de archivos del plugin. Ahora vamos a entender mejor lo que significa cada una de las partes registradas.

## Creando la clase en PHP

Ahora tienes que crear la clase que acabas de registrar, y usar su constructor para establecer las características básicas de tu Tipo de Metadatos. Vayamos poco a poco comprobando el contenido de `metadata_type/metadata-type.php`:

```php
<?php

/**
 * Class Custom_Metadata_Type
 * This is inside "metadata_type/metadata-type.php"
 */
class Custom_Metadata_Type extends \Tainacan\Metadata_Types\Metadata_Type {

	function __construct() {

		parent::__construct();

		// Basic options
		$this->set_name( __('Custom Metadata Type', 'custom-metadata-type') );
		$this->set_description( __('A numeric value, integer or float', 'custom-metadata-type') );
		$this->set_primitive_type(['float']);
		$this->set_component('tainacan-metadata-type-custom');
		$this->set_preview_template('
			<div>
                <div class="control is-clearfix">
                    <input type="number" placeholder="3,1415" class="input">
                </div>
            </div>
		');

		// For custom Metadata Type Options
		$this->set_form_component('tainacan-metadata-form-type-custom');
		$this->set_default_options([
            'step' => 1
        ]);
	}
	// ... More to bellow ...
}
?>
```

Estos son los métodos que tiene que llamar para configurar su Tipo de Metadatos:

- **set_name(string \$name)** - Establece el nombre del tipo de metadatos. Este es el nombre que el usuario verá en el front-end y debe ser internacionalizado con su dominio de texto (`custom-metadata-type`).
- **set_description(string \$description)** - Establece la descripción del tipo de metadatos. Este es el texto que el usuario verá en el front-end y debe ser internacionalizado con su dominio de texto (`custom-metadata-type`).
- **set_primitive(string \$type)** - Informa del tipo de datos en bruto que se almacenarán. Lo utilizan principalmente los tipos de filtro para decidir qué tipo de filtros estarán disponibles para cada tipo de metadatos. Los tipos primitivos utilizados actualmente son: `string`, `date`, `float`, `item`, `term`, y `long_string` (puedes crear nuevos si quieres, sólo ten en cuenta que no todos los Tipos de Filtro pueden estar disponibles para ellos).
- **set_component(string \$component_name)** - El nombre del componente Vue que se creará en la próxima sesión. Recomendamos añadir el prefijo _tainacan-metadata-type-_ para evitar colisiones.
- **set_preview_template(string \$template)** - Una vista previa HTML del aspecto que tendrá el componente. Esto lo ven los usuarios dentro del tooltip "Metadata Type Preview" cuando pasan el ratón por el botón Metadata Type. Si puede utilizar las clases [Bulma](https://bulma.io ":ignore") y [Buefy](https://buefy.org/ ":ignore") aquí. Este parámetro no es obligatorio, pero puede mejorar la experiencia del usuario.

Los ultimos 2 (**set_form_component** y **set_default_options**) sólo son necesarios como describimos a continuación:

### Opciones de tipo de metadatos

Cuando registras un nuevo tipo de metadatos, se añadirá automáticamente como opción en la pantalla de configuración de metadatos. También tendrá el formulario de configuración de metadatos por defecto, donde se establece si los metadatos son _requeridos_ o no, aceptan _valores múltiples_ o no, etc.

Sin embargo, su tipo de metadatos puede tener opciones específicas que desee dar a los usuarios. Por ejemplo: En el tipo de metadatos Select, puede establecer cuáles serán las opciones de su Select. En el tipo de metadatos Numérico permite a los usuarios decidir el _paso_ para incrementar valores.

Para hacer esto, tienes que declarar cuales son las opciones que tiene tu tipo de metadatos, y preparar otro componente web para ser renderizado en el formulario de metadatos:

- **set_form_component(string \$component_name)** - El nombre del componente Vue que se renderizará dentro del formulario de edición de metadatos con opciones extra relacionadas con este tipo de metadatos. Recomendamos añadir el prefijo _tainacan-metadata-form-type-_ para evitar colisiones.

- **set_default_options(string \$component_name)** - Un array con opciones de tipo de metadatos personalizados, teniendo su `slug` y valor inicial. Esto refleja a las entradas que vamos a existir en el Metadata Form Component.

Tu formulario Metadata Form Component también deberá incluir etiquetas que necesiten ser traducidas. Para ello, puedes utilizar el método `get_form_labels`:

```php
class Custom_Metadata_Type extends \Tainacan\Metadata_Types\Metadata_Type {

	// ... More above ...
	public function get_form_labels(){
        return [
            'step' => [
                'title' => __( 'Step', 'tainacan' ),
                'description' => __( 'The amount to be increased or decreased when clicking on filter control buttons.', 'tainacan' ),
            ]
        ];
    }
	// ... More below ...
}
```

Donde el título se utiliza como etiqueta del formulario y la descripción se muestra dentro de un tooltip, visto por el usuario al pasar el ratón sobre un icono **?**.

Opcionalmente puedes implementar el método `validate_options` para validar el formulario antes de guardarlo:

```php
class Custom_Metadata_Type extends \Tainacan\Metadata_Types\Metadata_Type {

	// ... More above ...
	public function validate_options( \Tainacan\Entities\Metadatum $metadatum ) {

		$option = $this->get_option('step');

		if (is_numeric($option)) { // Or any other validation condition
			return true; // validated!
		} else {
			return ['step' => __('The option "step" is invald. Must be a number!', 'custom-metadata-type')];
		}
	}
	// ... More below ...
}
```

Se espera que `validate_options` devuelva `true` si es válido, y un array donde las claves son la opción `slug` y los valores son los mensajes de error.

### Métodos adicionales

Hay algunos otros métodos que puedes implementar que pueden cambiar la forma en que los elementos interactúan con los metadatos dependiendo del tipo de metadatos:

#### **validate( Item_Metadata_Entity \$item_metadata)**

Este método anulará la validación de la Entidad de Metadatos del Artículo, lo que significa que cada vez que Tainacan guarde un valor para metadatos de este tipo, llamará a este método.

Por ejemplo, el tipo de metadatos Fecha anula [este método](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/components/metadata-types/date/class-tainacan-date.php#L30 ":ignorar") para asegurarse de que la fecha está en el formato correcto. Observe que se encarga de comprobar si el valor es una cadena (valor único) o una matriz (valores múltiples).

#### **get_value_as_html( Item_Metadata_Entity \$item_metadata)**

Este método cambiará la forma en que el valor se convierte a HTML para los metadatos de este tipo de metadatos. Por ejemplo, los metadatos de tipo taxonomía y relación utilizan [esto](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/components/metadata-types/taxonomy/class-tainacan-taxonomy.php#L197 ":ignore") y [esto](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/components/metadata-types/relationship/class-tainacan-relationship.php#L111 ":ignore"), respectivamente, para añadir enlaces al término/elemento relacionado en la salida HTML.

## Creando el Componente Web Vue

El componente Vue es el trozo que se renderizará dentro del formulario de Edición de Artículos para que el usuario pueda editar sus metadatos de su tipo personalizado.

Nuestros componentes [Vue.js](vuejs.org/ ":ignore") utilizan la API de Opciones, lo que significa que están definidos por un objeto con opciones, que normalmente incluyen:

- `template` - Con su contenido HTML con notación vue para enlazar datos y eventos;
- `data` - Una función que devuelve un objeto con sus datos, o variables locales;
- `props` - Las variables que se pasarán desde el componente padre [Tainacan Form Item](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/components/metadata-types/tainacan-form-item.vue ":ignore"). Aprenderemos más sobre ellas a continuación;
- `methods` - El array de funciones que se evocan dentro de este componente;
- computed` - Matriz de funciones que devuelven datos locales que se derivan de algún procesamiento de otras variables;
- `watch` - Matriz de funciones que están a la escucha de algún cambio de variable para realizar alguna actualización.
- Y otros como lifecycle hooks, que puedes consultar en la documentación de [Vue.js](vuejs.org/ ":ignore").

Este objeto debe estar en esa ruta referenciada en nuestro [proceso de registro](#registering-your-metadata-type), así `metadata_type/metadata-type.js` en nuestro ejemplo de Custom Metadata Type, que es una copia del Numeric Metadata Type:

```javascript
window.tainacan_extra_components =
  typeof window.tainacan_extra_components != "undefined"
    ? window.tainacan_extra_components
    : {};

const TainacanMetadataTypeCustom = {
  name: "TainacanMetadataTypeCustom",
  props: {
    itemMetadatum: Object,
    value: [String, Number, Array],
    disabled: false,
  },
  computed: {
    getStep: function () {
      if (
        this.itemMetadatum &&
        this.itemMetadatum.metadatum.metadata_type_options &&
        this.itemMetadatum.metadatum.metadata_type_options.step
      )
        return this.itemMetadatum.metadatum.metadata_type_options.step;
      else return 0.01;
    },
  },
  methods: {
    onInput: function (value) {
      this.$emit("input", value);
    },
    onBlur: function () {
      this.$emit("blur");
    },
  },
  template: `
	<b-input
            :disabled="disabled"
            :id="itemMetadatum.metadatum.metadata_type_object.component + '-' + itemMetadatum.metadatum.slug"
            :value="value"
            @input="onInput($event)"
            @blur="onBlur"
            type="number"
            lang="en"
            :step="getStep"/>
	`,
};

window.tainacan_extra_components["tainacan-metadata-type-custom"] =
  TainacanMetadataTypeCustom;
```

La primera y la última línea son un paso importante para registrar componentes personalizados en el paquete JS del plugin.

!> DEBES mantener el nombre `window.tainacan_extra_components`, ya que es el que usa el plugin para cargar los componentes personalizados, y ten cuidado de no sobreescribirlo completamente. Otros plugins pueden haber registrado sus componentes allí también.

El `slug` pasado al array en la última línea es el mismo usado por el método _set_component_ previamente en nuestro [proceso de registro](#registering-your-metadata-type).

### Entendiendo la lógica del componente

#### Props: lo que el componente recibe del componente padre.

Fíjate primero en los `props` del componente. Se pasan a todos los metadatos:

- `itemMetadatum` es el propio objeto metadato del ítem, que contiene datos importantes como el `metadatum.id` y el `metadatum.metadata_type_options`;
- `value` es el valor utilizado para vincular lo que sea el valor de contenido de este metadato;
- `disabled` es un booleano manejado por el formulario del Item, que puede ser usado para deshabilitar cualquier componente interno en caso de que las opciones no estén cargadas y otras situaciones que puedan ser deseadas;

Los valores de Prop no deben ser modificados por el componente. Si desea realizar cambios en algunos datos locales antes de enviarlos a la API, probablemente debería utilizar la opción del componente `data` con una copia del valor de entrada, pasado durante el ciclo de vida de `created()`.

#### Métodos: donde enviamos valores de vuelta al componente padre

.
Los `methods` aquí simplemente delegan los eventos blur y input al componente padre por defecto, que es el responsable de pasar estos valores al formulario del Item.

Cada componente metadatum debe emitir un valor de entrada, pasando el valor actualizado que recibieron de los props.

#### Obteniendo las Opciones de Tipo de Metatada en una función Computada

Puede que este no sea tu caso, pero si tu componente de metadatos ha registrado un componente de formulario de metadatos con opciones extra, entonces puedes acceder a ellas a través del objeto `this.itemMetadatum.metadatum.metadata_type_options`. En el código anterior, accedemos a este valor con una función Computed.

Por último, en este ejemplo se utiliza un componente personalizado de [Buefy](https://buefy.github.io/), `b-input`. Recomendamos echarle un vistazo, ya que esta librería ya está cargada en Tainacan, y la mayoría de sus clases tienen un estilo que coincide con nuestro estilo por defecto. Pero si quieres usar otra librería o componente de Vue.js, puedes consultar la sesión de [Registering Custom Vue JS](/dev/registering-custom-vue-components.md) para entender cómo usarlo, pero el proceso es muy parecido al que hemos hecho para registrar el componente de formulario de metadatos.

## Creando el Componente Vue Web para el Formulario de Metadatos

Registrar el Componente Formulario de Metadatos sigue pasos similares. Hay que tener cuidado de utilizar la ruta registrada anteriormente, en nuestro caso `metadata_type/metadata-form-type.js` y tener cuidado de utilizar el mismo slug del paso de registro: `tainacan-metadata-form-type-custom`. Ahora no estamos registrando un tipo de metadatos, sino un componente vuejs aislado, por eso en el archivo `PHP` estamos llamando a la función `register_vuejs_component`. Aquí está nuestro archivo `.js` considerablemente más largo:

```js
window.tainacan_extra_components =
  typeof window.tainacan_extra_components != "undefined"
    ? window.tainacan_extra_components
    : {};

const TainacanMetadataFormCustomType = {
  name: "TainacanMetadataFormTypeCustom",
  props: {
    value: [String, Number, Array],
  },
  data: function () {
    return {
      step: [Number, String],
      showEditStepOptions: false,
    };
  },
  created: function () {
    this.step = this.value && this.value.step ? this.value.step : 1;
  },
  methods: {
    onUpdateStep: function (value) {
      this.$emit("input", { step: value });
    },
  },
  template: `
	<div>
        <b-field :addons="false">
            <label class="label is-inline">
                {{ $i18n.getHelperTitle('tainacan-filter-numeric', 'step') }}<span>&nbsp;*&nbsp;</span>
                <help-button
                        :title="$i18n.getHelperTitle('tainacan-filter-numeric', 'step')"
                        :message="$i18n.getHelperMessage('tainacan-filter-numeric', 'step')"/>
            </label>
            <div
                    v-if="!showEditStepOptions"
                    class="is-flex">
                <b-select
                        name="step_options"
                        v-model="step"
                        @input="onUpdateStep">
                    <option value="0.001">0.001</option>
                    <option value="0.01">0.01</option>
                    <option value="0.1">0.1</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="5">5</option>
                    <option value="10">10</option>
                    <option value="100">100</option>
                    <option value="1000">1000</option>
                    <option
                            v-if="step && ![0.001,0.01,0.1,1,2,5,10,100,1000].find( function(element) { return element == step })"
                            :value="step">
                        {{ step }}</option>
                </b-select>
                <button
                        class="button is-white is-pulled-right"
                        :aria-label="$i18n.get('edit')"
                        @click.prevent="showEditStepOptions = true">
                    <span
                            v-tooltip="{
                                content: $i18n.get('edit'),
                                autoHide: true,
                                placement: 'bottom'
                            }"
                            class="icon">
                        <i class="tainacan-icon tainacan-icon-18px tainacan-icon-edit has-text-secondary"/>
                    </span>
                </button>
            </div>
            <div
                    v-if="showEditStepOptions"
                    class="is-flex">
                <b-input
                        name="max_options"
                        v-model="step"
                        @input="onUpdateStep"
                        type="number"
                        step="1" />
                <button
                        @click.prevent="showEditStepOptions = false"
                        class="button is-white is-pulled-right">
                    <span
                            v-tooltip="{
                                content: $i18n.get('close'),
                                autoHide: true,
                                placement: 'bottom'
                            }"
                            class="icon">
                        <i class="tainacan-icon tainacan-icon-18px tainacan-icon-close has-text-secondary"/>
                    </span>
                </button>
            </div>
        </b-field>
    </div>
	`,
};
window.tainacan_extra_components["tainacan-metadata-form-type-custom"] =
  TainacanMetadataFormCustomType;
```

Algunas observaciones:

- Los componentes de formulario siempre reciben un `value` prop de su padre, que es un objeto que contiene cualquier opción registrada en la Clase de Tipo de Metadatos;
- No necesitas envolver tu plantilla con una etiqueta `<form>`, ya que el componente padre de ésta será el Formulario de Edición de Metadatos por defecto;
- En el ejemplo anterior, almacenamos una copia local del `value.step`, obtenida en el ciclo de vida `created()`. Esto es porque queremos cambiar el valor internamente y también emitir la versión actualizada al formulario padre. Fíjate, cuando se ejecuta `emit()`, que el valor va dentro de un objeto, de la misma forma que fue recibido del padre.

## Uso avanzado de componentes Vue

La estrategia mencionada anteriormente puede no ser suficiente en su caso, más concretamente en dos casos:

1. Si quieres escribir tu componente en un archivo `.vue`, evitando la opción `template` que puede no ser buena para organizar componentes complejos;
2. Si necesitas plugins o componentes Vue de terceros que no se cargan por defecto en el paquete de plugins de Tainacan. Por ejemplo, si deseas utilizar algún tipo de plugin Date Picker en caso de que no estés satisfecho con el de Buefy.

En cualquiera de esos casos, necesitarías un _bundler_ para convertir tus archivos Vue y la lógica de importación en un único archivo `js`, para ser referenciado en tu clase PHP. Aunque hay diferentes bundlers que se pueden utilizar, vamos a utilizar [Webpack](https://webpack.js.org/ ":ignore") como ejemplo y [NPM](https://www.npmjs.com/ ":ignore") como nuestro gestor de paquetes. Esto es lo que necesitarás tener, en tu carpeta `metadata_type`:

- Un archivo `package.json`, que contiene las dependencias de npm y las instrucciones de los scripts;
- Un archivo `webpack.config.js`, que contiene la configuración del bundler;
- Tu nuevo archivo `metadata-type.vue`, con la lógica que se puso en el archivo `.js`, y tus cosas extra;
- Una versión modificada del antiguo archivo `metadata-type.js` que creamos anteriormente en este tutorial.

Y por supuesto, después de todo listo necesitarás [construirlo](#construyelo!). La configuración dependerá mucho de lo que estés construyendo, pero aquí tenemos algunos ejemplos:

### Ejemplo mínimo de _package.json_

```json
{
  "name": "metadata-type",
  "version": "1.0.0",
  "description": "",
  "scripts": {
    "build": "npx webpack metadata-type.js"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "some-third-party-component": "^0.0.1"
  },
  "devDependencies": {
    "@babel/core": "^7.8.4",
    "babel-loader": "^8.0.6",
    "vue-loader": "^15.9.0",
    "vue-template-compiler": "^2.6.11",
    "webpack": "^4.41.6",
    "webpack-cli": "^3.3.12",
    "webpack-dev-server": "^3.10.3"
  }
}
```

Fíjate en que ya ofrecemos un comando de compilación y un ejemplo de cómo se incluiría un componente de terceros como dependencia. La forma habitual de añadirlos es ejecutando `npm install some-third-party-component`, si existe un paquete publicado en el repositorio _npm_.

### Ejemplo básico de _webpack.config.js_

```js
let path = require("path");
let webpack = require("webpack");
const VueLoaderPlugin = require("vue-loader/lib/plugin");

module.exports = {
  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "metadata-type.bundle.js",
  },
  module: {
    rules: [
      {
        test: /\.vue$/,
        loader: "vue-loader",
      },
      {
        test: /\.js$/,
        loader: "babel-loader",
      },
    ],
  },
  plugins: [new VueLoaderPlugin()],
};
```

!> Observa que el bundle generado (`metadata-type.bundle.js`) tiene un nombre diferente al del archivo fuente (`metadata-type.js`) y está dentro de una carpeta `build`, como se define en el [archivo de configuración del Webpack](#basic-webpackconfigjs-example). Esto significa que tendrá que actualizar su archivo [PHP de registro](#registering-your-metadata-type) mencionado anteriormente para proporcionar la `metadata_script_url` adecuada.

### Tu archivo .vue

Ahora, en lugar de usar la lógica "_object-with-options_" para [crear el componente Vue](#creating-vue-web-component-for-the-metadata-form), podemos aprovechar la lógica "_single-file-component_" de Vue e incluso _importar_ algunos componentes de terceros si es necesario:

```vue
<template>
    <div v-if="itemMetadatum">
        <b-input
            :disabled="disabled"
            :id="
            itemMetadatum.metadatum.metadata_type_object.component +
            '-' +
            itemMetadatum.metadatum.slug
            "
            :value="value"
            @input="onInput($event)"
            @blur="onBlur"
            type="number"
            lang="en"
            :step="getStep"
        />
        <some-third-party-component />
  </did>
</template>

<script>
import SomeThirdPartyComponent from "some-third-party-component";

export default {
  name: "TainacanMetadataTypeCustom",
  components: {
    //SomeThirdPartyComponent,
  },
  props: {
    itemMetadatum: Object,
    value: [String, Number, Array],
    disabled: false,
  },
  computed: {
    getStep: function () {
      if (
        this.itemMetadatum &&
        this.itemMetadatum.metadatum.metadata_type_options &&
        this.itemMetadatum.metadatum.metadata_type_options.step
      )
        return this.itemMetadatum.metadatum.metadata_type_options.step;
      else return 0.01;
    },
  },
  methods: {
    onInput: function (value) {
      this.$emit("input", value);
    },
    onBlur: function () {
      this.$emit("blur");
    },
  },
};
</script>

<style>
/* How about some custom style here? */
</style>
```

### Actualizar el archivo .js

Ahora el fichero `.js` anterior sólo tiene que importar el componente y pasarlo a la variable global `window.tainacan_extra_components`.

```js
import TainacanMetadataTypeCustom from "./metadata-type.vue";

window.tainacan_extra_components =
  typeof window.tainacan_extra_components != "undefined"
    ? window.tainacan_extra_components
    : {};
window.tainacan_extra_components["tainacan-metadata-type-custom"] =
  TainacanMetadataTypeCustom;
```

### Construyelo!

Con estos cuatro archivos configurados estás listo para construir tu pequeño proyecto Vue.js. Abre el terminal, entra en la carpeta de tu`metadata_type` y ejecuta:

```
npm install
npm run build
```

Si todo va bien, tendrás una nueva carpeta `node_modules` y un nuevo archivo `package.lock.json` generado en tu carpeta.

## Conclusión

Crear tu Metadata Type personalizado para Tainacan requiere seguir algunas _convenciones de nomenclatura_ y entender un poco la estructura existente en el código del plugin. Aquí resumimos cómo [Registrar](#registering-your-metadata-type), crear la [Clase](#creating-the-php-class) y los [Componentes Vue personalizados](#creating-vue-web-component) relacionados con ella. Pero puedes aprender mucho más estudiando el [código fuente de algunos ejemplos más complejos](https://github.com/tainacan/tainacan/tree/develop/src/views/admin/components/metadata-types ":ignore"). No dudes en contactar con nosotros en el repositorio de GitHub o en el [foro de la comunidad](https://tainacan.discourse.group ":ignore") :wink:

> Ah, y por cierto. ¿Estás preparado para crear también un [Tipo de filtro personalizado](/es-mx/dev/creating-filters-type) para tu nuevo Tipo de metadatos?
