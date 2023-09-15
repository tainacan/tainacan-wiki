# El flujo del exportador

Esta página describe cómo funcionan los exportadores de Tainacan y es una referencia para escribir tu exportador personalizado. 

Esta documentación está todavía en construcción. Una forma muy efectiva de aprender más sobre cómo construir un exportador es mirar el código fuente de la clase CSV Exporter que se incluye en el paquete tainacan.

## Introducción

Los exportadores pueden exportar elementos de una sola colección, o incluso crear un montón de colecciones, taxonomías y elementos a la vez.

Para crear un exportador, debe extender la clase `Tainacan\Exporter` y registrarlo utilizando el método global `Tainacan\Export_Handler->register_exporter()`.

Este método toma un array como argumento, con la definición de su exportador. Estos son los atributos esperados.

```php
	@type string	$name					The name of the exporter. e.g. 'Example exporter'
	@type string	$slug					A unique slug for the exporter. e.g. 'example-exporter'
	@type string	$description			The exporter description. e.g. 'This is an example exporter description'
	@type string	$class_name				The Exporter Class. e.g. '\Tainacan\Exporter\Test_Exporter'
	@type bool		$manual_mapping			Wether Tainacan must present the user with an interface to manually choose 
											a mapping standard. This will allow them to export the items mapped to a
											chosen standard instead of in its original form.
											
											The exporter will also be able to inform what mappers it supports. See `set_accepted_mapping_methods`
											and `accept_no_mapping` below.
										
											Note that this will only work when exporting items from one single collection.

	@type bool		$manual_collection		Wether Tainacan will let the user choose the source collection.
											If set to true, Tainacan give the user a select box from where he/she will Choose
											one (and only one) Collection to export items from.
										
											Otherwise, the child exporter class must choose the collections somehow
											(it could be in its options form) and add them to the collections property using `add_collection()`
```

Ten en cuenta que dependiendo del valor de `manual_mapping` y `manual_collection` tendrás que implementar algunos métodos en tu clase exportadora.

## Inicializar un nuevo exportador

Cuando el usuario inicia un nuevo proceso de exportación, primero elige qué exportador va a utilizar.

Una vez elegido el exportador, lo primero que ocurre es la creación de una nueva instancia del exportador elegido. Para ello se dispara el método `__construct()`.


## Elegir una colección (si `manual_collection` es true)

Después de elegir el exportador, el usuario tendrá la opción de elegir la colección de origen.

Si se llama desde dentro de una colección, este paso se omite y la colección actual se establece como origen.

## Establecer opciones

Ahora es el momento de configurar las opciones del exportador. Cada exportador puede tener su propio conjunto de opciones, que se utilizarán durante el proceso de exportación. Puede ser cualquier cosa, desde el carácter delimitador en un exportador CSV hasta una clave API para un exportador que envía datos a una API externa.

Las clases exportadoras deben declarar los valores por defecto para sus opciones en el método `__construct()`, llamando a `set_default_options()`.

```php
namespace Tainacan\exporter;

class Myexporter extends Exporter {
	function __construct() {
		parent::construct();
		$this->set_default_options(['
			'foo' => 'bar'
		']);
	}
}
```

Las clases exportadoras también deben implementar el método `options_form`, en el que se hará eco del formulario con el que interactuará el usuario para configurar las opciones.

```php
	function options_form() {
		$form = '<div class="field">';
        $form .= '<label class="label">' . __('My exporter Option 1', 'tainacan') . '</label>';
		$form .= '<div class="control">';
		$form .= '<input type="text" class="input" name="my_exporter_option_1" value="' . $this->get_option('my_exporter_option_1') . '" />';
		$form .= '</div>';
		$form .= '</div>';

		return $form;
	}
```

## Aceptar mapeadores 

Si establece `manual_mapping` como verdadero y desea ofrecer a los usuarios la posibilidad de exportar una versión mapeada de sus colecciones, también puede 
definir qué mapeadores aceptar. 

