# El flujo del importador

Esta página describe cómo funciona el importador de Tainacan y es una referencia para escribir tu importador personalizado. 

Esta documentación está todavía en construcción. Una forma muy efectiva de aprender más sobre cómo construir un importador es mirar el código fuente de las clases Test Importer y CSV Importer que se incluyen en el paquete Tainacan.

## Introducción

Los importadores pueden importar elementos dentro de una colección, o incluso crear un montón de colecciones, taxonomías y elementos a la vez.

Para crear un Importador, hay que extender la clase `\Tainacan\Importer` y registrarlo utilizando el método global `Tainacan_Importer_Handler->register_importer()`.

Este método toma un array como argumento, con la definición de su importador. Estos son los atributos esperados.

```php
	@type string	$name					The name of the importer. e.g. 'Example Importer'
	@type string	$slug					A unique slug for the importer. e.g. 'example-importer'
	@type string	$description			The importer description. e.g. 'This is an example importer description'
	@type string	$class_name				The Importer Class. e.g. '\Tainacan\Importer\Test_Importer'
	@type bool		$manual_mapping			Wether Tainacan must present the user with an interface to manually map 
											the metadata from the source to the target collection.
											If set to true, Importer Class must implement the method 
											get_source_metadata() to return the metadata found in the source.
										
											Note that this will only work when importing items to one single collection.

	@type bool		$manual_collection		Wether Tainacan will let the user choose a destination collection.
											If set to true, Tainacan will handle Collection creation and will assign it to 
											the importer object using add_collection() method.
										
											Otherwise, the child importer class must create the collections and add them to the collections property also using add_collection()
```

Ten en cuenta que dependiendo del valor de `manual_mapping` y `manual_collection` tendrás que implementar algunos métodos en tu clase importadora.

## Inicializar un nuevo importador

Cuando el usuario inicia un nuevo proceso de importación, primero elige qué importador utilizar.

Una vez elegido el importador, lo primero que ocurre es la creación de una nueva instancia del importador elegido. Esto dispara el método `__construct()`.


## Elegir una colección (si `manual_collection` es verdadero)

Después de elegir el importador, el usuario podrá elegir la colección de destino.

Si se llama desde dentro de una colección, este paso se omite y la colección actual se establece como destino.

## Establecer opciones

Ahora es el momento de configurar las opciones del importador. Cada importador puede tener su propio conjunto de opciones, que se utilizarán durante el proceso de importación. Puede ser cualquier cosa, desde el carácter delimitador en un importador CSV hasta una clave API para un importador que obtiene algo de una API.

Las clases importadoras deben declarar los valores por defecto para sus opciones en el método `__construct()`, llamando a `set_default_options()`.

```php
namespace Tainacan\Importer;

class MyImporter extends Importer {
	function __construct() {
		parent::construct();
		$this->set_default_options(['
			'foo' => 'bar'
		']);
	}
}
```

Las clases del Importador también deben implementar el método `options_form`, en el que se hará eco del formulario con el que interactuará el usuario para configurar las opciones.

```php
	function options_form() {
		$form = '<div class="field">';
        $form .= '<label class="label">' . __('My Importer Option 1', 'tainacan') . '</label>';
		$form .= '<div class="control">';
		$form .= '<input type="text" class="input" name="my_importer_option_1" value="' . $this->get_option('my_importer_option_1') . '" />';
		$form .= '</div>';
		$form .= '</div>';

		return $form;
	}
```

## Buscar fuente

A continuación, los usuarios elegirán la fuente. Cada importador declara el tipo de fuentes que acepta: URL, archivo o ambos.

Los importadores hacen esto llamando a `add_import_method()` y `remove_import_method` en su construcción. Por defecto, los importadores sólo soportan el método `file`. He aquí un ejemplo de lo que debe hacer un importador que sólo acepte URLs:

```php
	function __construct() {
		parent::construct();
		
		$this->add_import_method('url');
		$this->remove_import_method('file');
		
	}
```

Si el Importador acepta el método `file`, se solicitará al usuario que introduzca un archivo para cargarlo. El archivo se guardará y será accesible a través del método `$this->get_tmp_file()`.

Si el importador acepta el método `url`, se pedirá al usuario que introduzca una URL. Por defecto, el importador buscará cualquier URL dada en el mismo atributo `file`, como si el usuario la hubiera subido. Sin embargo, cada importador puede anular el método `fetch_from_remote()` y hacer lo que quiera para crear el archivo. Por ejemplo, podría hacer varias peticiones paginadas. 

A partir de ese momento, el importador se comportará como si utilizara el método file.


## Mapeo

En este punto, si la definición del Importador tiene `manual_mapping` en `true`, se presenta al usuario una interfaz para mapear los metadatos de la fuente a los metadatos presentes en la colección elegida.

