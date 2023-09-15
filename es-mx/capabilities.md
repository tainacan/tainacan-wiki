# Niveles de acceso a Tainacan

Los niveles de permisos de Tainacan se dividen en dos niveles: _repositorio_ y _colecciones_. La principal diferencia es que los niveles de permisos de colección pueden referirse a todas las colecciones del repositorio o a cada colección en particular.

Algunos niveles de permisos pueden conceder acceso equivalente a otros, ya que se consideran "superniveles". Por ejemplo, un usuario que tenga el nivel "Gerencia de Tainacan" no necesita tener ningún otro nivel, ya que éste le da acceso a todos los recursos. Vea sus descripciones a continuación:

<!-- tabs:start -->

### ** Nivel de repositorio **

## Repositorio

### Repositorio General

| Nombre | Descripción                                                               |
| -------------------------------- | ------------------------------------------------------------------------- |
| Gestión de Tainacan               | Gestionar todos los recursos y colecciones de Tainacan               |
| Gestionar los permisos de usuario | [Gestionar las funciones y los permisos de los usuarios](/es-mx/manage-user-roles.md) |

### Taxonomías

| Nombre | Descripción                                               |
| ---------------------------- | ------------------------------------------------------- |
| Editar taxonomías            | Crear y editar taxonomías y sus términos                 |
| Eliminar taxonomías           | Eliminar taxonomías y sus términos                        |
| Editar taxonomías de otros  | Editar taxonomías y términos creados por otros usuarios  |
| Eliminar Taxonomías de Otros | Eliminar taxonomías y sus términos |
| Ver Taxonomias Privadas      | Acceder a taxonomías privadas y sus términos               |

### Metadatos

| Nombre                   | Descripción                                       |
| ---------------------- | ----------------------------------------------- |
| Editar Metadatos       | Crear y editar metadatos a nivel de repositorio      |
| Eliminar Metadatos      | Eliminar metadatos a nivel de repositorio       |
| Ver Metadatos Privados | Acceso a metadatos privados a nivel de repositorio |

### Filtros

| Nombre                 | Descripción                                     |
| -------------------- | --------------------------------------------- |
| Editar Filtros       | Crear y editar filtros a nivel de repositorio      |
| Eliminar Filtros      | Eliminar filtros a nivel de repositorio            |
| Ver Filtros Privados | Acceso a filtros privados a nivel de repositorio |

### Actividades

| Nombre           | Descripción                                                                                                                                     |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| Ver Actividades | Acceda a los registros de actividades y a los eventos del sistema. Tenga en cuenta que las actividades pueden contener información de colecciones, artículos y taxonomías privadas. |

#### ** Nivel de la colección **

## Colecciones

Los permisos a nivel de colección existen en dos instancias: **general**, que afecta a todas las colecciones, y **específico**, que afecta sólo a una colección. De esta forma, es posible configurar roles de usuario que tengan acceso a todas las colecciones o sólo a unas pocas. Por lo tanto, todos los permisos siguientes pueden variar en estas instancias:

### Colección

| Nombre | Descripción                                                                                                                                                                              |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Gestionar la colección                | Configurar la colección y gestionar todos sus elementos, metadatos y filtros                                                                                                       |
| Gestionar los permisos de usuario | Gestionar las funciones y los permisos de los usuarios en relación con esta colección                                                                                                          |
| Editar elementos de forma masiva            | Realiza operaciones masivas de edición o adición en los artículos de esta colección. Tenga en cuenta que sin otros permisos como "Editar artículo" o "Editar artículos de otros", este permiso no tendrá ningún efecto. |

### Metadatos

| Nombre                   | Descripción                                   |
| ---------------------- | ------------------------------------------- |
| Editar Metadatos       | Crear y editar metadatos en esta colección      |
| Eliminar Metadatos      | Eliminar metadatos de esta colección             |
| Ver Metadatos Privados | Acceda a los metadatos privados de esta colección |

### Filtros

| Nombre                 | Descripción                              |
| -------------------- | -------------------------------------- |
| Editar Filtros       | Crear y editar filtros en esta colección   |
| Eliminar Filtros      | Eliminar filtros en esta colección          |
| Ver Filtros Privados | Acceder a filtros privados en esta colección |

### Elementos

| Nombre                     | Descripción                                               |
| ------------------------ | ------------------------------------------------------- |
| Editar elementos             | Crear y editar elementos en esta colección                    |
| Eliminar elementos            | Eliminar elementos en esta colección                                |
| Editar elementos de otros   | Editar elementos creados por otros usuarios en esta colección   |
| Editar elementos publicados  | Editar elementos publicados en esta colección                 |
| Eliminar elementos de otros  | Eliminar elementos creados por otros usuarios en esta colección  |
| Eliminar elementos publicados | Eliminar elementos publicados en esta colección                  |
| Ver elementos privados       | Acceder a elementos privados de esta colección                     |

<!-- tabs:end -->

Estos son los permisos relacionados con Tainacan. Ver [aquí](/es-mx/manage-user-roles.md) cómo editar los roles de usuario para que puedan tener más o menos de estos, y [aquí](/es-mx/manage-specific-capabilities.md) cómo eliminar o añadir excepciones en ciertas colecciones.
