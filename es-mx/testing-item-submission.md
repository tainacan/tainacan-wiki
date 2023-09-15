# Presentación de elementos de prueba

A partir de la versión 0.17, Tainacan permite el envío de artículos en páginas públicas por usuarios que no hayan iniciado sesión en el sitio. Para una explicación detallada de esta función, lea la página [Envío de elementos](/es-mx/item-submission.md).

## Aspectos básicos

1. Abra una colección;
2. En sus ajustes, activa la opción "Permitir envíos de artículos";
3. Deje los demás ajustes por defecto, como están;
4. Guarde la configuración;
5. En el panel de administración de WordPress, crea una nueva página;
6. En esta página, inserta el bloque "Formulario de envío de artículos";
7. Configure la colección donde se enviará el envío, eligiendo la colección utilizada en los pasos anteriores;
8. Una vez hecho esto, asegúrese de que:
   - [x] En el modal de elección de colecciones no aparecen otras, ya que sólo deben estar presentes las configuradas para "Permitir el envío de artículos";
   - [x] Al elegir la colección, todos sus metadatos deben aparecer listados en la barra lateral del bloque, donde se pueden deshabilitar o habilitar algunos, excepto los obligatorios;
9. Publica la página y comprueba que el formulario se ha cargado en la parte pública, para iniciar las siguientes pruebas.

## Rellenado del formulario

1. Ir a la página del formulario publicado;
2. Rellena los campos de metadatos;
3. Probar el envío de diferentes tipos de documentos;
4. Probar si se generan o no miniaturas automáticamente;
5. Pruebe el envío de diferentes tipos de archivos adjuntos;
   - [x] Pruebe también el envío de un formato de archivo adjunto no válido (por ejemplo, .SVG no suele aceptarse por defecto) para comprobar si hay errores de envío.
6. Probar que se rellenan los campos de metadatos de tipo taxonomía;
7. Comprobar que no se rellenan de forma no válida los campos de metadatos numéricos o de fecha;
8. Comprobar la cumplimentación de metadatos de tipo relación con _otra colección_.

   - [x] Comprobar que todos los metadatos a nivel de repositorio y colección se han mostrado correctamente para su cumplimentación;
   - [x] Observar si se muestran correctamente las sugerencias de cumplimentación configuradas en determinados metadatos;
   - [x] Comprobar que el aviso de **completar metadatos requeridos** funciona correctamente al **guardar** el ítem (salvo que se haya configurado como borrador por defecto);

9. Probar la cumplimentación de _metadatos compuestos_ que aceptan múltiples valores. Al principio, el campo estará vacío, con sólo el botón de añadir valor. Al añadirlo, aparecerá el primer grupo de entradas con los metadatos hijos

   - [x] Observe si los metadatos hijos marcados como obligatorios están generando errores en la lista de errores del formulario;
   - [x] Compruebe que el orden en el que aparecen los hijos es el mismo que el configurado en la pantalla de configuración de metadatos.

10. Pruebe la funcionalidad de _Set author item as default_ para el tipo de metadatos _User_. Este campo debe rellenarse al crear el elemento.
11. Una vez finalizado el envío, acceda al panel de administración y compruebe que el elemento se ha creado en el estado establecido como predeterminado para la colección.

## Probar otras configuraciones de envío

1. Vuelva a la página de configuración de la recogida;
2. Establezca el estado predeterminado para los elementos enviados;
3. Active la opción "Permitir el envío por usuarios anónimos";
4. Salga de WordPress y cierre su sesión de usuario, asegurándose de que no ha iniciado sesión alguna;
5. Repita la prueba de cumplimentación del formulario;
6. Cuando vuelva a iniciar sesión, compruebe que los elementos se envían con el estado correcto;

## Probando la protección _reCAPTCHA_

1. En los ajustes de la colección, active la opción "Usar verificación _reCAPTCHA_ en el formulario de envío";
2. En el panel de administración de WordPress, accede al submenú del plugin Tainacan llamado "Envío de elementos";
3. En esta página, introduce los campos "Clave del sitio" y "Clave secreta" generados en el formulario de Google [_reCAPTCHA_](https://www.google.com/recaptcha/admin/create ":ignorar");
4. Guarde la configuración;
5. Inserte un nuevo bloque de envío (elimine uno existente, si procede), recordando seleccionar como destino una colección cuya configuración _reCAPTCHA_ haya sido habilitada;
6. Rellene el formulario. Debería haber una casilla _reCAPTCHA_ en la parte inferior de la página. Pruebe a enviar sin rellenarla y luego a rellenarla.

## Probando la configuración del bloque

1. Prueba a cambiar las otras opciones del bloque, situadas en la barra lateral:
   1. Edita el mensaje que aparece cuando el envío se realiza correctamente;
   2. Edite las etiquetas de sesión del formulario;
      - [x] Tenga en cuenta que si deja una etiqueta en blanco, simplemente no aparece;
   3. Ocultar algunos metadatos no obligatorios;
   4. Oculte algunos elementos del formulario:
      - [x] Pruebe en particular la opción de no mostrar los colapsos;
      - [x] Tenga en cuenta que si se oculta más de una opción de tipo de documento (archivo, texto o url), los botones para elegir documento desaparecen y sólo aparece la entrada para el único tipo de documento restante;
   5. Prueba a cambiar algunos colores y el tamaño de la fuente;
2. Publique la página y compruebe los efectos en el bloque de formulario;

?> Los problemas encontrados pueden ser reportados como un [issue en GitHub](https://github.com/tainacan/tainacan/issues ":ignore") o en el [foro de la comunidad de Tainacan](https://tainacan.discourse.group ":ignore"). Algunos errores comunes, como las páginas que no se cargan, pueden describirse mejor utilizando [sugerencias de la página de preguntas frecuentes](/es-mx/faq.md#creo-que-encontré-un-error-qué-tengo-que-hacer).
