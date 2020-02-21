# Creating a custom Metadata type 

Metadata types are the objects that represent the types of metadata that can be used. Examples of Metadata Types are "Text", "Long text", "Date", "Relationship with another item", etc. Each metadata type object have its own settings and web component that will be used to render the interface. 

Developers can create custom Metadata Types via plugins starting from Tainacan 0.16. This article shows how to do this, divided in the following sections:

* [Registering](#registering-your-metadata-type) your Metadata Type
* Creating the [PHP Class](#creating-the-php-class)
* Creating the [Vue Web Component](#creating-vue-web-component)

## Registering your Metadata Type 

First of all, you have to register your Metadata Type class. You do this by calling the `register_metadata_type` method of the `Metadata Type Helper`, avaialable if the Tainacan plugin is installed. For the simplicity of this article, let us suppose that you are creating a custom version of the existing *Numeric* metadata type, which you'll call "Custom Metadata Type". You might have a main plugin file, named `custom-metadata-type.php` with the following content:

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
	require_once( plugin_dir_path(__FILE__) . 'metadata_type/metadata-type.php' );

	$handle = 'custom-metadata-type';
	$class_name = 'Custom_Metadata_Type';
	$metadata_script_url = plugin_dir_url(__FILE__) . 'metadata_type/metadata-type.js';

	$helper->register_metadata_type($handle, $class_name, $metadata_script_url);
}
?>
```

You can see that we have a folder named "metadata_type" to keep the class and component separate, which is up to you as you prefer to organize the plugin file structure.

## Creating the PHP Class

Now you have to create the class you just register, and use its constructor to set the basic features of you Metadata Type. Lets go slowly by checking the content of `metadata_type/metadata-type.php`:

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

These are the methods you have to call to set up your Metadata Type:

* **set_name(string $name)** - Sets the name of the Metadata type. This is the name the user will see in the front end and should be internationalized with your text domain (`custom-metadata-type`).
* **set_description(string $description)** - Sets the description of the Metadata type. This is the text the user will see in the front end and should be internationalized with your text domain (`custom-metadata-type`).
* **set_primitive(string $type)** - Inform what is the raw type of data that will be stored. This is used mainly by Filter Types to decide what kind of Filters will be available for each Metadata Type. Current used primitive types are: `string`, `date`, `float`, `item`, `term`, and `long_string` (you can create new ones if you want, just note that not all Filter Types may be available to them).
* **set_component(string $component_name)** - The name of the vue component that will be created on the next session. We recommend adding the prefix *tainacan-metadata-type-* to avoid collisions. 
* **set_preview_template(string $template)** - An HTML preview of how the component will look like. This is seen by users inside the tooltip "Metadata Type Preview", when hovering by the Metadata Type button. If you can use [Bulma](https://bulma.io ':ignore') and [Buefy](https://buefy.org/ ':ignore') classes here.  This parameter is not obligatory but can improve user experience.

The last two (**set_form_component** and **set_default_options**) are only needed as we describe bellow:


### Metadata type Options 

When you register a new Metadata Type, it will be automatically added as an option in the Metadata configuration screen. It will also have the default metadata configuration form, where you set whether the metadata is *required* or not, accept *multiple values* or not, and so on.

However, your metadata type may have specific options you want to give to the users. For example: In the Selectbox Metadata type, you can set what will be the options in your Selectbox. In the Numeric Metadata Type, we ant to allow users to decide the *step* for increasing values.

To do this, you have to declare what are the options your metadata type has, and prepare another web component to be rendered in the metadata form:

* **set_form_component(string $component_name)** - The name of the vue component that will be rendered inside the metadata edition form with extra options related to this metadata type. We recommend adding the prefix *tainacan-metadata-form-type-* to avoid collisions.

* **set_default_options(string $component_name)** - An array with custom metadata type options, having their `slug` and initial value. This reflects to the inputs that we'll exist on the Metadata Form Component.

Your form Metadata Form Component shall also include labels that need to be translated. For that, you can use the `get_form_labels` method:

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

Where the title is used as form label and the description is shown inside a tooltip, seen by the user when hovering a **?** icon.

Optionally you can implement the `validate_options` method to validate the form before it gets saved:

```php
class Custom_Metadata_Type extends \Tainacan\Metadata_Types\Metadata_Type {
	
	// ... More above ...
	public function validate_options( Metadatum $metadatum ) {
		
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

`validate_options` is expected to return `true` if valid, and an array where the keys are the option `slug` and the values are the error messages.

### Additional Methods

There are a few other methods you can implement that can change the items interact with metadata depending on the metadata type:

#### **validate( Item_Metadata_Entity $item_metadata)**

This method will override the validation of the Item Metadata Entity, which means every time Tainacan saves a value for metadata of this type, it will call this method. 

For example, the Date Metadata Type overrides [this method](https://github.com/tainacan/tainacan/blob/develop/src/views/admin/components/metadata-types/date/class-tainacan-date.php#L43 ':ignore') to make sure the date is in the correct format. Notice that it takes care of checking whether the value is a string (single value) or an array (multiple values).


#### **get_value_as_html( Item_Metadata_Entity $item_metadata)**

This method will change the way value is converted to HTML for metadata of this metadata type. For example, Taxonomy and Relationship Metadata Type use [this]() and [this](), respectivelly, to add links to the related term/item in the HTML output.

## Creating Vue Web Component

> TODO: explain how to load the web component code.

The Vue component is the chunk that will be rendered inside the Item Edition form so the user can edit its metadata of your custom type. 

As in any Vue component, you should provide a `template` with its HTML content, a `script` with its logic and optionally a `style`. Below are the template and script for the Selectbox metadata type:

```html
<template>
    <b-input
            :disabled="disabled"
            :class="{'has-content': inputValue !== undefined && inputValue !== ''}"
            :id="id"
            type="number"
            :value="inputValue"
            step="0.01"
            @blur="onBlur"
            @change="onBlur"
            @input="onInput($event)"/>
</template>
```

```javascript
<script>
    export default {
        created(){
            if( this.value )
                this.inputValue = this.value;
        },
        data() {
            return {
                inputValue: ''
            }
        },
        props: {
            id: '',
            metadatum: {
                type: Object
            },
            value: [String, Number, Array],
            disabled: false,
        },
        methods: {
            onBlur() {
                this.$emit('blur');
            },
            onInput($event) {
                this.inputValue = $event;
                this.$emit('input', this.inputValue);
            }
        }
    }
</script>
```

Notice first the "props" on the component. They are passed to every metadata:
- `metadatum` is the metadatum object itself, which also contains the `metadata_type_options`;
- `value` is the value used for binding whatever is the content of this metadatum;
- `id` is the metadatum id;
- `disabled` is a boolean handled by the Item's form, which can be used to disable any inner component in case the options are not loaded and other situations that might be desired;

The "data" here has only a copy of the input value, passed during the `created()` lifecycle. Props are usually not to be modified so we use this as an internal variable.

The "methods" here simply delegate the blur and input events to the default parent component, which is responsible for passing these values to the Item's form. **Attention: every metadatum component must emit an input value, passing the updated value that they received from the props**.
 
In the above example, a custom component from [Buefy](https://buefy.github.io/), `b-input` is used. You can use any javascript available from your plugin here, or just try out theirs, as it's already loaded on Tainacan's plugin. The styling also comes from this library, inheriting [Bulma](http://bulma.io/), and it's recommended the use of their classes as most are override by Tainacan stylesheets. 