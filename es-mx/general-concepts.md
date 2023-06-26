# Conceitos Gerais

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Nesta página introduzimos alguns conceitos importantes para o uso do Tainacan no dia-a-dia. É importante dizer que os termos aqui apresentados são definidos pela equipe de pesquisa e desenvolvimento do Tainacan, mas dependo da sua área de atuação, podem ser sinônimos de outros termos conhecidos.

### Vídeo Tutorial: Usando o Tainacan - Conceitos gerais

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/fzbd36fbuII?start=52"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## Coleções

Uma coleção é um grupo de itens que compartilham um mesmo conjunto de metadados. Cada item enviado para seu repositório digital pertencerá a uma única coleção.

> Por exemplo: você pode ter uma coleção de "pinturas" com metadados como "Título", "Autor", "País", "Técnica", etc e outra coleção para "filmes", com "Título", "Diretor", "País", "Duração" e "Gênero"'.

Para cada coleção você pode configurar um conjunto diferente de metadados, entretanto, eles podem compartilhar taxonomias em comum, o que significa, por exemplo, que você pode navegar por itens de um "país" e obter resultados de "pinturas" e de "filmes" nos resultados

> [Consulte a seção taxonomias](#taxonomias)

As coleções também podem ter coleções "filhas", que vão herdar seus metadados e a partir disso podem também adicionar outros metadados para informações adicionais.

Veja o artigo completo sobre uso das **Coleções** [aqui](/es-mx/collections).

## Itens

Itens são o verdadeiro conteúdo do repositório. A "pintura", o "filme",o "livro" e assim por diante. Estes itens são da uma coleção e possuem todos os metadados configurados à coleção a qual pertencem.

> Na linguagem do WordPress, cada item é um post e seu tipo de postagem representa sua coleção.

### Documento

O documento é a informação principal do item. É o objeto que os metadados se referem. O Tainacan aceita 3 tipos de documentos:

- **"Arquivo"**: um arquivo adicionado ao item. Pode ser uma imagem, vídeo, pdf, audio ou outro tipo arquivo suportado.
- **"URL"**: um link de um site com conteúdo ou arquivo externo. Estes links podem ser de um site genérico, um arquivo específico ou serviços de mídia. No caso de serviços de mídia (como o YouTube, por exemplo) o Tainacan reconhece o endereço e exibe o player apropriado usando [oEmbed](https://oembed.com/). A lista de serviços compatíveis com a conversão para "embeds" no WordPress pode ser consultada [neste link](https://codex.wordpress.org/es-mx:Incorporados).
- **"Texto"**: Um texto simples, armazenado diretamente no banco de dados, o usuário pode digitar ao criar ou editar um item.

> O "tipo de documento" pode ser alterado após o envio do item, por exemplo: você pode enviar o item com um documento do tipo "texto" de referência e posteriormente inserir o "arquivo" ou "URL" pertencente a ele.

Veja o artigo completo sobre uso dos **Itens** [aqui](/es-mx/items).

## Metadados

Os metadados são as informações referentes ao documento.

Cada coleção tem um conjunto de metadados para descrever seus documentos. Isso significa que a coleção a qual o item pertence determina os metadados que ele tem.

Cada metadado tem um conjunto de configurações possíveis. É um metadado obrigatório? Seus valores são únicos para cada item (Um número de registro, por exemplo)? Ele aceita múltiplos valores (Vários autores, por exemplo)?

### Vídeo Tutorial: Criação de Metadados

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/fzbd36fbuII?start=433"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> [Consulte a seção Tipos de Metadados](#tipos-de-metadados)

É possível configurar metadados a nível de repositório, que serão herdados por todas coleções no repositório. Da mesma forma, coleções configuradas como "filha" herdam todos metadados da coleção selecionada.

> [Consulte a seção Coleções](#colecoes)

> Também é possível "importar e exportar metadados predefinidos".

### Tipos de Metadados

`Metadata Types` ou Tipos de Metadados são os objetos que representam os tipos de metadados que podem ser usados.

> Alguns exemplos de `Metadata Types` são "Texto", "Texto Longo", "Data", "Relacionamento", etc.

Cada "tipo de metadado" possui suas próprias configurações e componentes da web que serão usados na renderização de sua interface.

`Metadata Types` são tipos de metadados que podem ser criados por meio de plug-ins e estender o conjunto padrão de tipos fornecidos com o Tainacan.

Veja o artigo completo sobre uso dos **Metadados** [aqui](/es-mx/metadata).

## Filtros

Para cada coleção é possível escolher quais de seus metadados serão usados como opção de filtros para resultados em uma busca facetada na visualização da coleção.

> Filtros permitem que o usuário filtre a visualização dos itens de uma coleção.

### Tipos de Filtros

`Filter Types` ou Tipos de Filtros são diferentes tipos de interfaces para filtrar itens baseados num tipo de metadado específico nas coleções. São alguns exemplos de `Filter Types`:

- **"input text"** - entrada de texto
- **"datepicker"** - seleção de data
- **"date range picker"** - seleção de intervalo de data
- **"number range slider"** - barra de intervalo numérico
- **"list of checkboxes"** - lista de seleção múltipla

Cada objeto `Filter Types` possui suas próprias configurações e componentes da web que serão usados na renderização de sua interface.

> `Filter Types` podem ser criados por meio de plug-ins e estender o conjunto padrão de tipos de filtros do Tainacan.

Veja o artigo completo sobre uso dos **Filtros** [aqui](/es-mx/filtros).

## Taxonomias

Taxonomias podem ser criadas e usadas para a classificação de itens. Exemplos de taxonomias comuns são a de Gênero, Países, etc.

> Na linguagem do WordPress, elas são taxonomias personalizadas. Consulte a [documentação do WordPress](https://codex.wordpress.org/Taxonomies/) para saber mais.

Cada taxonomia tem um conjunto de termos, por exemplo, a taxonomia "gênero" pode ter termos como "drama" e "comédia". Os termos podem ter hierarquia, o que significa que quando você procura por itens que tem termos com termos filhos (por exemplo, "Samba"), os resultados incluirão itens que tenham qualquer um dos termos filhos. (Por exemplo, "Samba de Gafieira" e "Samba Maxixe").

Termos também podem ter uma descrição, um ícone ou uma imagem que o represente e também pode ser ligado a um conceito existente um uma ontologia. Os termos também podem ter sua própria URL no site, com uma página listando todos os itens relacionados a ele, inclusive de diferentes coleções, dessa forma eles se comportam como se fossem uma coleção.

> As taxonomias podem ser compartilhadas por várias coleções.
> [Consulte o tópico "Tipos de Metadados" para saber como.](#tipos-de-metadados)

Veja o artigo completo sobre uso das **Taxonomias** [aqui](/es-mx/taxonomies).

### Vídeo Tutorial: Filtros e Taxonomias

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/y2WIzDyzKSs?start=17"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## Em discussão

Esta seção reúne alguns conceitos e funcionalidades que estão em discussão para desenvolvimento!

### Tipos de Itens

"Tipos de itens" possibilitam a habilidade de especializar a descrição do item com base na sua natureza. Assim, dentro da mesma coleção é possível ter itens que variam sua natureza e, portanto, têm um conjunto diferente de metadados.

Para cada "tipo de item"', é possível escolher um grupo de metadados, da mesma maneira que se faz para uma coleção. Quando se cria um item dentro de uma coleção, ele terá todos os metadados escolhidos para esta coleção e também os metadados relacionados ao seu tipo.

Um "tipo de item" pode ser qualquer coisa. Por exemplo, LPs, livros e pinturas são tipos de itens distintos que podem ter metadados específicos. Mas também poderia ter conceitos abstratos, como "transações financeiras".

### Área de Trabalho

A "área de trabalho" contém itens que ainda não fazem parte de coleções. Essa função pode ser útil para o envio de vários itens para o repositório para depois serem organizados em coleções.

Os itens na "área de trabalho" não são visíveis publicamente e têm apenas os metadados configurados a nível de repositório.

### Coleções Temáticas

As "coleções temáticas" são outra maneira de organizar os itens no seu repositório. Em essência, cada coleção temática é um termo dentro de uma taxonomia chamada "Coleções Temáticas", que pode conter itens de qualquer coleção, e um item pode fazer parte de várias coleções temáticas.

A lógica é a mesma dos termos em taxonomias, a única diferença é que com isso há uma outra maneira de gestão dessas coleções.

Outra ideia aqui é que, tendo uma "''taxonomia fixa''" chamada coleções temáticas, poderíamos ter apenas um item de menu "''Taxonomias''" ou "''Organizar por taxonomias''" que permite navegar pelos itens por taxonomia ao invés de coleções, e manipulá-los.
