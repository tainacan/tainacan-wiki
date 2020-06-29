# Indexando Conteúdos em PDF

Na versão 0.12 nos disponibilizamos uma abordagem experimental para indexar texto de arquivos no formato PDF carregados como documento dos itens. Isso permitiu que os usuários utilizem a busca textual para pesquisar dentro dos documentos em PDF.

Porém esta funcionalidade ainda está em desenvolvumento, e pode não funcionar corretamente em todos os contextos ou em todos os tipos de documentos em PDF,  por isso nós decidimos que por padrão essa função não está atiavada. Mas é plenamenta possível que os usuários ativem essa funcionalidade e nos ajude a melhorá-la.

## Ativando a indexação de texto em documentos no formato PDF

Para ativar essa funcionalidade você precisa editar seu arquivo 'wp-config.php' (este arquivo encontra-se normalmente nas pastas do servidor em que o Wordpress e o Tainacan são manttidos, entre em contato com seu suporte técnico se necessário) e adicionar a linha abaixo:

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Uma vez que a funcionalidade foi ativada, arquivos PDF cattegados como documento dos itens a partir deste momento terão seus conteúdos indexáveis e acessíveis através de bsuca textual.

## Buscando no texto indexados dos documentos no formato PDF

O conteúdo textual do PDF indexado será buscado através da funcionalidade de "busca textual do Tainacan", que busca em todos os metadados. (Veja mais em: [Mecanismo de Busca](pt-br/search-engine.md))

Você pode também buscar somente no conteúdo do PDF utilizando a opção de Busca Avançada. Existe uma nova opção de bsuca chamada "Documento" que  buscará diretamente no conteúdo indexado dos documento em PDF carregados.

## Indexando documentos PDF já existentes

Se no momento que você ativar a funcionalidade de indexação do conteúdo textual de PDFs já houverem documento no formato PDF no seu repositório, você precisa executar um comando para indexar os conteúdo dos PDFs já existentes. Isso pode ser feito usando a ferramnta WPCLI (entre em contato com seu suporte técnico se necessário).

Acesse seu servidor e digite:

```
wp tainacan index-content --collection=all
```

Ou se deseja indexar os documentos em PDF de uma coleção específica:

```
wp tainacan index-content --collection=<id of collection>
```

Digite o seguinte para informações sobre como usar o comando "index-content":

```
wp tainacan index-content --help
```
