<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Icono de Exportadores" 
		src="_assets/images/icon_exporters.png"
		width="40"
		height="40">
</div>


# Exportadores

Con Tainacan, puedes exportar tanto las colecciones como las Taxonomías (Vocabularios Controlados) en un archivo de hoja de cálculo CSV.

## Exporta tu colección a un archivo CSV

1. Inicia sesión en el panel de control de _WordPress_:

   ![Acceso al panel de control](_assets/images/050.png)

2. En la barra lateral izquierda, haz clic en Tainacan.

   ![Acceso al panel de control](_assets/images/Panel_Acceso_Tainacan.png)

3. Haz clic en `Exportadores`.

   ![Acceso al panel de control](_assets/images/Exportadores_Acceso.png)

4. Selecciona la opción *CSV*. 

   ![Acceso al panel de control](_assets/images/Exportadores_CSV.png)

5. En esta página puedes configurar los siguientes parámetros CSV:

   ![Acceso al panel de control](_assets/images/Exportadores_CSV_Parametros.png)

   a. **“Delimitador CSV”**: Especifica el caracter utilizado para separar cada columna en el archivo *CSV* (por ejemplo , o ;);

   b. **“Delimitador de metadato con valores múltiples”**: Especifica el caracter utilizado para separar cada valor dentro de una celda con múltiples valores (por ejemplo ||) Toma en cuenta que el metadato de destino debe aceptar múltiples valores.

   c. **“Delimitador de texto”**: Especifica el caracter que delimita el contenido de cada celda en el CSV.

   d. **“Colección de origen”**: El nombre de la colección que deseas importar.

   e. **“Mapeo”**: Tainacan te permite mapear (emparejar) los metadatos al estándar Dublin-Core. En esta opción tu defines si los metadatos mapeados previamente deben venir con la nomenclatura del estándar.

   f. **“Envíame un correo cuando el proceso esté finalizado”**: El proceso de exportación puede tardar algún tiempo. Marca esta opción si quieres recibir un correo electrónico cuando el proceso haya finalizado. También puedes dar seguimiento al "estado del proceso" visitando la `Página de actividad del repositorio`.

6. Después de realizar los ajustes, haz clic en Ejecutar. Serás redirigido a la pantalla **Actividad del repositorio** donde podrás seguir el progreso del _proceso de importación_. Esta pantalla muestra todos los procesos de importación ya realizados en esta instalación, del más reciente al más antiguo. Una vez finalizado el proceso, se mostrará el **archivo de registro** y, en caso de errores, el **archivo de registro de errores**.

   ![Acceso al panel de control](_assets/images/Exportadores_CSV_Informacion.png)

   a. **“Tipo de acción”**: nombre de la acción que se está ejecutando o ya se ejecutó, en este caso *CSV Exporter*.

   b. **“Progreso”**: porcentaje de avance de la acción.

   c. **“En la fila”**: fecha en la que la acción entró en la fila de acciones por ejecutar.

   d. **“Colección de destino”**: colección que se está exportando.

   e. **“Exportado por”**: usuaria o usuario responsable de la exportación.

   f. **“Archivo de registro”**: acceso al archivo de registro de la exportación.

   g. **“Última actualización”**: fecha de la última actualización del proceso de exportación.

   h. **“Descargar”**: cuando el proceso llega a su fin, el sistema pone a disposición el fichero en "csv" para su descarga, simplemente haciendo clic sobre el enlace.

7. Al final del proceso, haz clic en el enlace `Descargar` para descargar el archivo. 

   ![Acceso al panel de control](_assets/images/Exportadores_CSV_Descarga.png)

## Exportación de vocabularios controlados

1. Accede al panel de control de WordPress;

   ![Acceso al panel de control](_assets/images/050.png)

2. En la barra lateral izquierda, haz clic en *Tainacan*;

   ![Acceso al panel de control](_assets/images/Panel_Acceso_Tainacan.png)

3. Haz clic en *Exportadores*.

   ![Acceso al panel de control](_assets/images/Exportadores_Acceso.png)

4. Elige la opción *Vocabulario CSV*.

   ![Acceso al panel de control](_assets/images/Exportadores_Vocabulario_CSV.png)

5. En esta página puedes configurar los siguientes parámetros *CSV*.

   ![Acceso al panel de control](_assets/images/Exportadores_Vocabulario_CSV_Parametros.png)

   a. **“Delimitador CSV”**: El carácter utilizado para separar cada columna en el *CSV* (por ejemplo , o ;);

   b. **“Taxonomía de origen”**: la "Taxonomía" que deseas exportar.

   c. **“Envíame un correo cuando el proceso esté finalizado”**: El proceso de exportación puede tardar algún tiempo. Marca esta opción si quieres recibir un correo electrónico cuando el proceso haya finalizado. También puedes dar seguimiento al estado del proceso visitando la `Página de actividad del repositorio`.

6. Una vez configurados los parámetros, da clic en `Ejecutar`. Serás redirigido a la pantalla `Actividades del repositorio` donde podrás seguir el progreso del `proceso de importación`. Esta pantalla muestra todos los procesos de importación ya realizados en esta instalación, del más reciente al más antiguo. Una vez concluido el proceso, se mostrará el archivo de registro (fichero log) y, en caso de errores, el archivo de registro de errores

   ![Acceso al panel de control](_assets/images/Exportadores_Vocabulario_CSV_Informacion.png)

   a. **“Tipo de acción”**: nombre de la acción en ejecución o ejecutada, en este caso `Exportador CSV de Vocabulario`.

   b. **“Progreso"**: porcentaje de avance de la acción.

   c. **“En la fila”**: fecha en la que la acción entró en la fila de acciones por ejecutar.

   d. **“Taxonomía de destino”**: taxonomía que se está exportando.

   e. **“Archivo de registro (log file)”**: acceso al archivo de registro de la exportación.

   f. **“Última actualización”**: fecha de la última actualización del proceso de exportación.

   g. **“Descarga”**:  cuando el proceso llega a su fin, el sistema pone a disposición el fichero en *csv* para su descarga, simplemente haciendo clic sobre el enlace.

7. Al final del proceso, hagz clic en el enlace `Descargar` para descargar el archivo. 

   ![Acceso al panel de control](_assets/images/Exportadores_Vocabulario_CSV_Descarga.png)
