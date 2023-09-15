# Alojamiento

?> Esta página está dedicada a enumerar las opciones de alojamiento que están probadas por Tainacan listas para producción y para instalaciones de WordPress. Se alienta a usuarias y usuarios de la comunidad a compartir sus experiencias.

Para utilizar Tainacan es necesario disponer de una instalación de WordPress en funcionamiento. Si tienes conocimientos de informática, es posible hacer esta instalación en tu propia computadora de forma local, como se [describió al inicio de esta sección](es-mx/xampp). Sin embargo, lo ideal es que tu sitio esté alojado en un servidor, una máquina que esté siempre encendida y conectada permanentemente a internet. Existen varios servicios de alojamiento en línea, muchos de ellos incluso optimizados para WordPress.

En esta página enumeraremos:

- [Funciones y características que se esperan de un servicio de hospedaje adecuado para el uso de Tainacan](#¿qué-se-espera-de-un-alojamiento-para-tainacan);
- [Servicios conocidos y probados por la comunidad](#servicios-de-alojamiento-de-terceros-probados);

## ¿Qué se espera de un alojamiento para Tainacan?

### WordPress instalado

Como requisito más esencial, tu instalación debe incluir un [Wordpress](https://es-mx.wordpress.org/ ":ignore"), o al menos debe permitir instalarlo, con acceso completo al panel de administración. Si bien Tainacan funcionará con cualquier versión a partir de la 4.8 de WordPress, recomendamos instalaciones con una [versión más reciente](https://es-mx.wordpress.org/download/releases/ ":ignore") y superior a la 5.0 para poder aprovechar todas las funciones, como [los bloques gutenberg](/es-mx/gutenberg-blocks.md). Necesitarás tener permisos para instalar complementos (plugins) para activar Tainacan (que, [como se menciona aquí](/es-mx/faq.md#¿cuál-es-la-diferencia-entre-wpcom-y-wporg), elimina la posibilidad de usar algunas opciones de planes gratuitos como los de [Wordpress.com](https://es.wordpress.com/ ":ignore"));

#### Algunos requisitos del servidor

Es muy probable que si tu plan de alojamiento incluye WordPress instalado, ya estén incluidos estos requisitos, pero si vas a instalar uno por tu cuenta, asegúrate de tener:

- `Apache` o `Nginx` funcionando;
- `PHP` versión 5.6 o superior;
- Módulos `PHP` esperados:

  - `curl`
  - `exif`
  - `imagick`
  - `gd`
  - `zlib`


Después de activar el complemento de Tainacan, puedes verificar en la página [“Diagnóstico del sistema”](/es-mx/optimization#diagnóstico-del-sistema) si se cumple esta información. De lo contrario, comunícate con tu proveedor de alojamiento para obtener ayuda con la configuración.

### SSL habilitado

### Dominio registrado

En resumen, registrar un dominio significa tener una dirección de internet reservada, a la que los navegadores apuntarán su sitio web cuando las personas busquen su URL o enlace (por ejemplo, `miacervoenlinea.com.mx`).  Este es un servicio independiente del alojamiento del contenido en sí, y se contrata con proveedores específicos (como [hostinger](https://www.hostinger.mx/ ":ignore") o [godaddy](https://www.godaddy.com/es ":ignore")), según lo ofrecido por el proveedor del alojamiento.

## Servicios de alojamiento de terceros probados

A continuación encontrarás algunos servicios de alojamiento conocidos y probados por los miembros de nuestra comunidad. Es importante tener en cuenta que puede haber muchos otros y que no necesariamente respaldamos una alternativa más que otraa.

| Servicio   | Enlace                                              | Comentarios                                                                                                       |
| --------- | ------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Hostinger | https://www.hostinger.mx/hosting-wordpress | Configuración sencilla. Incluye todos los módulos PHP necesarios, SSL y ofrece un dominio gratis por un tiempo determinado |
| Hostgator | https://www.hostgator.mx/hosting-wordpress                     | Configuración sencilla con herramienta de instalación de WordPress. Incluye todos los módulos PHP necesarios (algunos hosts antiguos carecían del módulo imagick). Tiene buena documentación y soporte para posibles configuraciones |

