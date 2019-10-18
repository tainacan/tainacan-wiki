# Páginas do Tainacan

Com o plugin Tainacan ativado em seu WordPress, algumas páginas especiais passam a ser criadas pelo próprio plugin. São elas:

* Página de Coleções `/colecoes`;
* Página de todos os Items do Repositório `/itens`;
* Páginas de Itens de uma Coleção de slug *nome-da-colecao* `/nome-da-colecao`;
* Páginas de Itens com algum metadado Taxonomia que tenha como valor um Termo de slug *nome-do-termo* `/nome-do-termo`;

A medida que você cria Coleções, Items e Termos, automaticamente já poderá ter acesso à elas no seu site nestes endereços. Para além disso, também é possível configurar suas *próprias páginas* apresentando suas coleções ou explicando algo sobre seu repositório. São dois caminhos diferentes, mas que estão à sua disposição graças à **integração do Tainacan com o WordPress**. Saiba mais a seguir:

* [Páginas Especiais do Tainacan](#as-páginas-especiais-do-Tainacan)
* [Criando suas Próprias páginas com Blocos Gutenberg](/pt-br/gutenberg-blocks)

## As páginas especiais do Tainacan

### Página de Coleções

`/colecoes` ou `/collections`, caso sua instalação esteja em inglês.

Disponível no seu site a partir do momento em que é criada uma coleção, esta página lista suas coleções com opções de ordenação, busca, paginação e visualização em tabela ou cartões. É uma boa maneira de prover ao público uma visão sistemática de quais coleções existem no seu repositório.

### Página de Items do Repositório

`/itens` ou `/items`, caso sua instalação esteja em inglês.

Disponível no seu site a partir do momento em que algum item é criado em qualquer coleção, esta página lista todos os itens de todos as coleções do repositório. Ela apresentará alguns modos de visualização padrão, opções de ordenação pelos metadados nível repositório e a listagem de todos os filtros de todas as coleções, além de um filtro de coleções. Embora seja poderoso o acesso à todos os itens, recomendamos seu uso com cautela. A filtragem por um metadado específico de uma coleção, por exemplo, esconderá da lista os itens que não possuem aquele metadado, o que pode ser confuso para quem não conhece a organização do seu repositório.

### Páginas de Itens de uma Coleção

`/nome-da-colecao`

Esta é em geral a página mais importante de uma instalação Tainacan. Nela você tem acesso à busca facetada de itens dentro de uma coleção. Destacamos os recursos disponíveis:

* Cabeçalho da Coleção (cuja imagem, cor e descrição são configuráveis no formulário de edição de coleção);
* Filtros (os mesmos disponíveis no painel administrativo, deste que estejam públicos);
* Busca Textual Simples e Busca Avançada;
* Ordenação ascendente ou descrescente por todos os metadados públicos;
* Modos de visualização incluindo o modo Tela Cheia (são habilitados ou desabilitados também no formulário de edição da coleção);
* Modal de URLs relacionadas, provendo acesso à mesma lista em diferentes formatos como JSON, HTML, CSV, PDF (caso [o plugin](/pt-br/plugin-pdf-exposer) esteja instalado) e com a possibilidade de se realizar mapeamentos;

### Páginas de Itens de um Termo

