# Blocos de Itens

Os blocos de itens são uma maneira de exibir uma prévia ou destaque de sua coleção, sem precisar expor ao usuário toda a complexidade da [Lista de Itens com a Busca Facetada](/pt-br/tainacan-pages#páginas-de-itens-de-uma-coleção). Atualmente, há 4 blocos relacionados aos itens do Tainacan:

1. A [Lista de Itens da Coleção](#lista-de-itens-da-coleção) *(Dinâmico)*
2. O [Carrossel de Itens](#carrossel-de-itens)
3. A [Barra de Busca Tainacan](#barra-de-busca-tainacan)
4. A [Lista de Itens](#lista-de-itens) *(Estático)*

---------


## Lista de Itens da Coleção

Este é provavelmente o bloco mais complexo e também mais importante que o Tainacan oferece. Com ele você configura uma "Busca de Itens" para serem exibidos. Mas como assim uma busca? É que ao invés de selecionar itens um a um, você determina quais parâmetros irão filtrar uma listagem de itens. Por isso chamamos este bloco de lista "dinâmica" de itens, pois se novos itens forem inseridos àquela listagem, seu bloco continuará atualizado. Veja a seguir:

### Configurações Iniciais do Bloco

![Selecionando a coleção no bloco](/_assets/gifs/blocks-collection-items-1.gif)

Logo ao inserir o bloco, devo configurar a minha busca. Este processo começa determinando de qual coleção em específico eu vou buscar itens. Feita esta escolha, sou apresentado à minha lista de itens, a mesma que vejo no _Painel Administrativo do Tainacan_. Os itens que eu enchergo nesta listagem serão os que vão ser buscados pelo meu bloco. Aqui posso alterar, por exemplo: **filtros, ordem de busca, quantidade de itens buscados e já aplicar uma busca textual simples**. Feito isso, estas informações serão salvas nas configurações do meu bloco e a lista será renderizada.

<div style="float: right; margin-left: 32px;">

![Lista de Configurações relacionadas ao Cabeçalho da Coleção](/_assets/images/blocks_collection_items_1.jpg ':size=200')

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

A partir do [Tainacan 0.14 :link:](https://tainacan.org/blog/2019/11/22/tainacan-beta-0-14-e-tainacan-interface-1-6-novo-modo-mosaico-do-bloco-de-itens-e-suporte-ao-wordpress-5-3/ ':ignore'), apresentamos também o modo mosaico. Este modo possui várias configurações extras. É ideal pra quem quer fornecer uma visão mais "artística" da sua lista de coleção. A composição montada pelo mosaico é mais irregular e não se restringe de cortar as imagens para montar vários **grupos de grades de itens**. Nele, os títulos aparecem apenas ao passar o mouse sobre o item, mas eles podem ser escondidos da mesma maneira como no modo grade, assim como o espaçamento entre os itens.

![Configurando o bloco no modo mosaico](/_assets/gifs/blocks-collection-items-5.gif)

Além disso, no modo mosaico, é possível configurar os seguintes detalhes:
* A altura do bloco, via painel lateral ou redimensionando o bloco;
* A grade usada para montar cada grupo do bloco (grades maiores significarão mais itens por grupos, portanto mais imagens menores);
* A densidade do grupo, ou seja a quantidade de itens por coluna em cada grupo;

Estes detalhes impactarão em quão ladrilhado seu mosaico vai ficar. Lembre-se que quanto mais itens, mais densa ficará  a composição.

![Mais ajustes do bloco no modo mosaico](/_assets/gifs/blocks-collection-items-6.gif)

Por fim, um último detalhe: Ao cortar as imagens para encaixá-las em suas grades, o mosaico sempre centraliaza a imagem, verticalmente e horizontalmente. Talvez você não queira isso, e prefira, por exemplo, que as imagens fiquem sempre com o topo visível (suponha uma coleção com bustos de várias pessoas). Para isto, existe a opção do _Ponto focal da imagem de fundo_.

<!-- tabs:end -->

---------


## Carrossel de Itens

A quebra de linha que o Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção) gera pode não agradar a todos. Para apresentar vários itens em sequência e ainda dar um ar mais "dinâmico" à sua publicação, o bloco de carrossel pode ser o ideal. 

### Configurações Iniciais do Bloco

![Selecionando a coleção no bloco](/_assets/gifs/blocks-items-carousel-1.gif)

Da mesma maneira como nas configurações do Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção#configurações-iniciais-do-bloco) você pode configurar uma busca para exibir seus itens no carrossel. Dessa maneira, eles dinamicamente serão buscados de acordo com certos parâmetros de busca, ordenação e filtragem que você definir. Mas neste bloco há também a possibilidade de escolher "a dedo" quais itens você deseja mostrar. Note que as opções são exclusivas. Deve-se usar uma estratégia ou a outra. No caso da seleção manual de itens, você adiciona itens através do modal e os remove na própria lista, clicando no botão com "X" que aparece acima do item inserido.

Com os itens carregados, você pode notar que o carrossel não se move. Na verdade, ele só é ativado na versão publicada ou pré-visualização do post ou página. Aqui no editor, você verá uma lista comum com scroll. Agora, podemos realizar uma série de configurações que estão disponíveis no painel lateral, quando estamos com o bloco ativo. 

### Cabeçalho da Coleção 

![Vendo o carrossel em ação no tema](/_assets/gifs/blocks-items-carousel-2.gif)

<div style="float: right; margin-left: 32px;">

![Lista de Configurações do Carrossel de Items](/_assets/images/blocks_items_carousel_1.png ':size=200')

</div>

A primeira opção te permite decorar seu bloco um pouco, acrescentando ao início da lista um cabeçalho da sua coleção. Este deverá ser similar ao que você vê na página de itens, porém uma versão reduzida, com a miniatura da coleção ao meio, a imagem de cabeçalho à direita e o nome da coleção à esquerda. Você pode configurar a cor de fundo do cabeçalho, do texto e escolher se deseja ou não mostrar um rótulo "Coleção" antes do nome da mesma.

### Opções do Carrossel

Como em outros blocos, você pode escolher exibir ou não o título dos itens abaixo da miniatura. As demais opções disponiveis pelo carrossel estão relacionadas à sua reprodução. São elas:

* Loop Slides - Fazer com que, ao atingir o final da lista, o carrossel volte para o início;
* Auto Play - Reproduzir automaticamente o carrossel;
* Intervalo de tempo entre cada troca de item;
* Posição das Setas: De que maneira as setas de navegação do carrossel devem estar dispostas;

<br>

---------


## Barra de Busca

Este bloco é um pouco diferente dos anteriores. Ao invés de mostrar uma prévia da lista completa de itens, ele te leva para a lista. Pode ser pensado como um atalho para a lista, com uma busca textual. O bloco te oferece basicamente uma barra de busca para estar disponível em sua publicação. Mas o interessante é que você pode configurar esta barra de diversas maneiras.

### Configurações Iniciais do Bloco

Para configurar o bloco é bem simples: Basta você escolher qual será o destino da sua busca: lista de itens do repositório ou lista de itens de uma coleção específica. 

![Selecionando a origem da busca no bloco](/_assets/gifs/blocks-search-bar-1.gif)

### Alinhamento da Barra

Logo na parte de cima do bloco, ao lado das tradicionais opções de largura e disposição do bloco, temos três opções de allinhamento, que dizem respeito ao alinhamento da barra dentro do bloco. Por padrão, a barr está centralizada, mas pode ficar alinhada à esquerda ou direita.

### Estilos de Barra

Já no painel lateral, nas configurações do bloco, temos 3 estilos que podem ser aplicados. 

* O estilo Padrão oferece uma barra simples de borda cinza e fundo branco;
* O estilo Alternativo, começa sem borda e com um fundo claro transparente. Seu tamanho é menor no início e fica maior ao se passar o mouse sobre a barra ou com um clique. Ao ficar ativa, uma borda branca é exibida;
* Por fim, o modesto estilo "Estiloso" começa apenas com um ícone e um botão largo arredondado, que se expande para mostrar o campo de busca;

![Estilos e alinhamento da barra de busca](/_assets/gifs/blocks-search-bar-2.gif)

### Opções Gerais da Barra

Escolhido o estilo, é possível determinar o quão larga a barra irá ficar em sua versão expandida (o valor é em porcentagem). Também podemos mudar o rótulo exibido na parte de dentro da barra para algo mais específico como "Digite aqui para procurar pinturas...".

Mas não precisamos parar por aí. De maneira similar ao Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção) e [Carrossel de Itens](#carrossel-de-itens), neste bloco você pode exibir um cabeçalho da coleção. Você pode configurar a altura e a cor de fundo do cabeçalho, além da cor e tamanho do texto. Note que combinando estilos e alinhamentos diferentes, a sua barra e o cabeçalho sofrerão algumas alterações:

![Configurações do Cabeçalho da Coleção](/_assets/gifs/blocks-search-bar-3.gif)

!> A Barra de Busca é um dos raros blocos que não permite que haja mais de um do seu tipo inserido no documento. Quando criada uma, a opção de inserir nova estará desabilitada.

---------

## Lista de Itens

O Bloco Lista de Itens foi o primeiro bloco disponibilizado pelo Tainacan, ainda em suas iniciais versões Beta. Nele, você seleciona manualmente quais itens deseja exibir. 

!> A grande desvantagem - e razão pela qual hoje não recomendamos seu uso - é que este é um **bloco estático**. Isso significa que os itens selecionados (título e imagem) serão salvos na configuração do bloco no post e não são atualizados se vc fizer alguma mudança na coleção. Suponhamos que você escolheu alguns itens, salvou seu post e alguns dias depois alterou o título ou a imagem daquele item. Ao voltar para o bloco, estas mudanças não estarão refletidas. Por isso recomendamos seu uso com cautela e se possível o uso do Bloco [Lista de Itens da Coleção](#lista-de-itens-da-coleção) ou do [Carrossel de Itens](#carrossel-de-itens) em seu lugar.

### Configurações Iniciais do Bloco

Para começar, escolha se seus itens serão escolhidos da lista de todos os itens do repositório ou da lista de itens de uma coleção. Em seguida, escolha os itens que serão adicionados ao bloco. Você adiciona itens através do modal e os remove na própria lista, clicando no botão com "X" que aparece acima do item inserido.

Com os itens carregados, podemos realizar algumas de configurações que estão disponíveis no painel lateral, quando estamos com o bloco ativo. 

![Configurações Inicias do Bloco](/_assets/gifs/blocks-items-list-1.gif)

### Configurações da Exibição de Itens

Este bloco oferece dois modos de visualização, disponíveis na barra superior do bloco:

<!-- tabs:start -->

#### ** Grade de Itens **

O modo padrão é a grade de itens, que mostrará as miniaturas dos itens (185px _x_ 185px), com seus títulos abaixo. Neste modo, você pode configurar se deve ou não ser mostrado o título do item e se deseja um espaço maior entre os itens. Lembrando que quanto maior o espaçamento, menos itens cabem por linha.

#### ** Lista de Itens **

A lista de itens permite uma visão mais simplificada, com miniaturas menores (54px _x_ 54px) e os títulos ao lado. Neste modo, você pode escolher não mostrar a miniatura, o ideal para coleções que não possuem imagens. 

<!-- tabs:end -->