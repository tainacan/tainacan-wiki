# Pruebas de los Importadores

Existen varios importadores para Tainacan, incluyendo algunos que pueden ser creados por desarrolladores como plugins. En esta documentación, nos ocuparemos del que consideramos más utilizado, [importador CSV](/es-mx/importers.md#importer-csv-items).

## Lo básico

1. Vaya a la página Importadores, accesible desde el menú del repositorio;
2. Seleccione el Importador CSV;
3. Elija un archivo CSV para probarlo. Es importante que su archivo cubra algunos de los casos de importación más comunes. Si no tienes ninguno a mano, puedes utilizar uno [de estos aquí](http://oficinas.tainacan.org/ ":ignorar");
4. Rellene el formulario, seleccionando una Colección de destino y cargando el archivo CSV;
5. Haga clic en "Siguiente";
   - [x] Al entrar en la pantalla de mapeo, compruebe que las columnas se han separado correctamente según su separador configurado en la página anterior.
   - [x] Compruebe que los metadatos existentes para esta colección están disponibles en los selectores de mapeo.
6. Rellene la asignación de metadatos. Si su colección aún no tiene metadatos configurados, [deje que el importador los cree](#creating-metadata-in-the-mapping). Si ya está configurada, realice las correspondencias adecuadas para cada tipo;
   - [x] Confirmar que cada vez que los metadatos se asocian a una columna del mapeador, dejan de estar disponibles en los otros selectores;
7. Haga clic en `Run` para ejecutar el importador;
   - [x] Confirme que si no ha asignado ninguna columna al "Título principal de metadatos" de la colección, recibirá una alerta sugiriéndole que lo haga;
   - [x] Cuando haya terminado de ejecutar el importador, compruebe los registros (Archivos de registro) en la página Procesos para ver que no ha habido alertas;
   - [x] Confirme que los tipos de metadatos se han mapeado correctamente, que las imágenes se han cargado y que se han creado nuevos términos si hay metadatos para Taxonomías que estaban vacíos;

## Sustitución de artículos

1. Vaya a la colección donde se realizó la importación anterior;
2. Haga clic en el botón `Exportar' en la esquina superior derecha de la pantalla de la colección;
3. Exporte la colección en formato CSV;
4. Utilizando un editor de su elección, cambie el contenido de algunas de las líneas del archivo CSV exportado. Puedes cambiar los metadatos de los elementos e incluso eliminar algunas líneas si quieres agilizar el proceso;
5. Vaya a la página Importadores, accesible desde el menú del repositorio;
6. Seleccione el Importador CSV;
7. Utilice la misma colección como destino y cargue el archivo CSV modificado;
8. No olvide dejar seleccionada la opción "Repetir elemento" del formulario en `Actualizar`;
9. Haga clic en `Siguiente`;
10. En la pantalla de asignación de metadatos, mantenga las mismas columnas que se utilizaron para los metadatos en la importación anterior;

- [x] Compruebe que se ha detectado el campo especial `special_item_id`.

11. Haga clic en "Ejecutar" para ejecutar el importador;
    - [x] Cuando haya terminado de ejecutar el importador, compruebe los registros (Log Files) en la página Processes para asegurarse de que no se han producido alertas;
    - [x] Confirme que los elementos que tenían líneas modificadas se actualizaron en el proceso de importación;

## Creación de metadatos en el mapeo

1. Vaya a la página Importadores, accesible desde el menú del repositorio;
2. Seleccione el Importador CSV;
3. Elija un archivo CSV para probarlo. En este caso, lo ideal es que tenga **configuraciones relacionadas con metadatos con [campos especiales](/es-mx/importers#columnas-especiales)**. [En esta página](http://oficinas.tainacan.org/) puede encontrar un ejemplo en el último enlace, pero también le sugerimos que cree sus propias configuraciones basándose en la [documentación del importador](/es-mx/importers#crear-metadatos-automáticamente).
4. Rellena el formulario, seleccionando una **Colección que aún no tenga metadatos configurados** y subiendo el archivo CSV;
5. Haga clic en `Siguiente`;
6. En el mapeo, permita que el importador cree los metadatos;
7. Aproveche la oportunidad de crear un metadato de prueba directamente en esta pantalla haciendo clic en la opción "Crear metadatos" situada debajo de la lista de correspondencias;
   - [x] Compruebe, cuando haya terminado de crear los metadatos, que están disponibles en los selectores de mapeo;.
8. Elija un metadato para mapear utilizando sus metadatos recién creados, en lugar de permitir que el importador los cree;
9. Haga clic en "Ejecutar" para ejecutar el importador;
   - [x] Cuando haya terminado de ejecutar el importador, compruebe los registros (Log Files) en la página Processes para asegurarse de que no se han producido alertas;
- [x] Verifique que los tipos de metadatos se han creado correctamente, incluidos sus ajustes como "Permitir valores múltiples", "Estado" y "Permitir inserción de nuevos términos";

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-¿qué-tengo-que-hacer).
