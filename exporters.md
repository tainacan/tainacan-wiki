<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Exporters Icon" 
		src="_assets/images/icon_exporters.png"
		width="40"
		height="40">
</div>

# Exporters

With Tainacan, you can export your collections or your Taxonomies (Controlled Vocabulary) into a CSV spreadsheet file.

## Export your collection to a CSV file

1. Access the *WordPress Control Panel*:

   ![Access the control panel](\_assets\images\exportador_01.png)

2. On the left sidebar, click on Tainacan:

   ![Select Tainacan](\_assets\images\exportador_02.png)

3. Click on "Exporters":

   ![Select Exporter](\_assets\images\exportador_03.png)

4. Choose the "CSV" option:

   ![Select CSV](\_assets\images\exportador_04.png)

5. On this page, you can configure the following CSV parameters:

   ![Configuring CSV](\_assets\images\exportador_05.png)

   a. **“CSV Delimiter”**: The character used to separate each column in your CSV (e.g., , or ;);

   b. **“Multivalued Metadata Delimiter”**: The character used to separate each value within a multi-valued cell (e.g., | |). Note that the destination “metadata” must accept multiple values;

   c. **“Text Delimiter”**: The character that encloses the content of each cell in your CSV (e.g., ");

   d. **“Source Collection”**: The collection you wish to export;

   e. **“Mapping”**: Tainacan allows you to map your “metadata” to the “Dublin-Core” standard. In this option, you define whether the previously mapped metadata should include the standard tags;

   f. **“Email me when finished”**: This process may take some time. Check this option to receive an email when the process is complete. You can also follow the “process status” by visiting the “Activities Page”.

6. After setting, click on Run. You will be redirected to the **Repository Activities** screen, where you can track the progress of the *export process*. This screen shows all export processes already performed in this installation, from the most recent to the oldest. When the process is complete, the **log file** and, in case of errors, the **error log file** will be displayed.

   ![Repository Activities](\_assets\images\exportador_06.png)

   a. **“Action Type”**: name of the action running or completed, in this case "CSV Exporter";

   b. **“Progress”**: percentage completed of the action;

   c. **“Queued At”**: date the action entered the queue;

   d. **“Target Collection”**: collection being exported;

   e. **“Exported By”**: user responsible for the export;

   f. **“Log File”**: access to the export log file;

   g. **“Last Update”**: date of the last update of the export process;

   h. **“Download”**: when the process finishes, the system provides the CSV file for download by clicking the link.

7. At the end of the process, click the "Download" link to download the file:

   ![Download](\_assets\images\exportador_07.png)

## Exporting Controlled Vocabularies

1. Access the WordPress *Control Panel*;

   ![Access the control panel](\_assets\images\exportador_01.png)

2. On the left sidebar, click on “Tainacan”;

   ![Select Tainacan](\_assets\images\exportador_02.png)

3. Click on "Exporters";

   ![Select Exporter](\_assets\images\exportador_03.png)

4. Choose the option "Vocabulary CSV";

   ![Select Exporter](\_assets\images\exportador_116.png)

5. On this page, you can configure the following CSV parameters:

   ![Select Exporter](\_assets\images\exportador_117.png)

   a. **“CSV Delimiter”**: The character used to separate each column in your CSV (e.g., , or ;);

   b. **“Source Taxonomy”**: The “taxonomy” you wish to export;

   c. **“Email me when finished”**: This process may take some time. Check this option to receive an email when the process is complete. You can also monitor the “process status” by visiting the “Repository Activities”.

6. After configuring the parameters, click "Run". You will be redirected to the “Repository Activities” screen, where you can track the progress of the export process. This screen shows all “export processes” already performed in this installation, from the most recent to the oldest. When the process is complete, the “log file” and, in case of errors, the “error log file” will be displayed.

   ![Select Exporter](\_assets\images\exportador_118.png)

   a. **“Action Type”**: name of the action running or completed, in this case "Vocabulary CSV Exporter";

   b. **“Progress”**: percentage completed of the action;

   c. **“Queued At”**: date the action entered the queue;

   d. **“Target Taxonomy”**: taxonomy being exported;

   e. **“Log File”**: access to the export log file;

   f. **“Last Update”**: date of the last update of the export process;

   g. **“Download”**: when the process finishes, the system provides the CSV file for download by clicking the link.

7. At the end of the process, click the "Download" link to download the file.

   ![Select Exporter](\_assets\images\exportador_119.png)
