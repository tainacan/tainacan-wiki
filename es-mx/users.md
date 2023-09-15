> Esta página se refiere al esquema de permisos de usuario en **las versiones de Tainacan anteriores a la 0.15**. Recomendamos encarecidamente el uso de versiones más recientes, donde los permisos de usuario funcionan según [esta documentación](/es-mx/users-roles).

<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Usuários" 
		src="_assets/images/icon_users.png"
		width="40"
		height="40">
</div>

# Usuarios

## Permisos de usuario en Tainacan

Este artículo explica cómo se gestionan los permisos en Tainacan, así como qué roles de usuario están disponibles y qué puede hacer cada uno de ellos.

Tainacan maneja los permisos de usuario de la misma manera que [WordPress](https://codex.wordpress.org/es-mx:Pap%C3%A9is_e_Capacidades). Si estás acostumbrado a los roles y permisos de WordPress, ¡estás a mitad de camino!

Las funciones estándar de WordPress se asignan con nuevas características para trabajar con colecciones, artículos y otras operaciones específicas de Tainacan. Además, Tainacan crea nuevos roles, relacionados con los roles de WordPress, que tienen las mismas características específicas de Tainacan pero no tienen acceso al resto del panel de administración de WordPress.

> Por ejemplo: el _Editor en WordPress_ puede gestionar todo dentro de Tainacan, también puede crear y publicar páginas en el sitio; en cambio, los _editores en Tainacan_ no pueden hacer esto en el sitio.

Si desea cambiar los permisos para roles o usuarios específicos, o incluso crear nuevos roles, puede utilizar plugins dedicados disponibles para WordPress.

En resumen, estos son los roles y sus principales características. Puede encontrar una descripción detallada en la [siguiente sección](/es-mx/users#funciones-y-permisos).

- **Suscriptor** - _Suscriptor_: No puede realizar acciones dentro de Tainacan.
- **Colaborador** - _Colaborador_: Puede crear colecciones y elementos pero no puede publicar.
- **Autor / Tainacan Author**: Puede crear y publicar colecciones e ítems, pero no puede editar los ítems publicados ni editar los ítems de otros usuarios.
- **Editor / Editor en Tainacan** - _Editor / Editor en Tainacan_: Puede crear, publicar y editar ítems y colecciones, incluyendo los de otros usuarios.
- **Administrador** - Tiene poderes administrativos sobre el sitio, el repositorio, sus ítems y contenidos, e incluso puede activar y desactivar plug-ins como Tainacan.

---

## Funciones y permisos

Aquí encontrarás la documentación detallada de cada función y sus permisos en cada parte de Tainacan.

<!-- tabs:start -->

#### ** Colecciones **

### Colecciones

> Nota sobre los moderadores de colecciones: **Los moderadores de colecciones** tienen los mismos permisos que un **editor**, pero sólo sobre las colecciones específicas asignadas a ese usuario. Aunque el usuario sea un **suscriptor**, si está asignado como **editor** de una colección, tendrá permisos de **editor** sobre ella.

|                            | Administrador | Editor | Autor | Colaborador |
| -------------------------- | ------------- | ------ | ----- | ----------- |
| Editar colecciones            | x             | x      | x     |             |
| Eliminar colecciones   | x             | x      | x     |             |
| Publicar colecciones          | x             | x      | x     |             |
| Editar colecciones publicadas | x             | x      | x     |             |
| Editar otras colecciones     | x             | x      |       |             |
| Eliminar otras colecciones    | x             | x      |       |             |
| Acceder a colecciones privadas  | x             | x      |       |             |
| Editar colecciones privadas   | x             | x      |       |             |
| Eliminar colecciones privadas  | x             | x      |       |             |

#### Publicar colecciones

Le permite publicar su propia colección.

| Nombre del permiso | Quién puede hacerlo                                                                  |
| ------------------------------ | -------------------------------------------------------------------------------- |
| `publish_tainacan-collections` | _Administradores, Editores, Editores en Tainacan, Autores y Autores en Tainacan_ |

#### Editar colecciones

Le permite crear y editar detalles de su propia colección, pero no le permite publicarla.

| Nombre del permiso | Quién puede hacerlo                           |
| --------------------------- | ----------------------------------------- |
| `edit_tainacan-collections` |_Todos excepto Suscriptores y Colaboradores_ |

#### Editar outras Coleções

Le permite editar detalles de las colecciones de otros usuarios

| Nombre del permiso | Quién puede hacerlo                                    |
| ---------------------------------- | -------------------------------------------------- |
| `edit_others_tainacan-collections` | _Administradores, Editores y Editores en Tainacan_ |

#### Editar Coleções publicadas

Permite editar los detalles de la colección después de que se hayan publicado

| Nombre del permiso | Quién puede hacerlo                                    |
| ------------------------------------- | -------------------------------------------------- |
| `edit_published_tainacan-collections` | _Administradores, Editores y Editores en Tainacan_ |

#### Editar colecciones privadas

Le permite editar los detalles de las colecciones marcadas como privadas.

| Nombre del permiso | Quién puede hacerlo                                    |
| ----------------------------------- | -------------------------------------------------- |
| `edit_private_tainacan-collections` | _Administradores, Editores y Editores en Tainacan_ |

#### Deletar Coleções

Le permite eliminar sus propias colecciones.

| Nombre del permiso | Quién puede hacerlo                           |
| ----------------------------- | ----------------------------------------- |
| `delete_tainacan-collections` | Todos excepto suscriptores y colaboradores_ |

#### Borrar otras colecciones

Le permite eliminar las colecciones de otros usuarios

| Nombre del permiso | Quién puede hacerlo                                    |
| ------------------------------------- | -------------------------------------------------- |
| `delete_others_tainacan-collections`r | _Administradores, Editores y Publicadores sobre Tainacan_ |

#### Borrar colecciones publicadas

Permite eliminar colecciones una vez publicadas:

| Nombre del permiso | Quién puede hacerlo                                    |
| --------------------------------------- | -------------------------------------------------- |
| `delete_published_tainacan-collections` | _Administradores, Editores y Editores en Tainacan_ |

#### Acceder a colecciones privadas

Permite acceder a las colecciones marcadas como privadas:

| Nombre del permiso | Quién puede hacerlo                                    |
| ----------------------------------- | -------------------------------------------------- |
| `read_private_tainacan-collections` | _Administradores, Editores y Editores en Tainacan_ |

#### Borrar colecciones privadas

Permite eliminar colecciones marcadas como privadas

| Nombre del permiso | Quién puede hacerlo                                    |
| ------------------------------------- | -------------------------------------------------- |
| `delete_private_tainacan-collections` | _Administradores, Editores y Editores en Tainacan_ |

#### ** Elementos **

### Elementos

Esta sección explica los permisos relacionados con la gestión de ítems en el repositorio.

Cada usuario de Tainacan tiene asignado un conjunto de permisos para cada colección del repositorio, según su [Rol](/es-mx/users#funciones-y-permisos).

Los permisos son independientes para cada colección. Por lo tanto, dependiendo del caso, un usuario puede ser Editor en una colección pero no tener esos mismos permisos en otra colección.

Los permisos para una colección específica se pueden asignar añadiendo a este usuario como moderador en la colección deseada. En este caso, el usuario tendrá los mismos derechos que un Editor, pero sólo en esta colección especificada.

> También es posible utilizar un plugin de WordPress y controlar los permisos de cada usuario en cada colección de forma modular.

En la siguiente descripción encontrará las características de cada permiso aplicado a cada colección. Cada usuario y rol tiene un conjunto de 10 permisos en cada colección.

|                         | Administrador | Editor | Autor | Colaborador |
| ----------------------- | ------------- | ------ | ----- | ----------- |
| Editar elementos            | x             | x      | x     | x           |
| Eliminar elementos           | x             | x      | x     | x           |
| Publicar elementos          | x             | x      | x     |             |
| Editar elementos publicados | x             | x      | x     |             |
| Editar otros elementos     | x             | x      |       |             |
| Eliminar otros elementos    | x             | x      |       |             |
| Acceder a elementos privados  | x             | x      |       |             |
| Editar elementos privados   | x             | x      |       |             |
| Eliminar elementos privados  | x             | x      |       |             |

#### Publicar elementos

Le permite publicar sus propios elementos.

| Nombre del permiso | Quién puede hacerlo                                                               |
| ------------------------------- | ------------------------------------------------------------------------------- |
| `publish_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan Autores y Autores en Tainacan_ |

#### Editar elementos

Le permite crear y editar sus propios elementos, pero no le permite publicarlos.

| Nombre del permiso | Quién puede hacerlo           |
| ---------------------------- | ------------------------- |
| `edit_%collection_id%_items` | Todos excepto los suscriptores |

#### Editar otros elementos

Permite editar los elementos de otros usuarios

| Nombre del permiso | Quién puede hacerlo                                   |
| ----------------------------------- | ------------------------------------------------- |
| `edit*others*%collection_id%\_items | _Administradores, Editores, Editores en Tainacan_ |

#### Editar artículos publicados

Permite editar elementos después de que hayan sido publicados

| Nombre del permiso | Quién puede hacerlo                                   |
| -------------------------------------- | ------------------------------------------------- |
| `edit_published_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan_ |

#### Editar elementos privados

Permite editar elementos marcados como privados

| Nombre del permiso | Quién puede hacerlo                                 |
| ------------------------------------ | ----------------------------------------------- |
| `edit_private_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan_ |

#### Editar elementos privados

Permite editar elementos marcados como privados

| Nombre del permiso | Quién puede hacerlo             |
| ------------------------------ | ------------------------- |
| `delete_%collection_id%_items` | _Todos excepto los suscriptores_ |

#### Borrar otros elementos

Le permite eliminar elementos de otros usuarios.

| Nombre del permiso | Quién puede hacerlo                                   |
| ------------------------------------- | ------------------------------------------------- |
| `delete_others_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan_ |

#### Eliminar artículos publicados

Le permite eliminar elementos una vez que han sido publicados

| Nombre del permiso | Quién puede hacerlo                                   |
| ---------------------------------------- | ------------------------------------------------- |
| `delete_published_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan_ |

#### Acceder a elementos privados

Permite el acceso a elementos marcados como privados

| Nombre del permiso | Quién puede hacerlo                                   |
| ------------------------------------ | ------------------------------------------------- |
| `read_private_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan_ |

#### Borrar elementos privados

Le permite borrar elementos marcados como privados

| Nombre del permiso | Quién puede hacerlo                                   |
| -------------------------------------- | ------------------------------------------------- |
| `delete_private_%collection_id%_items` | _Administradores, Editores, Editores en Tainacan_ |

#### ** Taxonomías **

### Taxonomías

?> _TODO_ Permisos de taxonomía de documentos

#### ** Metadatos **

### Metadatos

?> _TODO_ Permisos de metadatos del documento

#### ** Filtros **

### Filtros

?> _TODO_ Permisos de filtro del documento

<!-- tabs:end -->
