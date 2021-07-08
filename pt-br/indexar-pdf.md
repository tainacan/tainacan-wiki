# Indexando Conteúdos em PDF

Na versão 0.12 disponibilizamos uma abordagem experimental para indexar texto de arquivos no formato *“PDF”* carregados como documento dos *“itens”*. Isso permite que os usuários utilizem a *“busca textual”* para pesquisar dentro dos documentos em *“PDF”*. 

Porém, esta funcionalidade ainda está em desenvolvimento e pode não funcionar corretamente em todos os contextos, ou em todos os tipos de documentos em *“PDF”*. Por isso, decidimos que por padrão, essa função não está ativada. Mas, é plenamente possível que os usuários ativem essa funcionalidade e nos ajude a melhorá-la. 

## Ativando a indexação de texto em documentos no formato PDF

Para ativar essa funcionalidade, você precisa editar seu arquivo ‘wp-config.php’ (este arquivo encontra-se normalmente nas pastas do servidor em que o WordPress e o Tainacan são mantidos, entre em contato com seu suporte técnico se necessário) e adicionar a linha abaixo: 

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Uma vez que a funcionalidade foi ativada, arquivos *“PDF”* carregados como documento dos *“itens”*, a partir deste momento, terão seus conteúdos indexáveis e acessíveis através de *“busca textual”*. 

## Buscando no texto indexados dos documentos no formato PDF

O conteúdo textual do *“PDF”* indexado será buscado através da funcionalidade de “*busca textual do Tainacan”*, que busca em todos os *“metadados”*. Veja mais em: [Mecanismo de Busca](pt-br/search-engine.md)

Você pode, também, buscar somente no conteúdo do “PDF” utilizando a opção de *“Busca Avançada”*. Existe uma nova opção de busca chamada *“Documento”*, que buscará diretamente no conteúdo indexado dos documentos em *“PDF”* carregados. 

## Indexando documentos PDF já existentes

Se no momento que você ativar a funcionalidade de indexação do conteúdo textual de *“PDFs”* já houver documento no formato “PDF” no seu repositório, você precisa *“executar um comando para indexar os conteúdos dos PDFs já existentes”*. Isso pode ser feito usando a ferramenta WPCLI (entre em contato com seu suporte técnico se necessário). 

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
