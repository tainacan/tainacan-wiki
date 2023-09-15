# Pruebas de metadatos

## Fundamentos

1. Cree los diferentes tipos de metadatos a **nivel de colección**, en diferentes colecciones:
1. Recuerda crear al menos un metadato de tipo _relación_, uno de tipo _taxonomía_, uno de tipo _compuesto_ y uno de tipo _usuario_;
1. Intente marcar diferentes opciones entre los metadatos en:

   
   * Estado;
   * Mostrar en la lista;
   * Opciones de relleno (es muy importante marcar las opciones _required_, _multiple_ o _single_ fill);
   * Otros campos de texto;

2. Pruebe las acciones _excluir_, _cambiar orden_, _editar metadatos_ o _desactivar_.

- [x] Recargue la página y compruebe los cambios para confirmar que todo se ha guardado;
- [x] Observe el tiempo de carga al crear metadatos;
- [x] Observe el tiempo de finalización al **guardar** cada metadato;
- [x] Ver si las **configuraciones se reflejan** en la lista de elementos y en los formularios de creación de elementos;

?> _Nota 1_: Un metadato que está "desactivado" es diferente de uno que está marcado como "No mostrar en la lista". Con el primero, ni siquiera puede insertar los metadatos en el artículo. Con el segundo, sólo cambia su visibilidad en la lista de elementos.

?> _Nota 2_: La ordenación de los hijos de los metadatos compuestos sólo funciona dentro de su grupo y actualmente no se permiten las taxonomías como hijos de los compuestos.

## Nivel de repositorio

1. Repita los pasos descritos anteriormente para algunos metadatos a nivel de repositorio;
2. Entre en la página de metadatos de una colección;
   - [x] Comprobar que se han heredado los metadatos;
   - [x] Comprobar que es posible cambiar su orden cuando se accede desde la pantalla de configuración de metadatos de la colección;

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-qué-tengo-que-hacer).
