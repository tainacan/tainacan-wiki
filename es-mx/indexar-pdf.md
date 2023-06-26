# Indexando Conteúdos em PDF

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Na versão 0.12 disponibilizamos uma abordagem experimental para indexar texto de arquivos no formato _“PDF”_ carregados como documento dos _“itens”_. Isso permite que os usuários utilizem a _“busca textual”_ para pesquisar dentro dos documentos em _“PDF”_.

Porém, esta funcionalidade ainda está em desenvolvimento e pode não funcionar corretamente em todos os contextos, ou em todos os tipos de documentos em _“PDF”_. Por isso, decidimos que por padrão, essa função não está ativada. Mas, é plenamente possível que os usuários ativem essa funcionalidade e nos ajude a melhorá-la.

## Ativando a indexação de texto em documentos no formato PDF

Para ativar essa funcionalidade, você precisa editar seu arquivo ‘wp-config.php’ (este arquivo encontra-se normalmente nas pastas do servidor em que o WordPress e o Tainacan são mantidos, entre em contato com seu suporte técnico se necessário) e adicionar a linha abaixo:

```
define('TAINACAN_INDEX_PDF_CONTENT', true);
```

Uma vez que a funcionalidade foi ativada, arquivos _“PDF”_ carregados como documento dos _“itens”_, a partir deste momento, terão seus conteúdos indexáveis e acessíveis através de _“busca textual”_.

## Buscando no texto indexados dos documentos no formato PDF

O conteúdo textual do _“PDF”_ indexado será buscado através da funcionalidade de “_busca textual do Tainacan”_, que busca em todos os _“metadados”_. Veja mais em: [Mecanismo de Busca](es-mx/search-engine.md)

Você pode, também, buscar somente no conteúdo do “PDF” utilizando a opção de _“Busca Avançada”_. Existe uma nova opção de busca chamada _“Documento”_, que buscará diretamente no conteúdo indexado dos documentos em _“PDF”_ carregados.

## Indexando documentos PDF já existentes

Se no momento que você ativar a funcionalidade de indexação do conteúdo textual de _“PDFs”_ já houver documento no formato “PDF” no seu repositório, você precisa _“executar um comando para indexar os conteúdos dos PDFs já existentes”_. Isso pode ser feito usando a ferramenta WPCLI (entre em contato com seu suporte técnico se necessário).

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
