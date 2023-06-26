# Primeiros Passos

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Vamos entender o que é possível fazer com o Tainacan e como eu posso usá-lo para gerir meu repositório digital de maneira fácil e intuitiva.

## O que queremos?

Consideremos que eu tenho uma coleção de fotos que eu desejo expor para o mundo. No meu site WordPress eu já tenho posts e páginas que criei para falar sobre ela, mas agora quero montar meu repositório e organizar ele de maneira sistematizada. Tudo começa com a criação da coleção.

## Criando a coleção Minhas Fotos

No painel administrativo do meu site WordPress, eu já tenho o plugin instalado e posso acessar ele pela barra lateral:

![Acessando o admin do Tainacan](/_assets/gifs/getting-started-0.gif)

Na página inicial do plugin, posso criar minha coleção, processo que é feito no formulário da imagem abaixo. Escolhi um nome, uma descrição, imagens de miniatura e cabeçalho, além de alguns modos de visualização que testaremos mais tarde.

![Criando uma coleção](/_assets/gifs/getting-started-1.gif)

## Configurando os metadados da coleção

Ao configurar os metadados, estamos criando os atributos pelos quais os itens da coleção serão descritos. Se tratando de uma coleção de fotos, tenho interesse em algumas informações específicas:

- O título da foto;
- A descrição da foto;
- A data em que a foto foi tirada;
- A máquina usada para a foto;
- A categoria da foto;

Ao entrarmos na página de metadados, vemos que os dois primeiros metadados já existem por padrão, embora eu possa desabilitá-los ou mudar o seu rótulo, se assim desejar. Mas posso criar os outros, usando algum dos tipos de metadados disponíveis. Vejamos quais escolhi:

- **Data da Foto** - _Tipo Data_ - A data em que a foto foi tirada;
- **Máquina Fotográfica** - _Tipo Texto simples_ - O nome da máquina usada para a foto;
- **Categoria** - _Tipo Taxonomia_ - A categoria da foto;

![Criando metadados](/_assets/gifs/getting-started-2.gif)

Para a Categoria escolhi um metadado tipo taxonomia. Por quê isso? Bom, cabe pensar, o que é uma categoria? Para minha coleção, é um conjunto de termos que uso para descrever uma foto, que podem ter relações hierárquicas, como categorias mães e categorias filhas, além de surgirem novas de acordo com as novas fotos que cheguem à minha coleção. Isso cai como uma luva no que definimos como Taxonomias no Tainacan. Mas para de fato criar este metadado, antes eu preciso configurar esta Taxonomia.

## Criando a taxonomia Categorias

No menu do repositório, ao lado esquerdo, podemos acessar a lista de taxonomias e de lá criar uma nova, denominada Categoria. Após criar, posso também inserir termos, que serão as minhas categorias em si, com as quais vou rotular minhas fotos (por exemplo, _urbano_, _natureza_, _abstrato_...).

![Criando uma taxonomia](/_assets/gifs/getting-started-3.gif)

Voltando à página de configurações de metadados, agora posso criar meu metadado que vai usar desta taxonomia. Posso também deixar marcada a opção de "Permitir a inserção de termos", para que eu possa criar novos termos facilmente enquanto estiver configurando minhas fotos. Aliás, está na hora de trazer elas para o Tainacan!

![Criando um metadado tipo taxonomia](/_assets/gifs/getting-started-4.gif)

## Subindo itens para o Tainacan

Os itens da coleção Minhas Fotos, são as fotos em si. Um caminho possível é inserirmos uma por uma, acessando o menu de "Criar Item", logo na página de itens da coleção. Mas vamos considerar que eu já tenha várias delas guardadas em uma pasta no meu computador. Posso seguir um caminho mais simples, usando a função "Adicionar itens em massa":

![Adicionando itens em massa](/_assets/gifs/getting-started-5.gif)

Ao fazer o upload de minhas fotos, posso partir para a Edição em Massa ou para a Edição em Sequência. A primeira vale para tratarmos de metadados em comum entre as fotos, e a segunda para olharmos cada item, um por um. Vamos começar pelo que há de comum nestas fotos: a Máquina Fotográfica. Como tirei todas com a mesma câmera, vou configurar essa informação na tela de Edição em Massa. Depois, sigo para a Edição em Sequência, onde podemos ver que o Tainacan já gerou uma miniatura a partir das minhas fotos, que pode ser alterada futuramente. Minhas fotos ficarão públicas e não existem anexos relacionados à elas, portanto me resta apenas preencher os metadados.

### Preenchendo metadados

Cada configuração feita na tela de metadados se reflete aqui, na etapa de criação do item. Posso colocar o Título e Descrição da foto e uma data válida para o momento em que a foto foi tirada. A Máquina Fotográfica já foi configurada previamente, portando não há nada com o que se preocupar aqui. Já a Categoria, esta será preenchida como eu achar mais conveniente, usando as categorias que criei anteriormente. Se de repente deixei alguma prá trás, posso criar o novo termo para a taxonomia aqui mesmo, diretamente pelo formulário de edição do item. Preenchidos todos os metadados, já podemos ver como nossa coleção ficou voltando a página de itens da coleção:

![Editando itens em sequência](/_assets/gifs/getting-started-6.gif)

## Navegando em sua coleção

E aí está, temos uma coleção de fotos no nosso repositório Tainacan! Note que podemos mudar a ordem de visualização, mudar o modo de visualização da lista e até
escolher quais metadados mostrar em alguns casos. Como estou criando uma coleção de fotos, prefiro usar o modo "Miniatura".

