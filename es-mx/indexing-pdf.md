# Indexando o conteúdo de arquivos PDFs

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

A partir da versão 0.12 foi adicionado, de forma experimental, a operação de indexação do conteúdo de arquivos PDFs que foram inseridos como documento principal em um item. Isso permite que os usuários pesquisem texto dentro dos PDFs.
Como esse recurso ainda está na versão beta (experimental) e pode não funcionar em todos os ambientes ou com todos os arquivos PDF, decidimos desativar essa função por padrão.
Mas encorajamos os nossos usuários a ativar essa nova funcionalidade para nos ajudar a melhorar e amadurecer esse recurso.

## Ativação

Para ativar o recurso, você deve editar o arquivo `wp-config.php` e adicionar a seguinte linha:

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Quando o recurso estiver ativado, os arquivos PDF enviados a partir deste momento terão seu conteúdo indexado e pesquisável.

## Pesquisando

O conteúdo do PDF indexado será pesquisado sempre que você usar o recurso "pesquisa de texto", que pesquisa em todos os metadados. (Se ativo, veja [Search Engine](/dev/search-engine.md))
Você também pode pesquisar o conteúdo dos PDFs usando a pesquisa avançada. Existe uma nova opção chamada "Documento" que pesquisará dentro do conteúdo dos arquivos PDFs indexados.

## Indexando arquivos existentes

Se ao habilitar o recurso já houver arquivos PDF em seu repositório sendo utilizados como documentos dos itens, é possível executar um comando para indexar todos eles. Isso é feito utilizando a ferramenta CLI do WP.

Acesse seu servidor e digite:

```
wp tainacan index-content --collection=all
```

Ou se você deseja indexar os arquivos PDF de apenas de uma coleção em específico:

```
wp tainacan index-content --collection=<id da coleção>
```

Para obter ajuda de como utilizar esse comando, digite:

```
wp tainacan index-content --help
```
