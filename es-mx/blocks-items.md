# Blocos de Itens

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Os blocos de itens são uma maneira de exibir uma prévia ou destaque de sua coleção, sem precisar expor ao usuário toda a complexidade da [Lista de Itens com a Busca Facetada](/es-mx/tainacan-pages#páginas-de-itens-de-uma-coleção). Atualmente, existem 4 blocos relacionados aos itens do Tainacan:

1. A [Lista de Itens da Coleção](#lista-de-itens-da-coleção) _(Dinâmico)_
2. O [Carrossel de Itens](#carrossel-de-itens)
3. A [Barra de Busca Tainacan](#barra-de-busca)
4. A [Busca Facetada](#busca-facetada) _(A Lista de Itens Completa)_

---

## Lista de Itens da Coleção

Este é um dos blocos mais mais importantes que o Tainacan oferece. Com ele você configura uma "Busca de Itens" para serem exibidos. Mas como assim uma busca? É que ao invés de selecionar itens um a um, você determina quais parâmetros irão filtrar uma listagem de itens. Por isso chamamos este bloco de lista "dinâmica" de itens, pois se novos itens forem inseridos àquela listagem, seu bloco continuará atualizado. Veja a seguir:

### Configurações Iniciais do Bloco

![Selecionando a coleção no bloco](/_assets/gifs/blocks-collection-items-1.gif)

Logo ao inserir o bloco, devo configurar a minha busca. Este processo começa determinando de qual coleção em específico eu vou buscar itens. Feita esta escolha, sou apresentado à minha lista de itens, a mesma que vejo no _Painel Administrativo do Tainacan_. Os itens que eu enchergo nesta listagem serão os que vão ser buscados pelo meu bloco. Aqui posso alterar, por exemplo: **filtros, ordem de busca, quantidade de itens buscados e já aplicar uma busca textual simples**. Feito isso, estas informações serão salvas nas configurações do meu bloco e a lista será renderizada.

<div style="float: right; margin-left: 32px;">

![Lista de Configurações relacionadas ao Cabeçalho da Coleção](/_assets/images/blocks_collection_items_1.jpg ":size=200")

</div>

Com os itens carregados, podemos realizar uma série de configurações que estão disponíveis no painel lateral, quando estamos com o bloco ativo.

### Cabeçalho da Coleção

A primeira opção te permite decorar seu bloco um pouco, acrescentando ao início da lista um cabeçalho da sua coleção. Este deverá ser similar ao que você vê na página de itens, porém uma versão reduzida, com a miniatura da coleção ao meio, a imagem de cabeçalho à direita e o nome da coleção à esquerda. Você pode configurar a cor de fundo do cabeçalho, do texto e escolher se deseja ou não mostrar um rótulo "Coleção" antes do nome da mesma.

### Barra de Busca Tainacan

Caso você esteja oferecendo uma prévia de sua lista de itens mas não quer impedir que o usuário explore-a um pouco mais, você pode oferecer, no próprio bloco, uma barra de busca. Esta barra filtrará os itens mostrados, carregando sempre no máximo a quantidade configurada para a busca. Lembrando que os filtros que tiverem sido aplicados antes continuarão aplicados nesta listagem, assim você pode restringir o que será mostrado. A barra também te permite alternar o sentido da ordenação escolhida como _ascendente_ ou _descendente_ e mudar de página caso hajam mais itens resultantes da sua busca.

![Cabeçalho e Barra de Busca no Bloco](/_assets/gifs/blocks-collection-items-2.gif)

### Configurações da Exibição de Itens

Por fim, é possível escolher quantos itens ao máximo serão exibidos. O padrão nas listagens Tainacan é sempre 12. Abaixo, novas configurações estão disponíveis, e elas estão diretamente relacionadas ao **modo de exibição dos itens**. Sim, nos blocos, também temos diferentes modos de visualizar a lista de itens carregada. Você pode alterar isso no próprio bloco, na barra superior. Este bloco oferece três modos:

<!-- tabs:start -->

#### ** Grade de Itens **

O modo padrão é a grade de itens, que mostrará as miniaturas dos itens (185px _x_ 185px), com seus títulos abaixo. Neste modo, você pode configurar se deve ou não ser mostrado o título do item e se deseja um espaço maior entre os itens. Lembrando que quanto maior o espaçamento, menos itens cabem por linha.

![Configurando o bloco no modo grade](/_assets/gifs/blocks-collection-items-3.gif)

#### ** Lista de Itens **

A lista de itens permite uma visão mais simplificada, com miniaturas menores (54px _x_ 54px) e os títulos ao lado. Neste modo, você pode escolher não mostrar a miniatura, o ideal para coleções que não possuem imagens.

![Configurando o bloco no modo lista](/_assets/gifs/blocks-collection-items-4.gif)

#### ** Mosaico de Itens **

A partir do [Tainacan 0.14 :link:](https://tainacan.org/blog/2019/11/22/tainacan-beta-0-14-e-tainacan-interface-1-6-novo-modo-mosaico-do-bloco-de-itens-e-suporte-ao-wordpress-5-3/ ":ignore"), apresentamos também o modo mosaico. Este modo possui várias configurações extras. É ideal pra quem quer fornecer uma visão mais "artística" da sua lista de coleção. A composição montada pelo mosaico é mais irregular e não se restringe de cortar as imagens para montar vários **grupos de grades de itens**. Nele, os títulos aparecem apenas ao passar o mouse sobre o item, mas eles podem ser escondidos da mesma maneira como no modo grade, assim como o espaçamento entre os itens.

![Configurando o bloco no modo mosaico](/_assets/gifs/blocks-collection-items-5.gif)

Além disso, no modo mosaico, é possível configurar os seguintes detalhes:

- A altura do bloco, via painel lateral ou redimensionando o bloco;
- A grade usada para montar cada grupo do bloco (grades maiores significarão mais itens por grupos, portanto mais imagens menores);
- A densidade do grupo, ou seja a quantidade de itens por coluna em cada grupo;

Estes detalhes impactarão em quão ladrilhado seu mosaico vai ficar. Lembre-se que quanto mais itens, mais densa ficará a composição.

![Mais ajustes do bloco no modo mosaico](/_assets/gifs/blocks-collection-items-6.gif)

Por fim, um último detalhe: Ao cortar as imagens para encaixá-las em suas grades, o mosaico sempre centraliaza a imagem, verticalmente e horizontalmente. Talvez você não queira isso, e prefira, por exemplo, que as imagens fiquem sempre com o topo visível (suponha uma coleção com bustos de várias pessoas). Para isto, existe a opção do _Ponto focal da imagem de fundo_.

<!-- tabs:end -->

---

## Carrossel de Itens

A quebra de linha que o Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção) gera pode não agradar a todos. Para apresentar vários itens em sequência e ainda dar um ar mais "dinâmico" à sua publicação, o bloco de carrossel pode ser o ideal.

### Configurações Iniciais do Bloco

![Selecionando a coleção no bloco](/_assets/gifs/blocks-items-carousel-1.gif)

Da mesma maneira como nas configurações do Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção#configurações-iniciais-do-bloco) você pode configurar uma busca para exibir seus itens no carrossel. Dessa maneira, eles dinamicamente serão buscados de acordo com certos parâmetros de busca, ordenação e filtragem que você definir. Mas neste bloco há também a possibilidade de escolher "a dedo" quais itens você deseja mostrar. Note que as opções são exclusivas. Deve-se usar uma estratégia ou a outra. No caso da seleção manual de itens, você adiciona itens através do modal e os remove na própria lista, clicando no botão com "X" que aparece acima do item inserido.

Com os itens carregados, você pode notar que o carrossel não se move. Na verdade, ele só é ativado na versão publicada ou pré-visualização do post ou página. Aqui no editor, você verá uma lista comum com scroll. Agora, podemos realizar uma série de configurações que estão disponíveis no painel lateral, quando estamos com o bloco ativo.

### Cabeçalho da Coleção

![Vendo o carrossel em ação no tema](/_assets/gifs/blocks-items-carousel-2.gif)

<div style="float: right; margin-left: 32px;">

![Lista de Configurações do Carrossel de Items](/_assets/images/blocks_items_carousel_1.png ":size=200")

</div>

A primeira opção te permite decorar seu bloco um pouco, acrescentando ao início da lista um cabeçalho da sua coleção. Este deverá ser similar ao que você vê na página de itens, porém uma versão reduzida, com a miniatura da coleção ao meio, a imagem de cabeçalho à direita e o nome da coleção à esquerda. Você pode configurar a cor de fundo do cabeçalho, do texto e escolher se deseja ou não mostrar um rótulo "Coleção" antes do nome da mesma.

### Opções do Carrossel

Como em outros blocos, você pode escolher exibir ou não o título dos itens abaixo da miniatura. As demais opções disponiveis pelo carrossel estão relacionadas à sua reprodução. São elas:

- Loop Slides - Fazer com que, ao atingir o final da lista, o carrossel volte para o início;
- Auto Play - Reproduzir automaticamente o carrossel;
- Intervalo de tempo entre cada troca de item;
- Posição das Setas: De que maneira as setas de navegação do carrossel devem estar dispostas;

<br>

---

## Barra de Busca

Este bloco é um pouco diferente dos anteriores. Ao invés de mostrar uma prévia da lista completa de itens, ele te leva para a lista. Pode ser pensado como um atalho para a lista, com uma busca textual. O bloco te oferece basicamente uma barra de busca para estar disponível em sua publicação. Mas o interessante é que você pode configurar esta barra de diversas maneiras.

### Configurações Iniciais do Bloco

Para configurar o bloco é bem simples: Basta você escolher qual será o destino da sua busca: lista de itens do repositório ou lista de itens de uma coleção específica.

![Selecionando a origem da busca no bloco](/_assets/gifs/blocks-search-bar-1.gif)

### Alinhamento da Barra

Logo na parte de cima do bloco, ao lado das tradicionais opções de largura e disposição do bloco, temos três opções de allinhamento, que dizem respeito ao alinhamento da barra dentro do bloco. Por padrão, a barr está centralizada, mas pode ficar alinhada à esquerda ou direita.

### Estilos de Barra

Já no painel lateral, nas configurações do bloco, temos 3 estilos que podem ser aplicados.

- O estilo Padrão oferece uma barra simples de borda cinza e fundo branco;
- O estilo Alternativo, começa sem borda e com um fundo claro transparente. Seu tamanho é menor no início e fica maior ao se passar o mouse sobre a barra ou com um clique. Ao ficar ativa, uma borda branca é exibida;
- Por fim, o modesto estilo "Estiloso" começa apenas com um ícone e um botão largo arredondado, que se expande para mostrar o campo de busca;

![Estilos e alinhamento da barra de busca](/_assets/gifs/blocks-search-bar-2.gif)

### Opções Gerais da Barra

Escolhido o estilo, é possível determinar o quão larga a barra irá ficar em sua versão expandida (o valor é em porcentagem). Também podemos mudar o rótulo exibido na parte de dentro da barra para algo mais específico como "Digite aqui para procurar pinturas...".

Mas não precisamos parar por aí. De maneira similar ao Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção) e [Carrossel de Itens](#carrossel-de-itens), neste bloco você pode exibir um cabeçalho da coleção. Você pode configurar a altura e a cor de fundo do cabeçalho, além da cor e tamanho do texto. Note que combinando estilos e alinhamentos diferentes, a sua barra e o cabeçalho sofrerão algumas alterações:

![Configurações do Cabeçalho da Coleção](/_assets/gifs/blocks-search-bar-3.gif)

!> A Barra de Busca é um dos raros blocos que não permite que haja mais de um do seu tipo inserido no documento. Quando criada uma, a opção de inserir nova estará desabilitada.

---

## Busca Facetada

A **Busca Facetada** é o bloco mais complexo que o plugin oferece. Com ele você exibe, em qualquer pagina ou post, a Lista de Itens completa tal como é vista na [Páginas de Itens](/es-mx/tainacan-pages#as-páginas-especiais-do-tainacan) do Tainacan, incluindo aí a possibilidade de aplicar filtros, fazer a busca avançada, trocar modos de visualização e ordenação, além de paginação. É uma maneira prática de oferecer todos estes recursos em uma página caso você esteja usando um Tema que não implementou suporte para estas páginas especiais que o plugin registra, ou queria customizar bastante o restante do template. Também é uma alternativa mais versátil ao `shortcode` que antes era sugerido para renderizar esta lista. Veja a seguir:

### Configurações Iniciais do Bloco

![Selecionando a coleção no bloco](/_assets/gifs/blocks-faceted-search-1.gif)

Ao inserir o bloco, devo configurar o origem da busca. Ela pode ser a lsita de todos os itens do repositório, a lista de itens de uma coleção ou a lista de itens associados a um termo. Nos dois últimos casos, um modal oferecerá as opções disponíveis para escolha. Feita esta configuração, uma figura ilustrativa irá aparecer onde a Lista será renderizada. Esta é apenas uma demonstração porque a lista completa é muito complexa para ser exibida dentro do editor, mas você pode ver os resultados pré-visualizando a página ou publicando-a.

De imediato é possível que você deseje dar mais espaço para a sua lista, o que pode ser configurado ajustando o bloco para ter **Largura Completa** ou **Largura Ampla**. No painel lateral dezenas de configurações podem ser encontradas. Detalhamos estas à seguir e damos abaixo três exemplos de resultados podem ser alcançados apenas fazendo estes ajustes neste bloco:

<div style="display: flex; align-items: center; justify-contents: space-evenly;">
<div style="margin: 0 12px">

![Exemplo da lista configurada 1](/_assets/images/blocks-faceted-search-2.jpg)

</div>
<div style="margin: 0 12px">

![Exemplo da lista configurada 2](/_assets/images/blocks-faceted-search-3.jpg)

</div>
<div>

![Exemplo da lista configurada 3](/_assets/images/blocks-faceted-search-4.jpg)

</div>
</div>

<!-- tabs:start -->

#### ** Área de Controle da Busca **

A área de controle da busca é como é chamada a barra horizontal que fica acima da região dos filtros e da lista de itens em si. Como vários controles ali disponíveis podem ser demais para o que você deseja mostrar neste bloco, a maioria das opções possibilita limitar alguns destes controles:

- **Esconder o campo de buscar**: esta opção esconde a barra de busca textual e o link de busca avançada juntos.
- **Esconder a busca avançada**: não mostra o link para a busca avançada.
- **Esconder o botão de "Metadados exibidos"**: deixa oculto o botão de "Metadados Exibidos". Vale notar que este botão só está visível na lista caso o modo de visualização atual permita esta exibição, como por exemplo a Tabela e as Fichas.
- **Esconder a região de ordenação**: esconde os _dropdowns_ relacionados ao sentido de ordenação e ao metadado pelo qual a lista é ordenada.
- **Esconder o botão "Ordenar por"**: esconde apenas o _dropdown_ onde são listados diferentes metadados pelos quais se ordena a busca.
- **Mostrar opções de Modos de Visualização em linha**: Ao invés de exibir um _dropdown_ com as opções dos modos de visualização, com esta configuração são exibidos apenas ícones um ao lado do outro para o usuário escolher.
- **Mostrar o modo de visualização "Galeria" (tela cheia) junto com os demais modos de visualização**: por padrão este modo fica listado como um botão ao lado das opções de visualização. Com esta configuração esta diferenciação deixa de existir.
- **Esconder botão "Ver como..."**: faz com que o botão "Ver como..." também chamado de botão de expositores ou links alternativos não apareça. Este botão é responsável por abrir um modal com opções de compartilhamento e acesso da lista de itens em diferentes formatos.
- **Modo de visualização padrão forçado para listas de itens de termos ou repositório**: Diferentemente das coleções, lista de itens de termos ou do repositório possuem um modo de visualização padrão definido pelo sistema: o Mosaico. Com esta opção pode se configurar qual será o modo de visualização inicial.
- **Modos de visualização disponíveis na lista**: Nas coleções, estas opções vem da própria configuração da coleção, e nos temos e repositório, vem do sistema. Aqui podem ser habilitados ou desabilidados por completo alguns modos de visualização para seu tema. Se apenas um modo permanecer ativo, este será o padrão e nenhum botão de selecionar modo de visualização será disponibilizado.
- **Mostrar o botão de filtros na barra de controle**: Exibe o botão de mostrar ou esconder filtros dentro da própria barra de controle da busca.

#### ** Área dos Filtros **

A área de filtros, por padrão, é um painel lateral presente ao lado da lista de itens. Estas opções permitem alterar um pouco do seu comportamento.

- **Esconder filtros**: oculta por completo a barra, sem ter como acessá-la neste bloco.
- **Esconder o botão "Esconder filtros"**: não oferece a opção de ocultar a barra de filtros para o usuário.
- **Começar com filtros escondidos**: faz com que de início o painel de filtros comece escondido, mas ainda podendo ser chamado pelo botão de "Exibir/esconder filtros";
- **Renderizar lista de filtros como uma modal**: mostra os filtros como uma modal de tela cheia ao invés de um painel lateral, sobrepondo-se a lista de itens.

#### ** Área de Paginação **

A paginação é essencial para não pesar a busca com listas de resultados muito grandes. Por padrão, é controlada na barra que fica abaixo da lista de itens, mostrando 12 itens por vez, à menos que configurada de maneira diferente pelo usuário.

- **Esconder a área de paginação**: esconde por completo os controles de paginação, permitindo que apenas uma página seja vista neste bloco, a inicial.
- **Esconder botão "Itens por página"**: oculta o botão onde se seleciona quantos itens por página devem ser exibidos.
- **Esconde o botão "Ir para a página:"**: esconde o botão que permite pular facilmente de uma página para a outra.
- **Número padrão de itens por página**: útil especialmente se alguns dos controles acima foi escondido, aqui pode ser definida a quantidade de itens por página que é carregada, forçando o valor sobre aquele configurado pelo usuário.

#### ** Cores e Tamanhos **

Para além do comportamento e presença de certos elementos no bloco, é possível também configurar a cor de vários componentes da interface, e outras configurações mais estéticas:

- **Tamanho base da fonte**: por padrão todos os elementos da interface são escalados a partir de uma fonte de _16px_. Nesta opção pode-se aumentar ou diminuir este valor para se melhorar a legibilidade da sua lista.
- **Largura do painel de filtros**: O painel de filtros ocupa uma largura máxima de _20%_ da lista de itens (e mínima de _154px_). Nesta configuração pode-se alterar este valor, dando mais ou menos espaço para os filtros.
- **Cor de fundo**: A cor de fundo da lista de itens como um todo;
- **Cor de links e estados ativos**: Na interface, links e alguns ícones aparecem coloridos com uma cor para indicar seu estado ativo. Por padrão esta cor é o _Azul Turquesa_ do Tainacan, mas pode ser configurado por temas para outras cores. Com esta configuração você pode sobrescrever este valor;
- **Cor de fundo de tooltips**: Em geral a cor de links é muito escura para mostrar os tooltips (os balõezinhos que possuem ficas ou resumos de conteúdo). Nesta configuração, pode ser escolhida uma cor mais clara, que sirva para esta função. Isso também afeta o botão de "Esconder Filtros".
- **Cor de fundo dos campos**: esta é a cor que aparecerá no fundo de campos de texto e outros elementos da interface relacionados à entrada de dados. Por padrão é a mesma do plano de fundo e pode ser alterada para uma cor de maior destaque.
- - **Cor de texto dos campos**: esta é a cor que aparecerá no conteúdo de campos de texto e outros elementos da interface relacionados à entrada de dados.
- **Cor da borda dos campos**: a cor da borda de campos de texto, checkbox e similares.
- **Cor dos rótulos**: a cor dos rótulos de campos na interface, tais como os nomes dos filtros.
- **Cor dos cabeçalhos**: a cor dos cabeçalhos, ou seja, dos rótulos principais, tais como os nomes do itens e o indicador da sessão dos filtros.
- **Cor geral de informações**: esta cor por padrão é um cinza utilizado para informações secundárias na interface. Por exemplo, os valores de metadados de menor importância e os ícones dos botões de controle da busca.
- **Cor de fundo dos itens**: a cor de cada unidade item na lista, por padrão é a mesma da cor de fundo.
- **Cor de fundo dos itens com o mouse em cima**: a cor de cada unidade item da lista quando o mouse está sobre ele.
- **Cor de fundo do cabeçalho do item com o mouse em cima**: alguns itens possuem uma cor de destaque para o cabeçalho do seu modo de visualização (como o cartões, por exemplo). Nestes casos, esta será a cor que aparecerá nesta região do item com o mouse acima do mesmo.

<!-- tabs:end -->

!> A Busca Facetada é um dos blocos que não permite que haja mais de um do seu tipo inserido no documento. Quando criada uma, a opção de inserir nova estará desabilitada. Isto ocorre porque ao se realizar qualquer busca a URL do site é complementada com os parâmetros que causariam conflito entre diferentes listas.

---
