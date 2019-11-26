# Blocos Gutenberg

## O que é esse tal Gutenberg?

No final de 2018, o WordPress 5.0 apresentou ao mundo seu novo editor de Posts e Páginas, apelidado de Gutenberg: 

<div style="text-align: center; font-size: 1.5rem;">

[https://br.wordpress.org/gutenberg/](https://br.wordpress.org/gutenberg/ ':ignore').

</div>

Focado em fornecer uma maneira dinâmica e visual para a editoração de conteúdo. Neste editor, todos os elementos de uma página, desde os mais simples parágrafos até a mais complexa galeria de imagens, são denominados **"Blocos"**. Com ele, fica fácil construir um post de lançamento de uma coleção, usando de imagens com diferentes alinhamentos, colunas, grades de texto, mapas, títulos ou botões mais chamativos. Além disso, [são diversos os plugins existentes](https://br.wordpress.org/plugins/browse/blocks/ ':ignore') para o WordPress que te oferecem novos blocos ricos e atraentes.

<div style="float: right; margin-left: 32px;">

![Lista de Blocos Gutenberg do Tainacan](/_assets/images/gutenberg-blocks-list.jpg ':size=450')

</div>

## Os Blocos Tainacan

O Tainacan não poderia ficar de fora, e usa desta ferramenta para fornecer blocos dedicados ao conteúdo gerado no seu repositório. 

> Combinando os blocos Gutenberg com seu conteúdo Tainacan, fica simples criar narrativas, contar histórias e apresentar o seu acervo digital de maneira acessível ao mundo.

Para usar algum dos blocos, basta editar um post ou uma página e procurar na lista de blocos disponíveis por um dos nosso blocos. São eles:

* [Lista de Itens](#lista-de-itens) *(estático)*;
* Lista de Coleções *(estático)*;
* Lista de Termos *(estático)*;
* [Lista de Itens da Coleção](#lista-de-itens-da-coleção);
* [Barra de Busca](#barra-de-busca-tainacan) Tainacan;
* Lista de Facetas;
* [Carrossel de Itens](#carrossel-de-itens);
* Carrossel de Coleções;
* Carrossel de Termos;

## Alguns conceitos importantes

Antes de começar a explorar os blocos do Tainacan, porém, talvez caiba entender alguns conceitos gerais. A figura abaixo mostra as sessões relacionadas ao seu bloco quando inserido no editor:

![Sessões relacionadas ao bloco no editor](/_assets/images/gutenberg-blocks-sections.jpg)

1. É a barra superior do seu bloco. Nela costumam ficar configurações como o modo de visualização, alinhamento do bloco, além de opções de deletar, inserir blocos antes ou depois e criar um grupo de blocos;
2. É a região do conteúdo do bloco em si. Quando ativos - ou seja, clicados, em foco - os blocos do Tainacan em geral possuem uma região em cinza com a principal configuração a ser feita (geralmente escolher uma fonte dos dados mostrados, como uma coleção). Esta região não aparece na versão final do post, o pode ser observado ao se mover o foco pra fora do bloco;
3. É a barra lateral do editor, onde além das configurações do documento estão as documentações do bloco atualmente ativo. Nela ficam diversos tipos de opções relacionadas ao bloco. Todos os blocos possuem ao final desta sessão uma configuração avançada que permite atribuir classes aos blocos, o que pode ser usado para fazer customizações avançadas com CSS.

<div style="float: right; margin-left: 32px;">

![Lista de Possíveis Alinhamentos de Bloco](/_assets/images/gutenberg-blocks-alignments.png ':size=250')

</div>

### Alinhamentos de Bloco

Das configurações mencionadas acima cabe comentar sobre os **alinhamentos de bloco**. Alguns blocos (não só os do Tainacan) oferecem um ou mais dos alinhamentos da figura ao lado. 

No geral, um bloco está de início com a configuração "Centralizar" por padrão. Ao se selecionar "Alinhar à esquerda" ou Alinhar à direita", o editor jogará o bloco para aquele lado, usando as opções `float` do CSS. Isso pode funcionar bem caso haja texto fluído ao lado do bloco, mas também pode deixar seu bloco com pouco espaço, cabe testar bem.

Já as duas opções de "Largura ampla" e "Lagura completa" são úteis para temas (o Tainacan Interface incluso) que oferecem templates com margem larga e que pode ser extrapolada. A figura a seguir demonstra isso:

![Lista de Possíveis Alinhamentos de Bloco](/_assets/images/gutenberg-wide-alignment.jpg)

O tema (_Tainacan Interface_) possui uma margem lateral que limita a largura do post à 1400px. Além disso, dentro do próprio post há uma margem interna que reduz ainda mais a largura do corpo de texto. Usando a "Largura ampla" no [Bloco de Carrossel de Itens](#carrossel-de-itens) acima, extrapolamos um pouco a margem do corpo de texto, para dar destaque à ele. Mas podemos ir mais longe. Usando a "Largura completa", fazemos com que o [Bloco de Itens da Coleção](#lista-de-itens-da-coleção) logo abaixo, ocupe toda a largura disponível, vazando as margens do post. Este recurso é bastante utilizado para se apresentar destaques visuais na sua página, ou para compor cabeçalhos customizados.

### Templates de Página

Alguns temas oferecem um recurso do WordPress denominado **"Templates de Página"**. São modos de se oferecer diferentes estilos de páginas para um usuário. Por exemplo, pode-se preferir uma página com a barra lateral ao lado, ou sem margem nenhuma. Esta configuração pode ser feita na **Barra Lateral do Editor**, na **Aba Documento**, em geral está entre as últimas opções.

O _Tainacan Interface_ oferece atualmente 3 templates:

* `Default`;
* `Landing`;
* `Landing with Breadcrumb`;

Se você já criou alguma página com ele então já conhece o template `Default`. Este é modelo usadado para páginas e posts e possui sempre, na seguinte ordem:

1. O menu do site;
2. A barra de navegação auxiliar (também conhecida como breadcrumb ou migalha de pão);
3. O banner de cabeçalho, com o nome do repositório;
4. A sessão de cabeçalho da Página, que inclui o título e botões de compartilhar;
5. O conteúdo interno da página - Esta é a parte que é criada via Editor de Blocos, o Gutenberg;
6. O rodapé do site;

Estes elementos podem ser indesejados em algumas situações. Suponhamos que você queira montar uma versão customizada da página inicial do seu repositório. Neste caso, é possível utilizar o template `Landing`, que da lista acime exibe apenas os itens **1**, **5** e **6**. Já o template `Landing with Breadcrumb` adiciona o item **2** à esta lista:

![Exemplos de usos dos templates](/_assets/gifs/gutenberg_page_templates.gif)

### Novos Blocos

Não tenha medo de procurar por outros blocos para instalar e testar em suas publicações. É importante dizer, porém, que a cada bloco novo, você cria uma dependência para seu site. Se um dia você desinstalar este bloco, aquelas postagens que os utilizaram terão seu conteúdo perdido ou no mínimo desfigurado. Então use com parcimônia!

Outra observação importante é que, ao mudar de tema, seus blocos poderão ter uma aparência bem diferente. Ainda é muito recente a chegada do Gutenberg e nem todos os temas oferecem um bom suporte aos seus recursos (como o alinhamento amplo, por exemplo). Nossos blocos devem funcionar bem nos temas em geral, mas podem haver diferenças de margem, fonte e alinhamentos dependendo dos estilos de página.
