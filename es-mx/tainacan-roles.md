# Roles de Usuario Tainacan

Los administradores de WordPress suelen encontrar las siguientes opciones de rol de usuario por defecto:

- **Administrador** - El "pez gordo" del sistema, que no sólo puede cambiar cualquier contenido, sino también gestionar plugins, temas y otras configuraciones del sitio.
- **Editor** - Usuarios con permisos de acceso y edición del contenido del sitio, como Entradas y Comentarios. También pueden subir imágenes, crear categorías y actividades similares.
- **Autor** - Usuarios que pueden crear contenido y editar sus propias entradas.
- **Colaborador** - Similar al Autor, pero no pueden publicar el post, esto se deja para roles más poderosos. No pueden gestionar contenido multimedia como imágenes o crear categorías.
- **Suscriptor** - Usuarios sin poder dentro del panel de administración de WordPress, sólo ven lo que es público en el sitio. Sólo sirven para controlar a los usuarios logueados que pueden, por ejemplo, leer posts exclusivos para suscriptores.

Al instalar Tainacan, sin embargo, aparecen nuevas funciones de usuario. Veamos cuáles son:

- **Administrador de Tainacan** - _Administrador en Tainacan_: Tiene poderes administrativos sobre el repositorio, sus elementos y contenidos, e incluso puede configurar nuevos roles de usuario y cambiar sus permisos.
- **Editor de Tainacan** - _Editor en Tainacan_: Puede crear, publicar y editar ítems y colecciones, incluyendo las de otros usuarios.
- **Autor en Tainacan_: Puede crear y publicar colecciones e ítems, pero no puede editar ítems publicados ni editar ítems de otros usuarios.

Tenga en cuenta que **los roles de usuario en Tainacan no otorgan ninguno de los privilegios que pueden ser necesarios para tocar el resto del contenido de WordPress**. Por tanto, es posible tener un usuario gestionando tu repositorio que no interfiera con el contenido del blog.

?> Lo contrario, sin embargo, depende del nivel. Mientras que el _Administrador en Tainacan_ no tiene permisos en el panel de administración de WordPress por defecto, el _Administrador de WordPress_ tiene todos los permisos que tiene el _Administrador en Tainacan_, más los suyos propios. El _Editor de WordPress_ también tiene todos los permisos que tiene el _Administrador en Tainacan_. Por otro lado, el _Autor en Tainacan_ tiene por defecto el mismo nivel de permisos que un _Suscriptor de WordPress_ en el panel de administración de WordPress.

Vamos a entender algunas situaciones que pueden ser deseables y el mejor tipo de rol que se puede asignar a un usuario:

1. Si un usuario sólo debe tener permisos para crear y editar sus propios artículos en Tainacan -sin modificar los de otros usuarios- y sin tocar el contenido del blog o sitio web, su rol apropiado sería probablemente _Autor en Tainacan_;
2. Si un usuario debe tener permisos para gestionar completamente un repositorio en Tainacan, pero no cambiar nada en el sitio WordPress, su rol debería ser _Administrador en Tainacan_;
3. Si un usuario debe ser capaz de crear y editar elementos en Tainacan, y al mismo tiempo ser capaz de crear y moderar entradas en WordPress, su rol más apropiado sería _Editor_ (de WordPress);
4. Si un usuario debe poder tener control sobre todo el repositorio de Tainacan, pero en WordPress sólo debe poder editar sus propios artículos, entonces éste debe ser un _Author_ (de WordPress) y su rol debe ser editado, usando [la página de configuración de roles de Tainacan](/es-mx/manage-user-roles.md), para otorgarle los permisos necesarios relacionados con Tainacan.

Los permisos en Tainacan fueron diseñados de esta manera porque no es posible, _por defecto_, cambiar qué permisos relacionados con WordPress tiene un rol de usuario. Sin embargo, esto es totalmente factible usando uno de los muchos plugins de configuración de permisos y roles que existen en WordPress ([ver algunos aquí](https://wordpress.org/plugins/search/user+roles/ ":ignore")).

Siga leyendo para saber más:

- [Permisos de Tainacan](/es-mx/capabilities.md)
- Cómo [gestionar roles de usuario](/es-mx/manage-user-roles.md)
- Cómo [gestionar permisos específicos](/es-mx/manage-specific-capabilities.md) en determinadas colecciones
