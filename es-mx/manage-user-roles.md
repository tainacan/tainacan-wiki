# Gestión de las funciones de los usuarios

Desde la versión 0.15 de Tainacan, es posible configurar **roles de usuario** con respecto a [permisos de Tainacan](/es-mx/capabilities.md). Esto facilita limitar el acceso de los editores de _Tainacan_ a ciertas configuraciones o incluso dar a los _autores_ de tu sitio WordPress ciertos permisos de edición en el panel de administración de tu repositorio.

Esta función está disponible a través del menú del plugin, al que se puede acceder desde el menú lateral del panel de administración de WordPress:

![Pantalla de gestión de roles de usuario](_assets/images/manage-user-roles-1.png)

Sólo los usuarios que tengan el permiso [Gestionar permisos de usuario](/es-mx/capabilities#repositorio-general) pueden acceder a esta pantalla.

## Permisos de WordPress vs. Permisos de Tainacan

Tenga en cuenta que además de los roles de usuario creados para Tainacan, también se enumeran los roles estándar de WordPress. No puede eliminar estos roles y el control de los permisos realizados sólo se referirá a Tainacan. Para gestionar otros permisos por rol, como "Editar entradas", "Cambiar tema", existen plugins específicos de WordPress. Aquí sólo trataremos lo que afecta a Tainacan.

Con esta división, tus usuarios que sólo tengan roles de Tainacan no tendrán acceso a otros permisos del sitio, lo que puede decidirse otorgando al usuario más de un rol, o asignando a los roles de WordPress permisos de Tainacan.

## Editar un rol de usuario

Pulsando _Editar_ en cualquiera de los roles anteriores, aparecerá la siguiente pantalla:

![Pantalla de configuración de roles de usuario en la pestaña del repositorio](_assets/images/manage-user-roles-2.png)

Además del nombre, puede marcar en las casillas qué permiso está asignado a ese rol de usuario. Tenga en cuenta que, como se explica en la página [permisos](/es-mx/capabilities), algunos permisos afectan a otros. El permiso "Gestionar Tainacan", en este caso, ya otorga al rol todos los demás permisos por defecto.

En la pestaña "Colecciones", podemos gestionar no sólo los permisos que afectan a todas las colecciones, sino también especificar para determinadas colecciones si habrá o no un permiso para ese rol:

![Pantalla de configuración del rol de usuario en la pestaña de Colecciones](_assets/images/manage-user-roles-3.png)

En este caso, cualquier permiso que esté marcado para todas las colecciones afectará al permiso del mismo nombre cuando se cambie a las colecciones específicas.

## Creación de funciones desde cero, o a partir de otras

<div style="float: right; margin-left: 32px;">

![Crear una función de usuario a partir de otra](_assets/images/manage-user-roles-4.png ":size=220")

</div>

Puede ser conveniente crear un nuevo rol de usuario con permisos muy específicos. En este caso, simplemente haga clic en "Nuevo Rol" en el botón situado en la parte superior izquierda de la pantalla de Roles de Usuario. Esto creará un rol limpio, sin ningún permiso.

Sin embargo, si desea crear una función con permisos muy similares a los de un "Editor", con algunas excepciones, puede tomar una ruta más simple: simplemente haga clic en la flecha para utilizar una función existente como _modelo_. La nueva función tendrá ahora los mismos permisos que el modelo que eligió al principio.

## Establecer permisos específicos

El proceso descrito en esta página le lleva a través de una ruta de configuración en el siguiente flujo:

> Rol de Usuario > Permiso > Repositorio > Colección

Esto funciona bien para la mayoría de los casos. Sin embargo, puede haber situaciones en las que desee eliminar o añadir un permiso para un rol específico en una colección. En este caso, un flujo más interesante sería:

> Colección > Permiso > Rol de usuario

Para saber cómo hacerlo, consulte la documentación sobre cómo [Gestionar permisos específicos](/es-mx/manage-specific-capabilities.md)