La clase Importador debe implementar el método `get_source_metadata()`, que devolverá un array de los metadatos encontrados en la fuente. Puede devolver una matriz codificada o una matriz leída del archivo fuente. Por ejemplo, un importador que obtiene datos de una API sabe de antemano cuáles son los metadatos que la API devolverá, sin embargo, un importador que lee de un csv, puede querer devolver lo que se encuentra en la primera línea del arreglo. 

```php
// Example 1: returns a hard coded set of metadata
function get_source_metadata() {
	return [
		'title',
		'description'
		'date',
	];
}

// Example 2: returns the columns of the first line of a CSV file
public function get_source_metadata(){
	$file = new \SplFileObject( $this->tmp_file, 'r' );
	$file->seek(0);
	return $file->fgetcsv( $this->get_option('delimiter') );
}
```

## Pasos del importador

Un Importador puede tener varios pasos, que manejarán diferentes partes del proceso. Cada paso será manejado por un callback diferente en la clase Importador.

En primer lugar, vamos a ver un importador CSV simple, que sólo tiene un paso, en el que importa los elementos de la fuente en una colección elegida. Después, veremos cómo crear pasos personalizados.

### Importador simple - Un paso que importa elementos

Por defecto, el único método que una clase Importadora debe implementar para funcionar es el de la clase `process_item()`.

Este método recibe dos parámetros, el `$index` del elemento a insertar, y el `$collection_definition`, con información sobre la colección destino.

Dentro de este método, debes obtener el elemento de la fuente y formatearlo de acuerdo con la definición `mapping` de la colección.

El `mapping` define cómo los metadatos del elemento de la fuente deben ser asignados a los metadatos presentes en la colección de destino. Ha sido creado manualmente por el usuario o programáticamente por el importador en un paso anterior (ver importadores avanzados más abajo). Se trata de una matriz en la que las claves son los `identificadores de metadatos` y los valores son los `identificadores` que se encuentran en la fuente.

Todo lo que este método debe hacer es devolver el elemento como un array asociativo, donde las claves son los `identificadores` de metadatos, y los valores son los valores que deben ser almacenados.

Y eso es todo. Entre bastidores, la superclase Importador se encarga de todo y llamará a `process_item()` tantas veces como sea necesario para importar todos los elementos a la colección.

### Importador avanzado - Muchos pasos

Por defecto, la superclase Tainacan Importer registra un único paso para el importador:

```php
[
	'name' => 'Import Items',
	'progress_label' => 'Importing Items',
	'callback' => 'process_collections'
]
```

Este paso realizará un bucle a través de todas las colecciones añadidas al importador (manual o programáticamente) y añadirá los elementos a la misma.

Puede registrar tantos pasos y retrollamadas como desee en su importador, pero debería considerar mantener este paso predeterminado en algún momento para gestionar la inserción de los elementos. Por ejemplo, vea cómo el Importador de pruebas añade otros pasos antes y después, pero mantiene este paso predeterminado en el medio:

```php
class Test_Importer extends Importer {
	
	protected $steps = [
		
		[
			'name' => 'Create Taxonomies',
			'progress_label' => 'Creating taxonomies',
			'callback' => 'create_taxonomies'
		],
		[
			'name' => 'Create Collections',
			'progress_label' => 'Creating Collections',
			'callback' => 'create_collections'
		],
		
		// we keep the default step
		[
			'name' => 'Import Items',
			'progress_label' => 'Importing items',
			'callback' => 'process_collections'
		],
		
		[
			'name' => 'Post-configure taxonomies',
			'progress_label' => 'post processing taxonomies',
			'callback' => 'close_taxonomies'
		],
		[
			'name' => 'Finalize',
			'progress_label' => 'Finalizing',
			'callback' => 'finish_processing',
			'total' => 5
		]
		
	];

	//...

```

#### Devolución de llamada de los pasos

Cada paso tiene su callback. El callback puede hacer cualquier cosa necesaria, sólo ten en cuenta que debes permitir al importador dividir procesos muy largos en varias peticiones.

Para ello, el callback de tu paso puede ser llamado varias veces, y cada vez ejecuta una parte del proceso y devuelve su estado actual, hasta que termina.

Cuando ejecutes el importador, Tainacan iterará automáticamente sobre tus pasos. Si un callback de paso devuelve `false`, asume que el paso ha terminado y pasará al siguiente paso en la siguiente iteración. Si la llamada de retorno del paso devuelve un entero, mantendrá el puntero en este paso y volverá a llamar al mismo paso en la siguiente iteración. La posición actual, que es el entero devuelto la última vez que se invocó el callback, será accesible a través del método `$this->get_in_step_count()`.

Vea este ejemplo en el Importador de Pruebas:

