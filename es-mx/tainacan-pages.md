<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Ver no Tema" 
		src="/es-mx/_assets/images/icon_see.png"
		width="42"
		height="42">
</div>

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

# Páginas do Tainacan

Com o plugin Tainacan ativado em seu WordPress, algumas páginas especiais passam a ser criadas pelo próprio plugin. São elas:

- Página de Coleções `/colecoes`;
- Página de todos os Items do Repositório `/itens`;
- Páginas de Itens de uma Coleção de slug _nome-da-colecao_ `/nome-da-colecao`;
- Páginas de Itens com algum metadado Taxonomia de slug _nome-da-taxonomia_ que tenham um Termo de slug _nome-do-termo_ `/nome-da-taxonomia/nome-do-termo`;

A medida que você cria Coleções, Itens e Termos, automaticamente já poderá ter acesso no seu site nestes endereços. Em geral, no painel administrativo do Tainacan, você encontra links para estas páginas em botões com ícones de olho (como o que se encontra no topo direito desta página). Para além disso, também é possível configurar suas _próprias páginas_ apresentando suas coleções ou explicando algo sobre seu repositório. São dois caminhos diferentes, mas que estão à sua disposição graças à **integração do Tainacan com o WordPress**. Saiba mais a seguir:

- [Páginas Especiais Geradas pelo Tainacan](#as-páginas-especiais-do-Tainacan)
- [Criando suas Próprias páginas com Blocos Gutenberg](/es-mx/gutenberg-blocks)

## As páginas Especiais do Tainacan

![Conjunto de captura de telas exemplificando as páginas especiais do Tainacan, no  tema Tainacan Interface](/_assets/images/paginas_especiais_tainacan.png)

### Página de Coleções

`/colecoes` ou `/collections`, caso sua instalação esteja em inglês.

Disponível no seu site a partir do momento em que é criada uma coleção, esta página lista suas coleções com opções de ordenação, busca, paginação e visualização em tabela ou cartões. É uma boa maneira de prover ao público uma visão sistemática de quais coleções existem no seu repositório.

### Página de Items do Repositório

`/itens` ou `/items`, caso sua instalação esteja em inglês.

Disponível no seu site a partir do momento em que algum item é criado em qualquer coleção, esta página lista **todos os itens de todos as coleções do repositório**. Ela apresentará alguns modos de visualização padrão, opções de ordenação pelos metadados nível repositório e a listagem de todos os filtros de todas as coleções, além de um filtro de coleções. Embora seja poderoso o acesso à todos os itens, _recomendamos seu uso com cautela_. A filtragem por um metadado específico de uma coleção, por exemplo, esconderá da lista os itens que não possuem aquele metadado, o que pode ser confuso para quem não conhece a organização do seu repositório.

### Páginas de Itens de uma Coleção

`/nome-da-colecao`

Esta é em geral a página mais importante de uma instalação Tainacan. Nela você tem acesso à busca facetada de itens dentro de uma coleção. Destacamos os recursos disponíveis:

- Cabeçalho da Coleção (cuja imagem, cor e descrição são configuráveis no formulário de edição de coleção);
- Filtros (os mesmos disponíveis no painel administrativo, deste que estejam públicos);
- Busca Textual Simples e Busca Avançada;
- Ordenação ascendente ou descrescente por todos os metadados públicos;
- Modos de visualização incluindo o modo Tela Cheia (são habilitados ou desabilitados também no formulário de edição da coleção);
- Modal de URLs relacionadas, provendo acesso à mesma lista em diferentes formatos como JSON, HTML, CSV, PDF (caso [o plugin](/es-mx/plugin-pdf-exposer) esteja instalado) e com a possibilidade de se realizar mapeamentos;

Observe que a lista de itens é então a página de uma coleção em si. Se você clicar em uma coleção na _Lista de Coleções_ do site ela irá para esta lista. Porém, você pode preferir ter uma [página customizada de apresentação](/es-mx/gutenberg-blocks), por exemplo, para só então redirecionar para sua lista de itens. Isto pode ser modificado também no formulário de configuração da sua coleção, na opção "Página de Capa".

### Páginas de Itens de um Termo

`/nome-da-taxonomia/nome-do-termo`

Similar à lista de itens de uma coleção, esta página mostra todos os itens que possuem algum metadado tipo taxonomia e que tenham neste metadado um termo específico. A principal diferença da lista da coleção é que o cabeçalho terá a imagem e descrição do termo, configurável no seu formulário de edição.

Esta página é uma excelente maneira de trazer o conceito de "Exposições" multi-coleção para o seu repositório. Por exemplo, se você tiver uma coleção de pinturas e uma coleção de arquitetura com diferentes metadados, mas tiver em ambos um metadado da Taxonomia **Movimento artístico**, você pode ver todos os itens do termo **Movimento renascentista** em um só lugar, agregando aí itens das duas coleções.
