# Seções de Metadados

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

A partir da versão 0.19, o Tainacan conta com o recurso das **Seções de Metadados**. Elas constituem uma maneira de se organizar longas listas de metadados em agrupamentos visuais e estruturais, que dão mais poder para catalogação dos dados de um item. No painel administrativo, seções de metadadas são mostradas como painéis _colapsáveis_, mas na página pública de um item podem ser exibidas de diferentes maneiras, a depender das configurações do tema. Podem por exemplo, ser mostradas como abas, ou dando prioridade para a exibição de alguma com mais destaque visual do que a outra.

Neste artigo descrevemos:

- As [características gerais](#características-das-seções-de-metadados) de uma seção de metadados;
- Como [criar e editar](#criando-e-editando-seções) uma seção de metadados;
- Como [remover uma seção](#removendo-seções) de metadados;
- Como [visualizar a seção de metadados](#visualizando-seções-na-página-do-item) na página pública do item;

Parte-se aqui do pressuposto que você já está familiarizado com o conceito e com o fluxo de edição de metadados. Caso contrário, [consulte Metadados](/es-mx/metadata.md).

## Características das Seções de Metadados

- Toda seção possui um **Nome e Descrição**, que serão exibidos na página de preenchimento do item, se forem configurados;
- Toda coleção já possui uma seção logo que criada, a chamada **_Seção Padrão_**, cujo nome de início é "Metadados".
- A **_seção padrão_ não pode ser removida** e também e sua privacidade está sempre atrelada à privacidade da coleção;
- Demais **seções podem ser públicas ou privadas**, o que implica que sua privacidade implica na privacidade dos metadados que estão nela;
- As seções podem ser desabilitadas, implicando que seus metadados não serão mostrados na hora de se exibir ou preencher itens, mesmo os dados ainda existindo;
- As seções podem possuir um número indefinido de metadados dentro de si, e estes podem ser trocados de uma seção para outra, a qualquer momento;
- As seções **só podem ser removidas quando não possuem metadados** dentro de si;
- A ordem das seções também pode ser alterada;
- **Não existem seções nas configurações de metadados nível repositório**. Quando herdados nas coleções, os metadados de repositório aparecerão na _seção padrão_. De lá podem ser ordenados para outras seções se for necessário.

## Criando e Editando Seções

Como mencionado anteriormente, diferentemente dos metadados, a seção só existe à nível de coleção. Há também a chamada seção padrão, que já existe em toda coleção. Para se criar uma nova seção, portanto, deve-se:

1. Acessar a página de configuração dos metadados de uma coleção;
2. Abaixo da lista de "tipos de metadados disponveis" estará o botão de "Criar nova seção de metadados". Ele pode ser clicado ou arrastado e soltado para regiões entre seções.
3. Ao se clicar, o formulário de edição de seção aparecerá, onde é necessário preencher pelo menos o Nome da seção. Os demais campos são opcionais;
4. Com a seção criada, uma nova área que pode receber metadados estará disponível, abaixo de seu título. Para esta área podem ser levados tando novos metadados (arrastando-se tipos de metadado para ela), quanto metadados existentes, oriundos da seção padrão ou de outras já criadas.
5. Também pode ser trocada a ordem entre seções, movendo as com o arrastar e soltar, ou usando as setas ao lado do ícone de arraste.

## Removendo Seções

A remoção de seções só pode ser feita caso esta não seja a seção padrão e não existam nenhum metadado dentro desta.

1. Primeiramente, remova ou exclua os metadados existentes na seção desejada;
2. Clique no botão de lixeira no canto direito da seção;

## Visualizando Seções na Página do Item

No painel adminstrativo do Tainacan, as seções são vistas como divisores de maior hierarquia na lista de metadados da página do item. Na página de edição do item, estes divisores podem inclusive ser recolhidos, escondendo-se assim todos os seus metadados. Na página pública do item, porém, existem diversas formas através das quais pode-se desejar ver uma seção. Cabe aos [desenvolvedores de temas](/dev/creating-compatible-themes) implementarem estas seções, fazendo uso das [funções que carregam as seções](https://github.com/tainacan/tainacan/blob/develop/src/classes/theme-helper/template-tags.php ":ignore"). Se não houver este cuidado, os metadados serão exibidos sem separação das funções, embora ainda respeitando a ordem em que estão nas seções. Felizmente, tanto para o [Tainacan Interface](/es-mx/theme.md#tainacan-interface), quanto para o [Blocksy](/es-mx/theme.md#tainacan-interface), já foram implementadas algumas visualizações de exemplo. As demonstrações a seguir usam o tema Tainacan Interface, mas é importante saber que as seções não estão limitadas à elas:

1. Com o tema Tainacan Interface ativado, acesse às configurações da sua coleção.
2. No formulário de configuração, haverá uma área cinza com as configurações do tema. Escolha lá qual layout você deseja usar para mostrar as seções. As opções são:
   1. Padrão - Uma divisão simples com identação e uma linha separando as seções;
   2. Abas - Cada seção fica contida em uma aba;
   3. _Colapses_ - Cada seção fica em um painel recolhível, similar ao comportamento do editor. Vários painéis podem ser abertos de uma vez, mas apenas o primeiro está de início;
   4. Acordeão - Igual aos _colapses_, porém somente um pode estar aberto por vez;
3. Salve a configuração e acesse a página pública de um item no seu site com o tema ativado.
