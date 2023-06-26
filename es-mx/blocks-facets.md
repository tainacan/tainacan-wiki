# Blocos de Facetas

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

As **Facetas** são uma boa maneira oferecer uma visão dos seus itens a partir de uma filtragem. No Tainacan, chamamos de _faceta_ uma listagem de itens que se encontra filtrada por algum valor de metadado. Por exemplo, se uma coleção tem um metadado _Gênero Musical_, então os itens da mesma podem ter neste metadado valores como "Rock", "MPB", "Funk", "Rock Alternativo"... Se existe um metadado _Nacionalidade_, então provavelmente os possíveis valores do metadado serão "Argentino", "Brasileiro", "Chileno"... E ao criarmos um filtro para estes metadados, temos a visão de quantos itens possuem cada um destes atributos. Estas são _facetas da lista de itens_.

No caso de metadados tipo Taxonomia, isto ganha uma nova dimensão, já que os termos (os possíveis valores deste metadado) possuem imagem, descrição e uma [página especial própria no Tainacan](/es-mx/tainacan-pages#páginas-de-itens-de-um-termo), que lista todos os itens que possuem aquele termo. Com isto, pode-se criar o conceito de "Exposições" ou "Coleções Virtuais", que agregam itens de mais de uma coleção com atributos em comum a partir de uma taxonomia.

Para exibir estes tipo de listagem, usam-se os blocos de faceta, que além do link para a listagem filtrada, nos mostram quantos itens aquela faceta possui.

> Observe que os Blocos de Facetas são diferentes dos [Blocos de Termos](/es-mx/blocks-terms), pois nem toda faceta precisa ser de uma Taxonomia. Posso ter uma faceta que mostra por exemplo, itens por um atributo de data _Ano de Criação_. Neste caso os nomes das facetas seriam "1999", "2001", "2005"... Outra diferença importante é que nos Blocos de Termos, podemos mostrar termos que ainda não possuem nenhum item associado a ele. Já nas facetas, mostramos aquelas que já são usadas por algum item.

Atualmente o Tainacan oferece um bloco de faceta:

1. [Lista de Facetas](#lista-de-facetas)

---

## Lista de Facetas

### Configurações Iniciais do Bloco

Para começar, escolha a origem da busca por metadados. Você pode procurar tanto por metadados nível repositório quando de uma coleção específica. Feito isto, serão listados os metadados daquela fonte. Agora escolha de qual deles deverão ser carregadas as facetas relacionadas. Se a sua escolha for um metadado tipo Taxonomia, aparecerão as imagens configuradas para os termos e os links levarão para a [Lista de Itens do Termo](/es-mx/tainacan-pages#páginas-de-itens-de-um-termo). Caso contrário, não haverão imagens e os links levarão para uma versão filtrada da [Lista de Itens da Coleção](/es-mx/tainacan-pages#páginas-de-itens-de-uma-coleção) ou da [Lista de Itens do Repositório](/es-mx/tainacan-pages#página-de-items-do-repositório).

![Configurações Iniciais do Bloco](/_assets/gifs/blocks-facets-list-1.gif)

Com as facetas carregadas, podemos realizar algumas configurações que estão disponíveis no painel lateral, quando estamos com o bloco ativo.

<div style="float: right; margin-left: 32px;">

![Lista de Configurações do Bloco Facetas](/_assets/images/blocks_facets_list_1.png ":size=200")

</div>

### Configurações do Gerais das Facetas

Por padrão, são carregadas apenas 12 facetas no seu bloco. Para carregar mais facetas por vez, aumente o **Número Máximo de Facetas** no painel lateral. Também pode-se mostrar um **botão de "Carregar Mais Facetas"** logo abaixo da lista, que fará uma nova requisição e incrementará a lista atual (note que apesar de exibido no editor, este botão terá efeito apenas no documento publicado ou pré-visualizado). Caso queira oferecer uma busca textual simples, habilite a opção de **Mostrar Barra de Busca**.

<div style="max-width: calc(100% - 240px);">

![Configurando o carregamento de facetas](/_assets/gifs/blocks-facets-list-2.gif)

</div>

No caso de facetas oriundas de metadados tipo Taxonomia, são carregas facetas de qualquer termo que seja valor em algum item. Pode ser desejado, porém, que só sejam mostradas facetas de termos **filhos de um termo em específico**, ou apenas termos raiz, aqueles que **não são filhos de nenhum outro termo**. Para configurar isso, pode-se selecionar o **Termo Pai** no painel lateral.

### Opções de Exibição das Facetas

Este bloco oferece três modos de visualização. Para todos eles é possível habilitar ou não a opção de mostrar a contagem de itens ao lado do nome da faceta.

<!-- tabs:start -->

#### ** Grade de Facetas **

O modo padrão é a grade de facetas, que mostrará as miniaturas das facetas (185px _x_ 185px) relacionadas a termos de taxonomias, com seus nomes e número de itens abaixo. Neste modo, você pode configurar se deve ou não ser mostrado a imagem da faceta e se deseja um espaço maior entre as facetas. Lembrando que quanto maior o espaçamento, menos facetas cabem por linha.

![Configurando o bloco no modo grade](/_assets/gifs/blocks-facets-list-3.gif)

#### ** Lista de Facetas **

A lista de facetas permite uma visão mais simplificada, com miniaturas menores (54px _x_ 54px) e os nomes ao lado. Neste modo, você pode escolher não mostrar a miniatura, o ideal para facetas que não possuem imagens.

![Configurando o bloco no modo lista](/_assets/gifs/blocks-facets-list-4.gif)

#### ** Nuvem de Facetas **

Por fim, o bloco de facetas possui um modo especial, inspirado nas _nuvens de tags_ frequentemente vistas em blogs. Com ele, a lista de facetas é mostrada centralizada e cada faceta tem um tamanho de fonte ajustado segundo uma razão de quantos itens estão associados à ela. Assim, facetas com vários itens tem proporcionalmente maior destaque. Esta proporção pode ser ajustada no painel lateral ao lado, na opção **Taxa de Crescimento** das configurações da nuvem.

![Configurando o bloco no modo nuvem](/_assets/gifs/blocks-facets-list-5.gif)

<!-- tabs:end -->
