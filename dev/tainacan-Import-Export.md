# Tainacan Import/Export System

Tainacan features a robust system for data import and export, essential for managing digital repositories. This system is modular, allowing extension with different formats and data sources.

## 1. Import System

Tainacan's import system is designed to bring data from various sources into the repository, transforming them into items, metadata, and taxonomy terms. It operates through import sessions, which can be configured and executed in the background.

### Main Import Components

- **Importers**: Define the logic to read and interpret data from a specific format or source.
    - **Code Reference:**
        - `src/classes/importer/class-tainacan-importer.php`: Base class for all importers.
        - `src/classes/importer/class-tainacan-csv.php`: CSV file importer.
        - `src/classes/importer/class-tainacan-oaipmh-importer.php`: Importer via the OAI-PMH protocol.
        - `src/classes/importer/class-tainacan-old-tainacan.php`: Legacy Tainacan importer.
        - `src/classes/importer/class-tainacan-youtube-importer.php`: YouTube importer.
        - `src/classes/importer/term-importer/class-tainacan-term-importer.php`: Term importer.
        - `src/classes/importer/class-tainacan-test-importer.php`: Test importer.

- **Importer Handler**: Manages the import sessions' lifecycle.
    - **Code Reference:** `src/classes/importer/class-tainacan-importer-handler.php`

- **Import Sessions**: Store information on progress, settings, and errors.
    - **REST API Endpoints:**
        - `/importers/session` (POST to create, GET to retrieve status, POST to update)
        - `/importers/session/{session_id}/file` (POST to attach files)
        - `/importers/session/{session_id}/run` (POST to start)

- **Background Processes**: Allow imports to be executed without impacting the user interface.
    - **Code Reference:**
        - `src/classes/generic-background-process/class-tainacan-bg-generic.php`
        - `src/classes/importer/class-tainacan-bg-importer.php`
        - Database table `wp_tnc_bg_process`
        - `src/classes/api/endpoints/class-tainacan-rest-background-processes-controller.php`

### Import Flow (Simplified Example via REST API)

1. **Choose Importer**: Via interface or endpoint `/importers/available`.
2. **Create Session**: POST to `/importers/session` with `importer_slug`.
3. **Configure Session**: File upload via `/importers/session/{session_id}/file`, set target collection (`collection_id`) and options.
4. **Metadata Mapping**: Use endpoints `/importers/session/{session_id}/source_info` and `/importers/session/{session_id}/get_mapping/{collection_id}`.
5. **Start Import**: POST to `/importers/session/{session_id}/run`.
6. **Monitor Progress**: Use `/bg-processes` endpoint or the session itself.

---

## 2. Export System

The export system allows data to be extracted from the repository in different formats and schemas.

### Main Export Components

- **Exporters**: Define how to format items and metadata for output.
    - **Code Reference:**
        - `src/classes/exporters/class-tainacan-exposer.php`: Base class.
        - `src/classes/exporters/class-tainacan-csv.php`: CSV exporter.
        - `src/classes/exporters/class-tainacan-json-flat.php`: Flat JSON exporter.
        - `src/classes/exporters/class-tainacan-json-ld.php`: JSON-LD exporter.
        - `src/classes/exporters/class-tainacan-html.php`: HTML exporter.
        - `src/classes/exporters/class-tainacan-xml.php`: XML exporter.
        - `src/classes/exporters/class-tainacan-txt.php`: TXT exporter.
        - `src/classes/exporters/class-tainacan-oai-pmh.php`: OAI-PMH exporter.
        - `src/classes/exporter/class-tainacan-term-exporter.php`: Term exporter.

- **Exporters Handler**: Manages the list and lifecycle of exporters.
    - **Code Reference:** `src/classes/exposers/class-tainacan-exposers-handler.php`

- **Metadata Mappers (Mappers_Handler, Metadatum Mappers)**: Allow exporting data in external standards such as Dublin Core.
    - **Code Reference:**
        - `src/classes/mappers/class-tainacan-mappers-handler.php`
        - `src/classes/mappers/class-tainacan-dublin-core.php`
        - **REST API Endpoint:** `/metadatum-mappers`

- **Export Sessions**: Manage export processes.
    - **REST API Endpoint:** `/exporters/session`

- **Background Processes**: Ensure large exports do not affect performance.
    - **Code Reference:** `src/classes/exporter/class-tainacan-bg-exporter.php`

### Export Flow (Simplified Example via REST API)

1. **Choose Exporter**: Through the interface or endpoint `/exporters/available`.
2. **Create Session**: POST to `/exporters/session` with `exporter_slug`.
3. **Configure Session**: Define collection (`collection`), options (`options`), and optionally `send_email`.
4. **Start Export**: POST to `/exporters/session/{session_id}/run`.
5. **Download File**: Available via the interface or the `/bg-processes/file` endpoint after completion.
