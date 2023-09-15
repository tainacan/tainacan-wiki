# Importador de vocabulario

Este importador permite al usuario añadir términos a una taxonomía determinada. Es útil para importar vocabularios controlados a una instalación de Tainacan.

El formato de archivo utilizado para importar vocabularios es un CSV - valores separados por comas. Cada línea del archivo representará un término.

Para cada término, puede informar el nombre del término y su definición.

Por ejemplo:

```csv
Término 1,Definición del término 1
Término 2,Definición del término 2
Término 3,Definición del término 3
```

También es posible informar de la jerarquía. Para ello, deje celdas vacías a la izquierda, indicando el nivel jerárquico en el que se encuentra el término.

Su hoja de cálculo tendrá el siguiente aspecto:

![Hoja de cálculo de vocabulario](_assets/vocabulary-importer-sample.png)

Esta misma hoja de cálculo, guardada en formato CSV, tendrá el siguiente aspecto:

```csv
Término 1,Definición del término 1,,
Término 2,Definición del término 2,,
,1er hijo del término 2,Definición de este término,
,2nd Child of term 2,Definition of this term,
,,Nieto,Definición del nieto
Término 3,Definición del término 3,,
Término 4,Definición del término 4,,
```

Una vez que tengas tu CSV listo, activa el Importador de Vocabulario CSV, elige la Taxonomía de destino (o crea una), y pulsa "Ejecutar".
