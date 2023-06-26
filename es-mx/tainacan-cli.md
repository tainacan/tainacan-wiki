# Tainacan CLI

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

O WP-CLI (https://wp-cli.org/) é a interface de linha de comando para WordPress. Você pode atualizar plugins, configurar instalações e muito mais, sem usar um navegador web.

## WP-CLI Commands

Os seguintes comandos para o WP-CLI são suportados pelo Tainacan:

```
    wp tainacan garbage-collector
    wp tainacan move-attachments-to-items-folder
    wp tainacan collection
    wp tainacan index-content
    wp tainacan control-metadata
```

### wp tainacan garbage-collector

Remover entidades e arquivos não utilizados pela instalação do Tainacan

#### OPTIONS:

| options            | description                                                                                                                                                                                                                                                              |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| --run              | Por padrão, este comando apenas emite um relatório, mas não elimina nada. Se quiser realmente apagar o lixo, passe --run                                                                                                                                                 |
| --deep             | Abordagem mais agresiva para encontrar lixo. Em alguns casos, poder apagar algo relacionado com outras partes do site. Atualmente, o modo deep apaga todos os anexos com os IDs de post não encontrados, independentemente de terem sido carregados pelo tainacan ou não |
| --skip-attachments | Ignorar anexos não utilizados                                                                                                                                                                                                                                            |
| --skip-items       | Ignorar itens não utilizados                                                                                                                                                                                                                                             |
| --skip-taxonomies  | Ignorar taxonomias não utilizados                                                                                                                                                                                                                                        |
| --skip-metadata    | Ignorar metadados não utilizados                                                                                                                                                                                                                                         |
| --skip-transients  | Ignorar tainacan transients                                                                                                                                                                                                                                              |
| --yes              | Confirmar as operações antes da execução                                                                                                                                                                                                                                 |

Exemplo:

```
wp tainacan garbage-collector --run --deep --yes
```

### wp tainacan move-attachments-to-items-folder

Move os documentos e anexos dos itens para uma estrutura de directório usando: `$collection_id/$item_id`.
Isto serve apenas para actualizar a estrutura das intalações feitas antes da versão 0.11 de Tainacan, quando esta estrutura foi implementada.

#### OPTIONS:

| options   | description                                                   |
| --------- | ------------------------------------------------------------- |
| --dry-run | Procure os anexos mas não os mova, apenas mostre um relatório |

Exemplo:

```
wp tainacan index-content --collection=all
```

### wp tainacan collection list

Mostrar uma lista de coleções

### wp tainacan collection clean

remover itens de coleção específica.

#### OPTIONS:

| options         | description                                                             |
| --------------- | ----------------------------------------------------------------------- |
| <collection_id> | especifica a coleção que terá seus itens removidos.                     |
| --permanently   | excluir permanentemente os itens, ignorando a lixeira.                  |
| --dry-run       | contar o total do itens que serão removido, apenas mostra um relatório. |

Exemplo:

```
wp tainacan collection clean 1201 --permanently
```

### wp tainacan index-content

indexar o conteúdo do documento dos itens

#### OPTIONS:

| options              | description                                                                                                                         |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| --collection=<value> | <value> ID da coleção na qual o conteúdo do documento dos itens será indexado, ou "all" para que todas as coleções sejam indexadas. |
| --dry-run            | Contar o total de itens que serão indexados, apenas mostra um relatório.                                                            |

### wp tainacan control-metadata

recalcular os valores dos metadados de controle

#### OPTIONS:

| options                                 | description                                                                                                 |
| --------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| --collection=<value>                    | <value> ID da coleção na qual os metadados de controle serão recalculados, ou 'all' para todas as coleções. |
| --dry-run                               | Contar o total de itens que terão os metadados de controle recalculados, apenas mostra um relatório.        |
| --recreate-control-metadata-definitions | recriar as definições dos metadados de controle                                                             |

Exemplo:

```
wp tainacan control-metadata --collection=all --recreate-control-metadata-definitions
```