```php
public function __construct($attributes = array()) {
	parent::__construct($attributes);
	$this->set_accepted_mapping_methods('any'); // establecer todos los métodos en la asignación
	$this->accept_no_mapping = true;
}
```

`$this->set_accepted_mapping_methods()` te permite hacerlo. Si lo configuras como "any", todos los mapeadores estarán disponibles. Si lo configuras como "list", puedes pasar un segundo argumento con la lista de mapeadores que quieres que estén disponibles para los usuarios.

```php
public function __construct($attributes = array()) {
	parent::__construct($attributes);
	$this->set_accepted_mapping_methods('list', [ "dublin-core" ]); // establecer una lista específica de métodos en la asignación
}
```

Finalmente, `$this->accept_no_mapping = true;` informa de que también permite a los usuarios exportar elementos en su forma original, sin ningún mapeo. En otras palabras, no es obligatorio elegir un mapeador si se establece en true.

## Pasos del exportador

Un exportador puede tener varios pasos, que manejarán diferentes partes del proceso. Cada paso será manejado por un callback diferente en la clase del exportador.

En primer lugar, vamos a ver un exportador CSV simple, que sólo tiene un paso, en el que exporta los elementos de la colección de origen a un archivo CSV. Después, veremos cómo crear pasos personalizados.

### Exportador simple - Un paso que exporta elementos

Por defecto, los exportadores deben implementar 3 métodos: `output_header`, `output_footer` y `process_item`.

Los métodos `output_header` y `output_footer` se invocan al principio y al final de cada colección que se exporta. Pueden ser útiles, por ejemplo, para escribir la cabecera y el pie de página de un fichero csv o xml.

Dentro de estos métodos, puedes hacer lo que quieras. Puede ser un POST a una API o escribir un nuevo fichero (ver manejo de ficheros más abajo).

El método `process_item` será invocado para cada elemento que se exporte. Tainacan recorrerá automáticamente las colecciones de la cola, buscará y preparará los elementos, y luego los enviará, de uno en uno, a este método. (ver añadir colecciones más abajo).

Este método recibe dos parámetros, el objeto `$item` (instancia de \Tainacan\Entities\Item), y su `$metadata`, con un array de objetos `\Tainacan\Entities\Item_Metadata_Entity'.

Tenga en cuenta que, en este método, no es necesario preocuparse por el mapeo. Si un mapeador fue elegido por el usuario, recibirá este array de metadatos ya mapeados, lo que significa que serán sólo los definidos en el mapeador. (Tenga en cuenta que, si una colección no mapea uno de sus metadatos a un metadato esperado por el mapeador elegido, serán elementos vacíos en este array).

Ahora puede recorrer los metadatos y acceder a cualquier propiedad que desee del elemento para hacer lo que quiera. En el caso del exportador CSV, añadirá una línea al archivo CSV.

Si necesitas acceder al objeto Mapper, con todo lo referente al estándar mapper elegido, puedes hacerlo llamando a `$this->get_current_mapper()`. Si no se devuelve ningún objeto, significa que el usuario no ha seleccionado ningún mapeador.

#### Añadir colecciones

Si tu exportador no utiliza la opción `manual_collection`, puede que quieras añadir mediante programación las colecciones que quieras exportar a la cola.

Para añadir o eliminar una colección de la cola, utilice los métodos `add_collection()` y `remove_collection()` pasando la definición de la colección.

La definición de la colección es un array con sus IDs y el número total de elementos a exportar.


Ejemplo de la estructura de esta propiedad para una colección:

```php
[
	'id' => 12,
	'total_items' => 1234,
]
```

#### Gestión de archivos 

Su exportación puede generar uno o más archivos, que serán descargados por el usuario como un paquete al final.

Para crear y escribir contenido en un fichero, utilice el método `append_to_file()`.

Toma 2 argumentos: `$clave` y `$datos`. `$key` es el identificador del fichero y servirá como nombre del fichero, precedido del ID del proceso. Si todavía no existe un fichero con esta clave, se creará. `$data` es el contenido que se añadirá al fichero.

No olvides añadir un enlace al fichero generado en la salida al final del proceso. Esta será la única forma que tendrán los usuarios de obtenerlos. Ver "Salida final" más abajo).

TODO: Si más de un archivo fue creado, Tainacan creará un zip de ellos al final. Aún por implementar.

#### Uso de transitorios

Dado que los exportadores se manejan como procesos en segundo plano, se ejecutarán a través de múltiples peticiones. Por esta razón, no puedes simplemente añadir propiedades a tu clase y confiar en que sus valores se mantendrán durante todo el tiempo que el proceso se esté ejecutando.

Si quieres que un valor persista para que puedas utilizarlo en todos los métodos de tu exportador, en cualquier momento, debes utilizar `transients` para almacenarlos en la base de datos.

Esto es tan simple como llamar a `set_transient()` y `get_transient()`. Vea el siguiente ejemplo:


```php
function callback_for_step_1() {
	
	$this->add_transient('time_step_1', time());
	
}
// ...

