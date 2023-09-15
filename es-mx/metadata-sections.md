# Secciones de metadatos


A partir de la versión 0.19, Tainacan cuenta con el recurso **Secciones de metadatos**. Proporcionan una forma de organizar largas listas de metadatos en agrupaciones visuales y estructurales que facilitan el proceso de catalogación de los datos de un ítem o elemento. En el panel de administración, las secciones de metadatos se muestran como paneles plegables, pero en la página pública de un elemento se pueden mostrar de diferentes maneras, dependiendo de la configuración del tema. Pueden, por ejemplo, mostrarse como pestañas, o dar prioridad a alguna sección dándole más prominencia visual que a otra.

En este artículo describimos:

- Las [características generales](#características-de-las-secciones-de-metadatos) de una sección de metadatos;
- Cómo [crear y editar](#crear-y-editar-secciones) una sección de metadatos;
- Cómo [eliminar una sección](#eliminación-de-secciones) de metadatos;
- Cómo [ver la sección de metadatos](#visualización-de-secciones-en-la-página-del-elemento) en la página pública del artículo;

Si todavía no estás familiarizado con el concepto y el flujo de edición de metadatos, [consulta la sección Metadatos](/es-mx/metadata.md).

## Características de las secciones de metadatos

- Cada sección tiene un **Nombre** y una **Descripción**, que se mostrarán en la página de llenado de información del ítem, si están configurados;
- Cada colección ya tiene una sección desde el momento de su creación, la llamada **Sección estándar**, cuyo nombre inicial es **“Metadatos”**. La **sección estándar no se puede eliminar** y su privacidad siempre está ligada a la privacidad de la colección. Otras secciones pueden ser públicas o privadas y este estatus se aplica también a la privacidad de los metadatos que contiene la sección.
- Las secciones pueden desactivarse, lo que implica que sus metadatos no se mostrarán al visualizar o al capturar la información de los elementos, aunque los datos seguirán existiendo;
- Las secciones pueden tener un número indefinido de metadatos dentro de ellas, y estos pueden intercambiarse de una sección a otra en cualquier momento;
- Las secciones **solo pueden eliminarse cuando no contienen metadatos**;
- El orden de las secciones puede modificarse;
- **No hay secciones en la configuración de metadatos a nivel de repositorio**. Cuando se heredan en colecciones, los metadatos del repositorio aparecerán en la **sección estándar**. Desde allí pueden ordenarse en otras secciones si es necesario.

## Crear y editar secciones

Como se mencionó anteriormente, a diferencia de los metadatos, la sección solo existe a nivel de colección. También existe la llamada sección estándar, que ya existe por defecto en cada colección. Para crear una nueva sección, debe:

1. Acceder a la página de configuración de metadatos de una colección.
2. Debajo de la lista de "Tipos de metadatos disponibles" aparecerá el botón "Crear nueva sección de metadatos". Se puede hacer clic en él o arrastrarlo y soltarlo en las regiones entre secciones.
3. Al hacer clic, aparecerá el formulario de edición de la sección, donde es necesario completar al menos el nombre de la Sección. Los demás campos son opcionales.
4. Debajo del título de la sección creada, estará disponible un área nueva que puede recibir metadatos. A esta zona se pueden llevar nuevos metadatos (arrastrando dentro de la sección los tipos de metadatos que se requieran), así como metadatos ya existentes, procedentes de la sección estándar o de otras creadas previamente.
5. El orden entre las secciones se puede cambiar moviéndolas con arrastrar y soltar, o usando las flechas que están al lado del ícono de arrastrar.

## Eliminación de secciones

La eliminación de secciones solo se puede hacer si esta no es la sección predeterminada y si no hay metadatos dentro de ella.

1. Primero, elimina o borra los metadatos existentes en la sección deseada;
2. Después, haz clic en el botón de la papelera situado en la esquina derecha de la sección;

## Visualización de secciones en la página del elemento

En el panel de administración de Tainacan, las secciones se ven como divisores de jerarquía superior en la lista de metadatos de la página del elemento. En la página de edición del elemento, estos divisores pueden incluso colapsarse, ocultando así todos sus metadatos. En la página pública del elemento, sin embargo, hay varias formas de ver una sección. Corresponde a los [desarrolladores de temas](/es-mx/dev/creating-compatible-themes) implementar estas secciones, haciendo uso de las [funciones que cargan las secciones](https://github.com/tainacan/tainacan/blob/develop/src/classes/theme-helper/template-tags.php ":ignore"). Si no se tiene este cuidado, los metadatos se mostrarán sin separar las funciones, aunque siempre respetando el orden en que se encuentran en las secciones. Afortunadamente, tanto para la [interfaz de Tainacan](/es-mx/theme.md#tainacan-interface), como para [Blocksy](/es-mx/theme.md#tainacan-interface), ya se han implementado algunas vistas de ejemplo. Las siguientes demostraciones utilizan el tema de la interfaz de Tainacan, pero es importante saber que las secciones no se limitan a este tema:

1. Con el tema interfaz de Tainacan activado, ve a la configuración de tu colección.
2. En el formulario de configuración, habrá un área gris con los ajustes del tema. Elige allí qué diseño desea utilizar para mostrar las secciones. Las opciones son:
   1. Predeterminado: una división simple con sangría y una línea que separa las secciones;
   2. Pestañas: cada sección está contenida en una pestaña;
   3. Colapsables: cada sección está en un panel colapsable, similar a cómo se comporta en el editor. Se pueden abrir    varios paneles a la vez, pero solo el primero estará al inicio;
   4. Acordeón: es igual a los paneles colapsables, pero solo se puede abrir uno a la vez;
3. Guarda la configuración y accede a la página pública del elemento de su sitio con el tema activado.
