# Normas de Mapeo

Las normas de mapeo son declaraciones de estándares de metadatos. Una vez que están disponibles y activadas en su repositorio, puede mapear los metadatos de sus colecciones a ellas.

## Estructura

Una Norma de Mapeo tiene los siguientes atributos.

### Nombre

```php
String $name
```

El nmombre de las Normas del Mapeo

### Metadatos

```php
Array o falso $metadata
```

Una lista de metadatos, términos o atributos que tiene este mapeo. Estos son los elementos con los que podrá mapear los metadatos de su colección.

Cada metadato tiene los siguientes atributos:

* `slug` - El nombre del metadato, que hace referencia al nombre del atributo en el vocabulario u ontología de origen (por ejemplo, título).
* `label` - El nombre legible por humanos
* `URI` - URI de este término/atributo en la ontología/vocabulario de origen.
* `metadata_type` - tipo preferido para el metadato.
  
Array de:
```php
['slug'] => [
	'URI' => 'http://...',
	'label' => 'Label',
	'metadata_type' => 'date',
]
```

### Permitir metadatos personalizados adicionales

	Booleano $allow_extra_metadata

Booleano que indica si esta asignación permite añadir metadatos personalizados adicionales.

### Context URL / Vocab URL

	String $context_url

La URL de la ontología o vocabulario. Por ejemplo `http://schema.org` o  `http://dublincore.org/documents/dcmi-terms/`

### Tipo

	String $type

La clase de la ontología a la que se refiere esta asignación. Por ejemplo `CreativeWork`, que es una clase de Schema.org, si se aplica

### Cabecera

	String $header

La cabecera a añadir a la respuesta API, como para Dublin Core, si necesitamos añadir RDF a la cabecera xml cuando usamos Dublin Core como mapeador, entonces:
```php
public $header = '<?xml version="1.0"?><!DOCTYPE rdf:RDF SYSTEM "http://dublincore.org/2000/12/01-dcmes-xml-dtd.dtd"><rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" ></rdf:RDF>';
```

### Prefijo

	String $prefix
	
El prefijo opcional para las etiquetas de las claves, como `dc:` para Dublin Core en la exposición XML. 

### Registrar un nuevo mapeador
Para registrar un nuevo mapeador, la acción debe añadirse al hook `tainacan-register-mappers`, como por ejemplo:
```php
	function myNewMapper($exposers) {
		$exposers->register_exposer_mapper('Tainacan\Exposers\Mappers\NewMapper');
	}
	add_action('tainacan-register-mappers', 'myNewMapper');
```

## Ejemplos

```php
namespace Tainacan\Exposers\Mappers;

/**
 * Support Dublin Core Mapping 
 * http://purl.org/dc/elements/1.1/
 *
 */
class Dublin_Core extends Mapper {
	public $slug = 'dublin-core';
	public $name = 'Dublin Core';
	public $allow_extra_metadata = true;
	public $context_url = 'http://dublincore.org/documents/dcmi-terms/';
	public $header = '<?xml version="1.0"?><!DOCTYPE rdf:RDF SYSTEM "http://dublincore.org/2000/12/01-dcmes-xml-dtd.dtd"><rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" ></rdf:RDF>';
	public $prefix = 'dc:';
	public $metadata = [
		'contributor' => [
			'URI' => 'http://purl.org/dc/elements/1.1/contributor',
			'label' => 'Contributor'
		],
		'coverage' => [
			'URI' => 'http://purl.org/dc/elements/1.1/coverage',
			'label' => 'Coverage'
		],
		'creator' => [
			'URI' => 'http://purl.org/dc/elements/1.1/creator',
			'label' => 'Creator'
		],
	...
```

```php
namespace Tainacan\Exposers\Mappers;

class CreativeWorks extends Mapper {
	public $name = 'Schema.org Creative Works';
	public $slug = 'creative-works';
	public $metadata = [
		'name' => [
			'label': 'Name',
			'URI': 'http://schema.org/name'
		],
		'alternativeHeadline' => [
			'label': 'Alternative Headline',
			'URI': 'http://schema.org/alternativeHeadline'
		],
		... And so on...
	],
	public $allow_extra_fields = false;
	public $context_url = 'http://schema.org';
	public $type = 'CreativeWork';
}
```
