# Prueba de permisos

Los permisos y la gestión de roles de usuario son algunas de las características más importantes a probar en Tainacan, ya que implican cuestiones de seguridad sensibles para los repositorios. Idealmente, para llevar a cabo estas pruebas, necesitas ser un administrador de tu WordPress, con permisos para crear y cambiar diferentes usuarios de prueba.

## Lo Básico

1. Ve al **panel de WordPress** donde está instalada y activada tu versión de prueba del plugin Tainacan (normalmente la dirección de tu sitio web + `/wp-admin`);
2. En la barra lateral izquierda, haz clic en **Añadir nuevo** en la sección **Usuarios**;
3. Crea un usuario de prueba con los datos que prefieras, marcando su rol como `Suscriptor`;
4. Cierra la sesión haciendo clic en `Salir` en la esquina superior derecha del menú de usuario;
5. Inicia sesión con el usuario que has creado en el panel de control de Wordpress;
6. En la barra lateral izquierda, haz clic en **Tainacan** para acceder al panel de administración de Tainacan;
   - [x] En la página de inicio del plugin, comprueba que están inaccesibles:
     - Los enlaces de Metadatos y Filtros a nivel de repositorio;
     - Los enlaces de Metadatos, Filtros y Actividades a nivel de Colección;
   - [x] Por otro lado, compruebe que están disponibles los siguientes:
     - Los enlaces de Taxonomías, Actividades, Importadores y Exportadores a nivel de repositorio;
     - Los enlaces a la Lista de Colecciones y a las listas de elementos de cada colección;
7. Acceda a la Lista de Ítems de una de las Colecciones del Repositorio;
   - [x] Comprobar si son inaccesibles:
     - El botón de añadir nuevo Ítem;
     - Los ítems privados;
     - Los enlaces para editar o eliminar ítems;
     - La opción de seleccionar y editar ítems en bloque;
     - Los enlaces del menú de la colección a Metadatos, Actividades, Filtros y Permisos de la colección;
   - [x] Confirme que están disponibles:
     - Los filtros junto a la lista de elementos;
     - Las pestañas Elementos publicados, Borrador y Papelera de reciclaje;
     - Las opciones de control de la Búsqueda, como Ordenación y Modos de vista;
8. Haga clic en uno de los Elementos para acceder a su página en Admin:
   - [x] Compruebe que no hay ningún enlace para editar el elemento;
   - [x] Compruebe que todos los datos del elemento son visibles, excepto las Actividades, que no deben aparecer;
9. Vaya a la lista de Colecciones, disponible en el menú lateral del repositorio;
   - [x] Compruebe que no están accesibles:
     - El botón de añadir nueva Colección;
     - Las colecciones privadas;
     - Los enlaces para editar o eliminar Colecciones;
   - [x] Confirmar que están disponibles:
     - Las pestañas Colecciones publicadas y Papelera de reciclaje;
     - Las opciones Ordenar y Búsqueda de texto;
10. Vaya a la lista de Taxonomías, disponible en el menú lateral del repositorio;

- [x] Compruebe si están inaccesibles
  - El botón de añadir nueva Taxonomía;
  - Las Taxonomías privadas;
  - Los enlaces para editar o eliminar Taxonomías;
- [x] Compruebe que están disponibles:
  - Las pestañas Taxonomías Publicadas, Borrador y Papelera de reciclaje;
  - Las opciones Ordenar y Búsqueda textual;

11. Elija una Taxonomía y haga clic sobre ella;

- [x] Confirme que la pestaña donde se va a editar la Taxonomía no está autorizada;
- [x] Compruebe que la pestaña que enumera los términos es accesible. Sin embargo, no debería ser posible añadir o editar términos;

12. Vaya a la lista de Actividades del contenedor de ficheros, disponible en el menú lateral del contenedor de ficheros;

- [x] Confirme que las Actividades no aparecen en la lista de la pestaña Actividades;
- [x] Confirme que la pestaña Procesos no contiene ningún proceso en ejecución (no por falta de permisos, sino porque este usuario recién creado no tiene ningún proceso);

## Añadir todos los permisos a un rol de usuario

1. Inicie sesión como administrador, vaya al **panel de WordPress** donde tiene instalada y activada su versión de prueba del plugin Tainacan (normalmente la dirección de su sitio web + `/wp-admin`);
2. En la barra lateral izquierda, haz clic en **Roles de usuario** en la sección **Tainacan**;
3. En la lista de roles, busca el rol "Suscriptor", o cualquier otro rol al que quieras asignar/quitar permisos;
4. Pasa el ratón por encima del rol y selecciona la opción "Editar";
5. En la pantalla de edición de roles, marque la opción "Gestionar Tainacan";
   - [x] Tenga en cuenta que todos los demás permisos se han marcado y no se pueden cambiar, ya que están bajo la influencia del permiso superior.
