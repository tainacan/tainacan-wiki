?> _NOTICE_ Esta página describe la estructura de roles y capacidades para versiones de Tainacan anteriores a la 0.15. Si utilizas versiones anteriores, consulta la página [Roles y Capacidades](/es-mx/dev/roles-capabilities.md).

# Permisos de los usuarios de Tainacan

Esta página explica cómo se manejan los permisos en Tainacan, cuáles son los roles de usuario disponibles y qué puede hacer cada uno de ellos.

Tainacan maneja los permisos de usuario de la misma manera que WordPress, así que si estás acostumbrado a los Roles y Permisos de WordPress, no tendrás ningún problema.

A los roles por defecto de WordPress se les asignan nuevas capacidades para trabajar con Colecciones, Ítems y otras operaciones específicas de Tainacan. Adicionalmente Tainacan crea nuevos roles, relativos a los roles principales de WordPress, que tienen las mismas capacidades específicas de Tainacan pero no tienen acceso al resto del panel administrativo de WordPress. Por ejemplo, el Editor de WordPress puede administrar todo dentro de Tainacan, y también pueden crear y publicar páginas, por otro lado, los Editores de Tainacan no pueden.

Si desea cambiar los permisos para roles o usuarios específicos, o incluso crear nuevos roles, siempre puede utilizar uno de los muchos plugins de WordPress disponibles para ello.

En resumen, estos son los roles y sus principales características. Puede encontrar una descripción detallada en la siguiente sesión. 

* Suscriptor: Realmente no puede hacer nada dentro de Tainacan.
* Colaborador / Colaborador de Tainacan: Puede crear colecciones y artículos, pero no publicarlos.
* Autor / Tainacan Autor: Puede crear y publicar colecciones e ítems, pero no puede editar los ítems publicados ni editar los ítems de otros usuarios.
* Editor / Tainacan Editor: Puede crear, publicar y editar colecciones e ítems de otros usuarios.
* Administrador: Gobierna el mundo.

## Roles y permisos

Aquí encontrarás una explicación detallada de lo que cada rol puede hacer con cada parte de Tainacan.

### Colecciones

Estas son las capacidades relacionadas con la gestión de colecciones.

**Nota sobre los moderadores de colecciones**: Los moderadores de colecciones tienen las mismas capacidades que un editor, pero sólo sobre las colecciones que modera. Aunque el usuario sea un suscriptor, actuará como si fuera un editor para esa colección en concreto.

|                              | Admin | Editor | Autor | Colaborador |
|------------------------------|-------|--------|--------|--------------|
| Editar colecciones             | y     | y      | y      |              |
| Eliminar colecciones           | y     | y      | y      |              |
| Publicar colecciones          | y     | y      | y      |              |
| Editar colecciones publicadas   | y     | y      | y      |              |
| Eliminar colecciones publicadas | y     | y      | y      |              |
| Editar otras colecciones      | y     | y      |        |              |
| Borrar otras colecciones    | y     | y      |        |              |
| Leer colecciones privadas     | y     | y      |        |              |
| Editar colecciones privadas     | y     | y      |        |              |
| Borrar colecciones privadas   | y     | y      |        |              |

#### Editar colecciones

> Nombre de la función: edit_tainacan-collections
Quién la tiene Todo el mundo excepto suscriptores y colaboradores

Permite crear y editar los datos de las colecciones propias. No permite publicarlas.

#### Editar otras colecciones

> Nombre de la función: edit_others_tainacan-collections
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite editar los detalles de las Colecciones de otros usuarios.

#### Editar colecciones publicadas

> Nombre de la Capacidad: edit_published_tainacan-collections
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite editar los detalles de las colecciones una vez publicadas.

#### Editar colecciones privadas

> Nombre de la funcionalidad: edit_private_tainacan-collections
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite editar los detalles de las colecciones marcadas como privadas.

#### Publicar colecciones

> Nombre de la función: publish_tainacan-collections
Quién la tiene: Administradores, Editores, Editores Tainacan, Autores y Autores Tainacan

Permite publicar colecciones propias.

#### Borrar colecciones

