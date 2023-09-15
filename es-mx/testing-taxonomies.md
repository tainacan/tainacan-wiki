# Comprobación de taxonomías

## Fundamentos

1. Crear una o varias taxonomías;
2. Crear uno o más términos en cada taxonomía creada;
3. Cargue una _Imagen de cabecera_ para al menos un término en cada taxonomía;
4. Intente rellenar todos los campos, como **nombre**, **descripción**, etc.
5. Cree al menos un nivel jerárquico en cada taxonomía (añadiendo términos hijos);
6. Cambie el Estado de al menos una taxonomía después de haberla creado;
7. Vaya a la lista de taxonomías y compruebe que están en las pestañas correctas según su estado;

- [x] Observe el tiempo de carga de las pantallas _Creación de taxonomías_, _Lista de términos_ y _Lista de taxonomías_.
- [x] Observe el tiempo de finalización al **guardar** cada taxonomía;
- [x] Observar el tiempo de finalización al **guardar** cada término;

4. Pruebe a borrar una taxonomía. Observe si se producen cambios en las demás taxonomías o en los metadatos de la taxonomía;
5. Enumere al menos una taxonomía y un metadato y repita las operaciones anteriores con esta taxonomía;
6. Intente relacionar la misma taxonomía con dos metadatos de la misma colección. Esto no debería ser posible.

## Visualización del término en el tema

1. Abra el formulario de edición de un término;
2. Haga clic en "Ver en el tema";
   - [x] Compruebe que la lista de elementos del término se muestra correctamente, incluyendo la imagen y la descripción introducidas;
   - [x] Compruebe que se enumeran los elementos que pueden tener ese término etiquetado en algunos metadatos de tipo taxonomía.

## Definir un nuevo término padre

1. Abra el formulario de edición de un término, o cree uno nuevo;
2. Active la opción "Término padre" y busque términos que puedan ser elegidos como padres;
3. Guarde el cambio pulsando "Guardar";
   - [x] Compruebe que su propio término no aparece entre los términos ofrecidos;
   - [x] Si el término elegido actualmente tiene hijos, compruebe que la lista se recarga correctamente al cambiar su jerarquía;

## El permiso para nuevos términos

1. En el formulario de configuración de la taxonomía, desmarque la opción "Permitir nuevos términos";
2. Guarde el cambio haciendo clic en `Guardar`;
3. Vaya a una colección en la pantalla Configurar metadatos;
   1. Cree un Metadato de tipo Taxonomía a partir de la taxonomía modificada.
   2. Compruebe que la opción "Permitir nuevos términos" ya no existe;
4. Vaya a la lista Elementos de la colección y cree o edite un elemento;
   1. Añada los términos existentes a los metadatos de tipo taxonomía;
   2. Intente añadir nuevos términos a la taxonomía desde el formulario de edición de metadatos;
   - [x] Confirme que no es posible insertar nuevos términos en la taxonomía, ya que la configuración de Taxonomía tiene prioridad sobre la configuración de Metadatos;
   - [x] Vuelva a cargar la página del elemento para ver si se han guardado los posibles términos.

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-qué-tengo-que-hacer).