6. Haga clic en `Guardar cambios`;
7. Cierre la sesión pulsando en `Salir` en la esquina superior derecha del menú de usuario;
8. Inicie sesión con un usuario de prueba que haya creado y que tenga el rol de usuario modificado en el panel de control de Wordpress;
9. En la barra lateral izquierda, haga clic en **Tainacan** para acceder al panel de administración de Tainacan;
   - [x] Confirma que todos los elementos y funciones de Tainacan son accesibles esta vez;
10. Vuelva al panel de WordPress haciendo clic en el logotipo de WordPress en la esquina superior derecha;
11. Cierre la sesión haciendo clic en "Salir" en la esquina superior derecha del menú de usuario;

## Añadir permisos a un rol de usuario

1. Conéctese de nuevo como administrador y acceda de nuevo a la pantalla de configuración del rol de usuario que haya elegido (_por ejemplo, Abonado_);
2. En la pantalla de edición de roles, desmarque la opción `Administrar Tainacan`;

- [x] Observe que todos los permisos han sido desmarcados y ahora pueden ser modificados.

3. Cambie a la pestaña "Colecciones";
4. Con el selector marcado en `Todas las colecciones`, active los siguientes permisos:
   1. Gestionar metadatos;
   2. Eliminar filtros;
   3. Ver elementos privados;
5. Cambiar el selector de una colección específica;

- [x] Tenga en cuenta que algunos permisos ya están marcados y no se pueden cambiar, los marcados en el nivel `Todas las colecciones`;

6. En esta colección, marque los siguientes permisos:
   1. Editar elementos en bloque;
   2. Editar elementos;
   3. Editar artículos publicados;
   4. Editar artículos de otros;
   5. Borrar elementos;
7. Haga clic en `Guardar cambios`;
8. Cierre la sesión pulsando en `Salir` en la esquina superior derecha del menú de usuario;
9. Inicie sesión con un usuario de prueba que haya creado y que tenga el rol de usuario modificado en el panel de control de Wordpress;
10. En la barra lateral izquierda, haz clic en **Tainacan** para acceder al panel de administración de Tainacan;

- [x] En la página de inicio del plugin, compruebe que son inaccesibles:
  - Los enlaces Metadatos y Filtros a nivel de repositorio;
  - Los enlaces de Actividades y Filtros a nivel de Colección;
- [x] Por otro lado, compruebe que están disponibles los siguientes:
  - Los enlaces a Taxonomías, Actividades, Importadores y Exportadores a nivel de repositorio;
  - Los enlaces a la Lista de Colecciones y a las Listas de Elementos y Metadatos de cada colección;

11. Entre en la Colección definida en el paso **5**;

- [x] Compruebe si son inaccesibles:
  - Los enlaces para eliminar elementos;
  - Los enlaces del menú de la colección a Actividades, Filtros y Permisos de la colección;
- [x] Confirme que están disponibles:
  - El botón para añadir un nuevo elemento;
  - Los enlaces para editar elementos;
  - Los filtros junto a la lista de elementos;
  - Las pestañas Publicado, Privado, Borrador y Papelera;
  - Las opciones de control de búsqueda, como los modos de clasificación y visualización;
  - La opción de seleccionar y editar elementos en bloque;
  - Los enlaces en el menú de la colección a Metadatos de la colección;

12. Introduzca cualquiera de los elementos de esta colección;

- [x] Confirme que existe un enlace para editar el elemento;
- [x] Compruebe que todos los datos del elemento son visibles, excepto las Actividades, que no deben aparecer;

13. Haga clic en "Editar elemento";

- [x] Confirme que no hay un enlace para eliminar el elemento, ya que este elemento fue creado por otro usuario;

14. De vuelta en la Lista de Elementos, haga clic en Añadir Nuevo para crear un nuevo Elemento;
15. Rellene el elemento como desee;

- [x] Tenga en cuenta que como no tiene permiso para "Publicar elementos", sólo puede guardar el nuevo elemento como borrador;

16. Cuando haya terminado, vuelva a la Lista de Elementos;

- [x] Compruebe que el elemento que acaba de crear se encuentra en la pestaña borrador y no sólo puede editarse, sino también borrarse;

17. Por último, entre en la pantalla Metadatos de la colección;

- [x] Confirme que puede ordenar y editar los metadatos, pero no borrarlos;

?> Continúe describiendo la prueba.

## Establecer permisos específicos en una colección

1. Inicie sesión como administrador en el panel de control de Wordpress;
2. En la barra lateral izquierda, haz clic en **Tainacan** para acceder al panel de administración de Tainacan;
3. Entra en la página de la colección que quieras configurar;
4. Vaya a la página Permisos relacionados con la colección en la barra de menús de la colección;
5. Seleccione el permiso que desea cambiar, por ejemplo "Editar elementos en bloque";
6. Elimine o añada este permiso a un rol de usuario;
7. Haga _log-off_ e inicie sesión con cualquier usuario del rol modificado;

- [x] Compruebe que el permiso ha sido modificado;

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-qué-tengo-que-hacer).