> Nombre de la funcionalidad: delete_tainacan-collections
Quién la tiene Todos excepto suscriptores y colaboradores

Permite eliminar las colecciones propias.

#### Borrar colecciones ajenas

> Nombre de la funcionalidad: delete_others_tainacan-collections
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite borrar las Colecciones de otros usuarios.

#### Borrar colecciones publicadas

> Nombre de la Capacidad: delete_published_tainacan-collections
Quién la tiene: Administradores, Editores y Editores de Tainacan

Permite eliminar colecciones una vez publicadas.

#### Borrar colecciones privadas

> Nombre de la funcionalidad: delete_private_tainacan-collections
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite borrar colecciones marcadas como privadas.

#### Leer colecciones privadas

> Nombre de la funcionalidad: read_private_tainacan-collections
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite ver las colecciones marcadas como privadas y sus ítems.

### Ítems

Estas son las capacidades relacionadas con la gestión de ítems.

A cada usuario en tainacan se le otorga un conjunto de capacidades, para cada colección en el repositorio, dependiendo de su rol.

Las capacidades son independientes para cada colección. Así, un usuario puede ser editor en una colección pero no tener ningún derecho en otra.

Se pueden conceder permisos a una colección específica a un usuario añadiéndole como moderador de la colección. En ese caso, tendrá los mismos derechos que un editor, pero sólo para esa colección específica.

Además, puede utilizar un plugin de WordPress para tener un control granular de las capacidades de cada usuario en cada colección.

En la siguiente descripción encontrará las características de todas las capacidades que se aplican para cada colección. Cada usuario y rol tiene un conjunto de todas estas 10 capacidades para cada colección.

|                        | Admin | Editor | Autor | Colaborador |
|------------------------|-------|--------|--------|--------------|
| Eliminar elementos             | y     | y      | y      | y            |
| Delete Items         | y     | y      | y      | y            |
| Publicar elementos          | y     | y      | y      |              |
| Editar elementos publicados   | y     | y      | y      |              |
| Eliminar elementos publicados | y     | y      | y      |              |
| Editar otros elementos     | y     | y      |        |              |
| Borrar otros elementos   | y     | y      |        |              |
| Leer elementos privados     | y     | y      |        |              |
| Editar elementos privados     | y     | y      |        |              |
| Borrar elementos privados   | y     | y      |        |              |

#### Editar elementos

> Nombre de la función: edit_%collection_id%_items
Quién la tiene Todos menos los suscriptores

Permite crear y editar los propios artículos. No permite publicarlos.

#### Editar otros elementos

> Nombre de la función: edit_others_%collection_id%_items
Quién la tiene: Administradores, Editores y Editores de Tainacan

Permite editar elementos de otros usuarios.

#### Editar elementos publicados

> Nombre de la funcionalidad: edit_published_%collection_id%_items
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite editar elementos después de haber sido publicados.

#### Editar elementos privados

> Nombre de la funcionalidad: edit_private_%collection_id%_items
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite editar elementos marcados como privados.

#### Publicar elementos

> Nombre de la funcionalidad: publish_%collection_id%_items
Quién la tiene: Administradores, Editores, Editores de Tainacan, Autores y Autores de Tainacan

Permite publicar Elementos propios.

#### Eliminar elementos

> Nombre de la funcionalidad: delete_%collection_id%_items
Quién la tiene Todos menos los suscriptores

Permite eliminar los elementos propios.

#### Eliminar otros elementos

> Nombre de la función: delete_others_%collection_id%_items
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite borrar elementos de otros usuarios.

#### Borrar elementos publicados

> Nombre de la funcionalidad: delete_published_%collection_id%_items
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite borrar elementos después de haber sido publicados.

#### Borrar elementos privados

> Nombre de la funcionalidad: delete_private_%collection_id%_items
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite borrar elementos marcados como privados.

#### Leer elementos privados

> Nombre de la funcionalidad: read_private_%collection_id%_items
Quién la tiene Administradores, Editores y Editores de Tainacan

Permite ver los elementos marcados como privados y sus ítems.


### Taxonomías

### Metadatos

### Filtros