function callback_for_step_5() {
	
	$time_step_1 = get_transient('time_step_1');
	
}
```


#### Manejo de la retroalimentación del usuario

Hay dos informaciones que los exportadores Tainacan dan al usuario sobre el estado del proceso mientras se está ejecutando en la retroalimentación: la `etiqueta de progreso` y el `valor de progreso`. 

La `etiqueta de progreso` es una cadena que puede ser cualquier cosa que le diga al usuario lo que está pasando. Por defecto, es el nombre del paso, pero puede informar de un atributo específico `progress_label` al registrar los pasos.

El `progress value` es un número entre 0 y 100 que indica el progreso del paso actual o de todo el exportador, eso depende de ti. Por defecto, lo calcula automáticamente usando el atributo `total` registrado con los pasos, contra el valor `$this->get_in_step_count()`. En el caso de la llamada de retorno por defecto a `Process Items`, se calcula en base al número de elementos encontrados en cada colección.

Vea la llamada de retorno `finish_processing` en el Importador de Pruebas. Notará que cuando registramos el paso, informamos un atributo `total` a este paso con el valor de 5. Esto le dirá a Tainacan que el número de elementos encontrados en cada colección es el mismo. Esto le dirá a Tainacan que el número total de iteraciones que este paso necesita completar es 5 y le permitirá calcular el progreso.

Si no es posible conocer el `total` de un paso de antemano, puedes establecerlo en cualquier momento, incluso dentro de la propia llamada de retorno del paso, utilizando los métodos `set_current_step_total($value)` o `set_step_total($step, $value)`.


##### Salida final 

Cuando el proceso finaliza, los procesos de fondo definen una "salida", que es un informe final para el usuario sobre lo ocurrido.

Puede ser simplemente un mensaje que diga "Todo bien", o un informe con los nombres y enlaces a las colecciones creadas. HTML es bienvenido.

Recuerde que para un informe más detallado y técnico, debe utilizar Logs (ver Logs más abajo). Esta salida está pensada como un mensaje corto pero descriptivo y fácil de usar.

Para conseguirlo, los exportadores deben implementar un método llamado `get_output()` que devuelve una cadena.

Este método será llamado sólo una vez cuando el exportador finalice, por lo que puede que necesites guardar información usando `transients` durante el proceso y usarlos en `get_output()` para componer tu mensaje.

Para obtener una lista de los ficheros generados para mostrar a los usuarios, utilice `$this->get_output_files()`.

#### Registros

Existen dos métodos útiles para escribir información en los registros: `add_log()` y `add_error_log()`. Éstos se escriben en un archivo de registro relacionado con el proceso de fondo del exportador y se presentará al usuario un enlace al mismo.


## Ejecutar el exportador

Finalmente, todo está listo. El exportador se ejecuta.

Esto activará un proceso en segundo plano (documentación necesaria) y el exportador se ejecutará a través de tantas peticiones en segundo plano como sea necesario.
