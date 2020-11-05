# Tainacan CLI

## WP-CLI Commands
The following WP-CLI commands are supported by Tainacan:

```
    wp tainacan garbage-collector
    wp tainacan move-attachments-to-items-folder
    wp tainacan collection
    wp tainacan index-content
    wp tainacan control-metadata
```


### wp tainacan garbage-collector
Clean your Tainacan installation removing unused files and database entries
#### OPTIONS:
| options           | description |
|-------------------|-------------|
|--run              | By default, this command only looks for garbage and output a report, but does not delete anything. If you want to really delete the garbage, pass --run |
|--deep             | More aressive approach finding garbage. In some cases it could delete something related to other parts of the website. Currently, deep mode deletes all attachments with broken parent IDs, regardless whether they were uploaded via tainacan or not |
|--skip-attachments | Do not try to find orphan and unused attachments |
|--skip-items       | Do not try to find orphan and unused items |
|--skip-taxonomies  | Do not try to find orphan and unused taxonomies |
|--skip-metadata    | Do not try to find orphan and unused metadata |
|--skip-transients  | Do not try to find tainacan transients |
|--yes              | Skip confirmation before execution |

EXAMPLES:
```
wp tainacan garbage-collector --run --deep --yes
```


### wp tainacan move-attachments-to-items-folder
Moves the items documents and attachments to a $collection_id/$item_id directory structure.
This is only to be used to update the structure of intallations made before version 0.11 of Tainacan, when this structure was implemented.

#### OPTIONS:
| options    | description |
|------------|-------------|
|--dry-run   | Look for attachments but don't move them, just output a report |

EXAMPLES:
```
wp tainacan index-content --collection=all
```

### wp tainacan collection list
Show a list of collections

### wp tainacan collection clean
remove items of specific collection.

#### OPTIONS:
| options        | description |
|----------------|-------------|
|<collection_id> | specifies the collection that will have your items removed. |
|--permanently   | skip trash and permanently delete items. |
|--dry-run       | only count the total of item which will remove, just output a report. |


EXAMPLES:
```
wp tainacan collection clean 1201 --permanently
```


### wp tainacan index-content
index content of documents

#### OPTIONS:
| options             | description |
|---------------------|-------------|
|--collection=<value> | <value> Specific ID of the collection into which the document content of the items will be indexed, or 'all' to all collections. |
|--dry-run            | only count the total of item which will index, just output a report |


### wp tainacan control-metadata
recalculete values of metadata control

#### OPTIONS:
| options              | description |
|----------------------|-------------|
|--collection=<value> | <value> Collection specific ID into which the control metadata will be recalculated, or 'all' for all collections. |
|--dry-run             | only count the total of item which will recalculated, just output a report |
|--recreate-control-metadata-definitions | recreate the control metadata collection definitions |

EXAMPLES:
```
wp tainacan control-metadata --collection=all --recreate-control-metadata-definitions
```