![Navegando pela coleção](/_assets/gifs/getting-started-7.gif)

Logo ao lado, já temos disponíveis a busca textual simples e a busca avançada. Mas podemos customizar melhor como vamos filtrar os itens desta coleção usando... filtros!

## Configurando filtros

Cada tipo de metadado escolhido pode ser filtrado de maneiras diferentes. Aqui na página de filtros, podemos criar um filtro de Data para o metadado da Data da Foto, além de um filtro com uma lista de checkboxes para o metadado de Categorias. Esta lista de checkboxes é um dos mais interessantes que temos, pois com ele podemos explorar facilmente todas as categorias que foram utilizadas para rotular minhas fotos.

![Criando filtros](/_assets/gifs/getting-started-8.gif)

Vamos para a lista de itens, experimentar estes filtros. Observe como, ao aplicarmos um deles, uma tag surge acima da lista de itens, para que possamos remover o filtro se desejado. No caso das categorias, temos também um valor entre parênteses ao lado do rótulo da categoria. Este contador indica quantos itens existem na coleção no momento com esta categoria, uma visão que denominamos "Faceta".

![Usando filtros](/_assets/gifs/getting-started-9.gif)

## Enxergando sua coleção no site

Tudo isso parece bem legal, mas até então estamos dentro do painel administrativo do Tainacan, que pode ser acessado apenas por quem tem permissão... e como isto se integra ao meu site _WordPress_? Basta clicarmos no ícone de olho, no canto superior direito para descobrirmos:

![Vendo a coleção no tema](/_assets/gifs/getting-started-10.gif)

A coleção está então, pública no nosso site, no endereço que está configurado por padrão lá na página de configuração da Coleção, que vimos mais atrás. Aqui também vemos outras configurações entrarem em ação, como a imagem de cabeçalho, a miniatura e descrição da coleção. Acima da lista de itens, temos uma opção de "Modos de Visualização", que nos dá diferente formas de ver a coleção conforme configurado também na página da Coleção. Dentre estes, há também um modo especial que fica separado, o modo "Apresentação".

![Apresentação](/_assets/gifs/getting-started-11.gif)

Navegando pela coleção, podemos clicar no item e ver sua página, onde estão visíveis os metadados configurados.

![Apresentação](/_assets/gifs/getting-started-12.gif)

Além da página pública da coleção, existem outras páginas, pré-definidas pelo Tainacan que podem ser de interesse para nós, e que podem ser colocadas de fácil acesso no menu do site. A primeira delas é a Lista de Coleções, disponível em `/colecoes`, que - obviamente - mostra todas as minhas coleções públicas. Outra é a Lista de Itens do Repositório, acessível em `/itens`, que funciona como uma página de coleção, porém mostrando itens públicos de todas as coleções, assim como seus filtros. Você escolhe se deseja expor ou não essas páginas.

## Contando histórias com blocos Gutenberg

Ter páginas dedicadas para o conteúdo criado no Tainacan é interessante, mas talvez eu queira expor conteúdo do Tainacan em meio às minhas postagens do blog ou mesmo em páginas que eu criei, como minha página inicial. Para isso, nós usamos os blocos Gutenberg.

Gutenberg é como é chamado o editor de conteúdo do WordPress desde sua versão 5.0. É uma ferramenta intuitiva e flexível para construir postagens com uma estrutura de blocos. Com ele, eu posso facilmente inserir imagens, vídeos, citações e texto estilizados com diferentes alinhamentos e tamanhos. Mas assim como eu puxo minhas imagens da galeria de mídia, ou puxo vídeos de um link no YouTube, eu posso querer puxar itens da minha coleção Tainacan. É aqui que entram estes blocos.

Por exemplo, se eu quiser mostrar, no meio de uma postagem minha lista de itens, posso usar o Bloco de Busca de Itens, ao invés de simplesmente colocar um link para a minha lista de itens, que tem muita informação e recursos que podem distrair meu leitor. Vejamos ele em uso nesta postagem:

![Usando o bloco de busca de itens](/_assets/gifs/getting-started-13.gif)

Por outro lado, posso também querer dar uma noção de quais são as categorias mais comuns em minha coleção, e pra isso tenho o Bloco de Facetas, que com sua nuvem de tags me dá uma visão clara disso.

![Usando o bloco de facetas](/_assets/gifs/getting-started-14.gif)

Mas talvez eu queira mostrar um conjunto de Categorias específico na minha página inicial, e deixar um link para meus visitantes na página inicial. Para isso uso o Bloco Estático de Termos, que permite escolher à mão quais mostrar:

![Usando o bloco de facetas](/_assets/gifs/getting-started-15.gif)

Todos estes blocos possuem diferentes configurações de exibição e funcionamento, para melhor entendê-los vale uma leitura em nossa [documentação](/es-mx/gutenberg-blocks.md).

## Explorando mais a fundo

Neste artigo você pode tocar um poquinho do que é possível com o Tainacan, mas não se engane, esta foi apenas uma espiada! Há muitos assuntos que podem ser abordados como [Metadados Tipo Relacionamento](/es-mx/metadata.md#tipos-de-metadados), [Importadores](/es-mx/importers.md), [Exportadores](/es-mx/exporters.md), Expositores, Padrão de Metadados, [Controle de Atividades](/es-mx/activities.md),[Anexos](/es-mx/inserir-e-editar-arquivos), Tipos de Documentos, etc. Você também encontrará materiais educacionais em outros lugares além desta Wiki, como nos links listados em nossa [página de vídeos](/es-mx/videos.md). Esperamos que o Tainacan possa te ajudar a construir repositórios digitais incríveis!
