# Preguntas frecuentes

Hemos enumerado y respondido las preguntas más frecuentes de nuestra comunidad

> ¡Para unirte a la comunidad de Tainacan [regístrate aquí](https://tainacan.discourse.group ":ignore")!

Saltar a una sección específica:

- [Sobre Tainacan](#Sobre-Tainacan)
- [Soporte](#Errores-y-soporte)
- [Instalación y alojamiento](#Instalación-y-alojamiento)
- [Menús, páginas y bloques](#Menús-Páginas-y-Bloques)

---

## Sobre Tainacan

### ¿Qué significa Tainacan?

El nombre Tainacan alude a la leyenda indígena del dios de las constelaciones y hace referencia a la percepción de la dimensión del espacio y sus múltiples posibilidades de conexiones.

El software libre Tainacan se desarrolla con base en los resultados de investigaciones científicas y de las experiencias de implementación en instituciones con las que hemos colaborado. Se trata de una herramienta flexible y poderosa para WordPress, que permite la gestión y publicación de colecciones digitales con la misma facilidad con la que se publican posts en blogs, pero manteniendo todos los requisitos de una plataforma profesional para repositorios.

### ¿Quién desarrolla Tainacan?

Somos una red de investigadores y desarrolladores que une el conocimiento científico y la implementación de soluciones tecnológicas en instituciones culturales.

Actualmente, nuestra red reúne a investigadoras e investigadores de la Universidad de Brasilia (UnB), la Universidad Federal de Goiás (UFG) y el Instituto Brasileño de Información en Ciencia y Tecnología (IBICT), así como a nuestro equipo de desarrollo y a las personas usuarias de nuestra comunidad de Tainacan. [(Puedes registrarte aquí)](https://tainacan.discourse.group).

### ¿Por qué Tainacan es software libre?

Porque su principal objetivo es ayudar a las instituciones culturales a organizar, publicar y difundir sus colecciones. También se puede utilizar para construir repositorios individuales o colectivos con cualquier propósito, y funciona perfectamente con la plataforma WordPress.

---

## Errores y soporte

### Creo que encontré un error. ¿Qué tengo que hacer?

Siempre estamos disponibles en el [foro de discusión de Tainacan](https://tainacan.discourse.group ":ignore"), donde se pueden iniciar conversaciones, y en el [proyecto en GitHub](https://github.com/tainacan/tainacan ":ignore"), donde se pueden plantear cuestiones más técnicas. Si inicias una conversación, te recomendamos que siempre brindes la mayor cantidad de detalles posible para que podamos ayudar a identificar lo que está sucediendo. Algunas sugerencias son:

- Describir paso a paso lo que se está haciendo, lo que ocurre y lo que se esperaba;
- Consultar y, si es posible, enviarnos la información de la [página de diagnóstico del sistema](/es-mx/optimization#diagnóstico-del-sistema);
- Si tienes acceso al servidor, envíanos los registros - [aquí puedes ver cómo hacerlo](#¿cómo-encuentro-los-registros-de-errores-de-mi-servidor);
- Envíanos información de red y consola en el navegador - [aquí puedes ver como hacerlo](#¿cómo-veo-los-errores-de-la-consola-de-red-o-del-navegador);
- Si tienes enlaces de prueba, ¡aún mejor!

#### ¿Cómo encuentro los registros de errores de mi servidor?

Algunos errores generados en la base de datos o en las operaciones del lado del servidor se pueden identificar accediendo a sus registros. Si tienes acceso al servidor, enviar estos registros a los desarrolladores podría ser de ayuda. Su ubicación varía según la instalación. En servidores apache, es común encontrar los registros en estas rutas:

- `/var/log/apache2/error.log`;
- `/var/log/apache/error.log`;

#### ¿Cómo veo los errores de la consola de red o del navegador?

Algunos errores pueden informarse en el navegador en lugar del servidor. Esto sucede en situaciones en las que la pantalla se atasca en algún estado de carga infinito, por ejemplo. En esta situación, puede ser útil para los desarrolladores conocer información del panel de red o de la consola de su navegador, que forman parte del panel del desarrollador.

- En Firefox, accede al panel de Redes con el atajo <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>E</kbd> y a la Consola con el atajo <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>K</kbd>. Otra opción es hacer clic derecho en la página, ir a la opción “Inspeccionar” y desde allí buscar las pestañas Red y Consola;
- En Google Chrome, accede al panel de desarrollador con el atajo <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>I</kbd> o haciendo clic derecho en la página y yendo a “Inspeccionar”. Desde allí, busca las pestañas Red y Consola.

En la **pestaña de la consola**, los errores en general aparecen destacados en rojo. En la **pestaña de red**, siempre habrá una lista de varias solicitudes. Los que pueden tener un problema en general aparecen en rojo o con los códigos 404, 401, 500, justo al principio. A veces, puede ser necesario hacer clic en una solicitud de esta lista para obtener más información, así como su respuesta. Conocer esta información puede ayudar al desarrollador a identificar el problema. Si es posible, haz una captura de pantalla que muestre el contenido de estas pantallas, incluida la información oculta al desplazarse. Si se trata de un error que se produce justo al entrar en la página o al pulsar un botón, prueba a repetir la acción con esta pantalla abierta, para asegurarte de que se ha registrado allí.

### Recibo errores 404 o páginas en blanco cuando accedo a mi colección en el sitio web.

En algunas situaciones particulares, como al realizar una migración del sitio, iniciar una nueva instalación o actualizar un plugin, puede surgir la necesidad de actualizar la estructura de permalinks (enlaces permanentes) de WordPress. Los permalinks son las direcciones o nombres específicos de las URL de tu sitio WordPress que permiten acceder a un contenido. Si al intentar acceder a una colección que ya existía o si algunas de las [peticiones realizadas por tu sitio](#¿cómo-encuentro-los-registros-de-errores-de-mi-servidor) devuelven 404, incluso con conexión a internet, es posible que tu sitio necesite recomponer su lista de permalinks. Este error es difícil de detectar (por eso por lo general no aparece en [Diagnóstico del sistema](/es-mx/optimization#diagnóstico-del-sistema)) pero, afortunadamente, ¡es muy sencillo de solucionar!

Haz lo siguiente: accede al panel de administración de WordPress y ve al menú lateral en **"Configuración" -> "Enlaces permanentes"**. Allí, asegúrate de que la opción seleccionada sea **Post Name** o al menos **Custom Structure** (estructura personalizada) que tiene el valor _/%postname%/_. Después de comprobar esto, haz clic en **Guardar cambios** (es importante hacer clic aunque no se haya modificado la configuración). Vuelve a cargar el sitio y comprueba si puedes acceder al contenido en cuestión.

### No puedo cargar archivos. ¿Qué hago?

Comprueba en la [Página de diagnóstico del sistema](/es-mx/optimization#diagnóstico-del-sistema) si la carpeta uploads de tu servidor tiene permisos de escritura. Si no es así, debes corregirlo asignando permisos de lectura y escritura para el usuario que accede al servidor (normalmente `www-data`).

Si sigue sin funcionar, ponte en contacto con nosotros para que podamos analizarlo. ¿Se pueden subir archivos a WordPress pero no a Tainacan? ¿Qué formato de archivo estás intentando cargar? Esta es información que puede ayudarnos a entender el problema.

[Aquí](/es-mx/optimization#blindando-wordpress) se pueden encontrar otras preguntas relacionadas con este tema.

### Ocurrió un error en el proceso de importación o exportación de artículos. ¿Qué hacer?

En general, los errores en procesos como los importadores y exportadores se registran en un archivo de registro al que se puede acceder a través de la interfaz administrativa de Tainacan. En la lista de procesos, abre el proceso que dio error y descarga el archivo de registro. Puede ser útil enviar este archivo a alguna persona que pueda ayudarte a entender dónde está el error.

### Creo que mi instalación tarda demasiado en cargar los elementos. ¿Se puede mejorar?

Si tu colección es pequeña y sencilla, entonces es muy probable que haya algún problema y se puede discutir en el foro de soporte. Si tu base de datos tiene miles de artículos, con docenas de metadatos, entonces las razones de la ralentización pueden tener que ver con el servidor o con la configuración de búsqueda actual. Te sugerimos una lectura detallada de [esta página](/es-mx/optimization) que te guiará a través de algunas opciones sobre problemas de rendimiento.

---

## Instalación y alojamiento

### ¿Cuál es la diferencia entre wp.com y wp.org?

wp.com o [wordpress.com](https://wordpress.com ":ignore") es una de las varias plataformas de alojamiento que ofrecen instalaciones y servidores preparados con WordPress. En cambio, [wordpress.org](https://es-mx.wordpress.org/ ":ignore") es el sitio oficial del software libre WordPress, donde puedes encontrar información de instalación, documentación, enlaces a la comunidad, eventos y, entre estas cosas, también opciones de alojamiento. Pero su principal objetivo es proporcionar la herramienta que puede ser utilizada por cualquier persona para construir sitios en cualquier servicio de alojamiento.

### ¿Puedo usar Tainacan en mi blog wordpress.com?

Sí, pero lamentablemente el [plan gratuito](https://wordpress.com/es/pricing/ ":ignore") de wordpress.com no permite instalar plug-ins. Para eso, tienes que utilizar un plan de pago. Recuerda que esta no es la única forma u opción de alojar sitios de WordPress.

### ¿Es posible instalar Tainacan en mi propia computadora?

Sí, pero es bueno dejar claro que **Tainacan es un plug-in para una plataforma web**. En realidad, su función no es la de un programa que se abre y se cierra en una computadora. Las instalaciones locales -como las llamamos cuando las configuras en tu propio ordenador- son útiles para los desarrolladores que quieren contribuir o simplemente para quienes quieren hacer algunas pruebas antes de enviarlas a un servidor donde el sitio estará alojado en la web y en línea las 24 horas del día. Para configurar una instalación de WordPress preparada para Tainacan, echa un vistazo a [nuestros tutoriales de instalación](/es-mx/instalacao).

### Entonces, ¿qué opciones tengo para alojar mi repositorio?

¡Buena pregunta! Hablamos de ello con más detalle en nuestra página sobre [alojamiento](/es-mx/hosting).

---

## Menús, Páginas y Bloques

### ¿Es posible insertar elementos de Tainacan en las publicaciones de WordPress?

¡Sí, es posible! Para añadir elementos de Tainacan a una publicación de WordPress (a partir de la versión 5.0) crea un [bloque de Gutenberg](/es-mx/gutenberg-blocks) desde el editor de texto. Al insertar un bloque, puedes buscar Tainacan y podrás ver qué tipos de bloques de Tainacan existen.

### ¿Cómo veo la lista de colecciones en el tema?

La lista de colecciones es una de las [Páginas especiales](/es-mx/tainacan-pages) que inserta Tainacan. Solo tienes que añadir `colecciones` a la URL de tu sitio web.

### ¿Cómo coloco la lista de colecciones en el menú de mi sitio web?

Tienes que ir a la barra superior en **Personalizar** > **Menús** > **Seleccionar menú principal** > **Añadir elementos**. Desde ahí, además de otros enlaces personalizados, puedes elegir "Repositorio de colecciones" para mostrar tu lista de colecciones o seleccionar cualquier otra colección o cualquier término de una taxonomía.

### ¿Cómo puedo hacer que la página de inicio de mi sitio sea la lista de colecciones?

Por defecto, la página de inicio de tu sitio será la lista de las entradas de tu blog. Para configurar una página de inicio personalizada, debes ir al menú superior en **Personalizar** > **Configuración de la página estática** y elegir la página. Sin embargo, al tratarse de una [página especial](/es-mx/tainacan-pages) creada por el plug-in, la página de lista de colecciones no aparece por defecto como opción. La solución es crear una página y listar sus colecciones en ella, utilizando cualquiera de los [bloques de colección](/es-mx/blocks-collections.md).

### ¿Qué pasa si quiero que otras personas colaboren con mi colección?

Como administrador de tu sitio, puedes registrar nuevos usuarios con diferentes [funciones y permisos](/es-mx/users-roles) para editar tu colección. Sin embargo, si deseas que se inserten elementos sin registrar nuevos usuarios en el sistema, puedes crear un [Formulario de envío](/es-mx/item-submission) público, para recibir contribuciones externas directas en tu repositorio.

> Si quieres formar parte de la comunidad de Tainacan, ¡[suscríbete aquí](https://tainacan.discourse.group)!#Preguntas Frecuentes

