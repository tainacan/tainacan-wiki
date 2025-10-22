# Indexando o conteúdo de arquivos PDFs

A partir da versão 0.12 foi adicionado, de forma experimental, a operação de indexação do conteúdo de arquivos PDFs que foram inseridos como documento principal em um item. Isso permite que os usuários pesquisem texto dentro dos PDFs.

Como esse recurso ainda está na versão beta (experimental) e pode não funcionar em todos os ambientes ou com todos os arquivos PDF, decidimos desativar essa função por padrão.
Mas encorajamos os nossos usuários a ativar essa nova funcionalidade para nos ajudar a melhorar e amadurecer esse recurso.

## Ativação

Para ativar este recurso, visite a sua [Página de Configurações do Tainacan](pt-br/settings-page.md) e mude a opção "Conteúdo de PDFs". Ou, se você tem acessso ao arquivo `wp-config.php`, edite-o e adicione a seguinte linha:

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Quando o recurso estiver ativado, os arquivos PDF *enviados a partir deste momento* terão seu conteúdo indexado e pesquisável.

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