```php
public function finish_processing() {
		
	// Lets just pretend we are doing something really important
	$important_stuff = 5;
	$current = $this->get_in_step_count();
	if ($current <= $important_stuff) {
		// This is very important
		sleep(5);
		$current ++;
		return $current;
	} else {
		return false;
	}
	
}
```

#### Añadir colecciones

Si tu importador no utiliza la opción `manual_collection`, puede que tengas que crear la colección por tu cuenta.

Para ello, utiliza la [API interna de Tainacan](internal-api.md).

Después de haber creado una o más colecciones, tendrás que añadirlas a la cola del importador, registrando alguna información sobre ellas. Esto sólo si desea (y lo más probable es que deba) confiar en el paso predeterminado para procesar los elementos en las colecciones.

Para añadir o eliminar una colección de la cola, utilice los métodos `add_collection()` y `remove_collection()` pasando la definición de la colección.

La definición de colección es un array con sus IDs, un identificador de la fuente, el número total de elementos a importar, el array de mapeo desde la estructura fuente al ID de los metadatos en Tainacan.

El formato del mapa es un array en el que las claves son los ID de los metadatos de la colección de destino y los valores son el identificador de la fuente. Este puede ser un ID o una cadena o lo que el importador considere apropiado manejar.

El source_id puede ser cualquier cosa que le guste, que le ayude a relacionar esta colección con su fuente. Se utilizará en el método `process_item` para saber de dónde obtener el elemento.

Ejemplo de la estructura de esta propiedad para una colección:

```php
[
	'id' => 12,
	'mapping' => [
	  30 => 'column1'
	  31 => 'column2'
	],
	'total_items' => 1234,
	'source_id' => 55
]
```

#### Uso de transitorios

Dado que los Importadores se manejan como procesos en segundo plano, se ejecutarán a través de múltiples peticiones. Por esta razón, no puedes simplemente añadir propiedades a tu clase y confiar en que sus valores se mantendrán durante todo el tiempo que el proceso se esté ejecutando.

Si quieres que un valor persista para que puedas utilizarlo en todos los métodos de tu importador, en cualquier momento, debes utilizar `transients` para almacenarlos en la base de datos.

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

Hay dos informaciones que Tainacan Importadores da al usuario sobre el estado del proceso mientras se está ejecutando en la retroalimentación: la `etiqueta de progreso` y el `valor de progreso`. 

La `etiqueta de progreso` es una cadena que puede ser cualquier cosa que le diga al usuario lo que está pasando. Por defecto, es el nombre del paso, pero puede informar de un atributo específico `progress_label` al registrar los pasos.

El `progress value` es un número entre 0 y 100 que indica el progreso del paso actual o de todo el importador. Por defecto, lo calcula automáticamente usando el atributo `total` registrado con los pasos, contra el valor `$this->get_in_step_count()`. En el caso de la llamada de retorno por defecto Process Items, se calcula en base al número de elementos encontrados en cada colección.

Recuerda la llamada de retorno `finish_processing` que vimos en el Importador de Pruebas. También habrás notado que cuando registramos el paso, informamos un atributo `total` a este paso con el valor de 5. Esto le dirá a Tainacan que el número total de iteraciones que este paso necesita completar es 5 y le permitirá calcular el progreso.

Si no es posible conocer el `total` de un paso de antemano, puedes establecerlo en cualquier momento, incluso dentro de la propia llamada de retorno del paso, utilizando los métodos `set_current_step_total($value)` o `set_step_total($step, $value)`.


##### Salida final 

Cuando el proceso finaliza, los procesos de fondo definen una "salida", que es un informe final para el usuario sobre lo ocurrido.

Puede ser simplemente un mensaje que diga "Todo bien", o un informe con los nombres y enlaces a las colecciones creadas. HTML es bienvenido.

Recuerde que para un informe más detallado y técnico, debe utilizar Logs (ver Logs más abajo). Esta salida está pensada como un mensaje corto pero descriptivo y fácil de usar.

Para conseguirlo, los Importadores deben implementar un método llamado `get_output()` que devuelve una cadena.

Este método será llamado sólo una vez cuando el importador finalice, por lo que puede que necesites guardar información usando `transients` durante el proceso y usarlos en `get_output()` para componer tu mensaje.


#### Registros

Existen dos métodos útiles para escribir información en los registros: `add_log()` y `add_error_log()`. Éstos se escriben en un archivo de registro relacionado con el proceso de fondo del importador y se presentará al usuario un enlace al mismo.


## Ejecutar el importador

Finalmente, todo está listo. Se ejecuta el importador.

Esto activará un proceso en segundo plano (documentación necesaria) y el importador ejecutará tantas peticiones en segundo plano como sean necesarias.
