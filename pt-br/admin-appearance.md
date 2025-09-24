# Aparência do Admin

Desde o Tainacan `1.0.0`, Administradores ou usuários com a permissão `tnc_rep_edit_users` podem personalizar certos aspectos da Aparência do Admin do Tainacan de forma avançada *por função de usuário*. Isso significa principalmente ocultar elementos, controlar certas funcionalidades padrão (como a presença do menu Admin do WordPress) e cartões do painel.

![Captura de tela do formulário de edição de função de usuário, com a página de c](../_assets/images/admin-appearance-1.png)

Como explicado em nossa página [Funções e Permissões](pt-br/manage-user-roles.md), você pode editar uma Função de Usuário acessando o menu Admin Tainacan -> "Outros" -> "Funções de Usuário". Na lista de Funções, você seleciona para editar a função desejada. As opções armazenadas nas abas "Repositório" e "Coleção" têm um controle mais rigoroso sobre o acesso e modificabilidade de certos dados do Tainacan, no entanto há certos casos onde você desejará ajustar as coisas de uma forma mais estética.

> [!NOTE]
> **Por exemplo**: um *Autor* pode não ter permissões para editar nenhuma Taxonomia, no entanto ele/ela pode ver as Taxonomias na interface do Admin. Porque eles são capazes de selecionar termos para metadados relacionados. O Tainacan cuida de desabilitar a funcionalidade de edição em si (por exemplo, *ocultando botões de edição*) mas não ocultará a página de Taxonomias do Administrador, porque o usuário tem permissão para ver Taxonomias lá, pelo menos aquelas que são públicas. *Este é o tipo de situação onde você pode querer ocultar esta opção de uma perspectiva de aparência: **para limpar a interface***.  

## Opções disponíveis

Aqui está uma visão geral do tipo de opções que você encontrará:

### Navegação

Opções relacionadas à navegação geral do plugin, como menu lateral e modo de tela cheia. Lembre-se de que algumas opções aqui podem sobrescrever umas às outras e que são aplicadas apenas quando você salva o formulário.

 - **Forçar o Tainacan a sempre sobrepor o menu e barra lateral do WordPress** - Isso significa que nenhum botão "Opções de tela" aparecerá no topo das páginas do Admin e o usuário começará com este layout "tela cheia" das páginas do plugin, como costumava ser nas versões anteriores ao `1.0.0`.
 - **Ocultar navegação de migalhas de pão, (os breadrcumbs)**
 - **Ocultar botão de atalho do WordPress** - Isso bloqueia o usuário na interface do plugin, tornando mais difícil navegar de volta para o admini do WordPress. Pode ser desejado se seu usuário não tem negócios no restante da interface do WordPress.
 - **Ocultar botão de atalho do site**
 - **Ocultar botão alternador de tela cheia** - Isso apenas oculta a opção de tela para "Ocultar o Admini do WordPress" mas não muda seu estado atualmente selecionado.
 - **Ocultar botão de recolher menu** - Este é o botão no canto inferior esquerdo que é usado para encolher o menu lateral.
 - **Ocultar menu lateral de navegação inteiro** - Para ser usado em casos muito rigorosos e radicais onde você desejará bloquear o usuário em um fluxo de navegação baseado apenas em migalhas de pão e links internos.
 - **Ocultar botão inicial no menu lateral** - Oculta o link para o Dashbooard. Observe que a Logo do Tainacan ainda leva para ele.
 - **Ocultar botão de menu "Repositório" no menu lateral** - Isso oculta apenas o recolhedor do menu "Repositório", promovendo seu conteúdo interno para menus de primeiro nível. Se você quiser ocultar seu conteúdo, terá que desabilitar um por um.
 - **Ocultar botão `algo` no submenu do repositório** - Remove o acesso a uma determinada página de nível de repositório.
 - **Ocultar botão de menu "Coleções" no menu lateral** - Diferentemente do "Repositório", isso também oculta o conteúdo interno. Isso é devido à sua natureza dinâmica. Pode ser desejado apenas em situações raras onde um usuário é responsável apenas por gerenciar aspectos administrativos do repositório em vez do conteúdo principal, que geralmente está dentro das coleções.
 - **Ocultar botão de lista de coleções no submenu de coleções**
 - **Ocultar botão "Todos os itens" no submenu de coleções** - Oculta o acesso de nível de Repositório a todos os itens entre coleções.
 - **Ocultar botão "Meus itens" no submenu de coleções** - Oculta a versão filtrada da lista de itens de nível de Repositório onde apenas itens criados pelo usuário atual são mostrados.
 - **Ocultar nome da coleção no submenu da coleção atual** - Quando uma coleção é selecionada, suas opções de menu aparecem acima do nome da coleção no menu lateral. Esta opção permite ocultá-lo.
 - **Ocultar botão "Todos os itens" no submenu da coleção atual** - Oculta o link padrão para a lista de itens de nível de Coleção. Se isso estiver oculto e os "Meus itens" permanecerem visíveis, o segundo será a página padrão para onde o fluxo de edição de itens deve retornar.
 - **Ocultar botão "Meus itens" no submenu da coleção atual** - Oculta a versão filtrada da lista de itens de nível de Coleção onde apenas itens criados pelo usuário atual são mostrados.
 - **Ocultar botão de configurações no submenu da coleção atual**
 - **Ocultar botão `algo` no submenu da coleção atual** - Remove o acesso a uma determinada página de nível de coleção.
 - **Ocultar links externos do site para item, coleção, taxonomias e outras páginas públicas** - Isso remove os botões que geralmente estão presentes no canto superior direito da página em certas páginas como coleção, taxonomia, item, etc, que levam para a versão pública dessa entidade no site.
 - **Ocultar botão de menu "Outros" no menu lateral** - Isso remove apenas o recolhedor "Outros", promovendo seu conteúdo interno para menus de primeiro nível. Para ocultar seu conteúdo você deve desabilitá-los individualmente.
 - **Ocultar botão "Configurações" no menu lateral**
 - **Ocultar botão "Funções" no menu lateral**
 - **Ocultar botão "Verificação do Sistema" no menu lateral** 

### Dashboard

Opções relacionadas à página do Dashboard (Painel Inicial) e seus cartões. Observe que cada usuário ainda pode ocultar os cartões que permanecem na tela.

- **Desabilitar ordenação de cartões do painel**
- **Ocultar cartão do repositório**
- **Ocultar botão `algo` do cartão do repositório** - Use para ocultar links que você não gosta do cartão do Repositório.
- **Mostrar botão `algo` do cartão do repositório** - Use para habilitar links que você gostaria de ter no cartão do Repositório.
- **Ocultar cartão de coleções**
- **Ocultar botão `algo` do cartão de coleções** - Use para ocultar links que você não gosta do cartão de Coleções.
- **Ocultar cartões de coleção**
- **Mostrar apenas coleções que o usuário pode editar itens** - Isso carregará apenas cartões de Coleção para os quais o usuário pode editar itens. Por padrão, qualquer coleção que o usuário pode ver é mostrada.
- **Mostrar apenas coleções criadas pelo usuário** - Isso carregará apenas cartões de Coleção para os quais o usuário é autor.
- **Ocultar botão `algo` dos cartões de coleção** - Use para ocultar links que você não gosta de um cartão de Coleção.
- **Mostrar botão `algo` dos cartões de coleção** - Use para habilitar links que você gostaria de ter em um cartão de Coleção.
- **Ocultar cartão de informações**
- **Ocultar botão `algo` do cartão de informações** - Use para ocultar links que você não gosta do cartão de Informações.
- **Mostrar botão `algo` do cartão de informações** - Use para mostrar links que você gostaria de ter no cartão de Informações.
- **Ocultar cartão de notícias**

### Lista de itens

Opções relacionadas às páginas do administrador que exibem a busca facetada com lista de itens. Essas configurações podem tornar a página menos poluída e ocultar opções que podem causar carga no servidor como edições em massa.

- **Ocultar título da página**
- **Ocultar botão de ações em massa**
- **Ocultar seleção múltipla de itens**
- **Ocultar seleção individual de itens**
- **Ocultar botão "Ver como..."**
- **Ocultar botão seletor de modo de visualização**
- **Ocultar dropdown de metadados exibidos**
- **Ocultar busca avançada**
- **Ocultar abas de status**
- **Ocultar total de itens nas abas de status**
- **Ocultar botão de adição em massa no dropdown de criação**
- **Ocultar botão de importação no dropdown de criação**
- **Ocultar menu de contexto do clique direito**
- **Ocultar botão de criar filtros**
- **Ocultar botão "Ir para página"**
- **Ocultar botão "Itens por página"**

### Página de edição de item

Opções relacionadas ao formulário de edição de item. Algumas dessas configurações também podem ser alcançadas via configurações de coleção, mas fazer aqui sobrescreverá qualquer opção. Enquanto algumas opções limpam a interface, outras a mudam para um layout com abas.

- **Ocultar título da página**
- **Mostrar seção de publicação dentro de abas**
- **Mostrar entrada de documento dentro de abas**
- **Mostrar anexos dentro de abas**
- **Ocultar seção de publicação**
- **Ocultar opções de status**
- **Ocultar opção de status publicado**
- **Ocultar opção de status privado**
- **Ocultar opção de status pendente**
- **Ocultar opção de comentários**
- **Ocultar entrada de documento completamente**
- **Ocultar entrada de documento tipo arquivo**
- **Ocultar entrada de documento tipo texto**
- **Ocultar entrada de documento tipo URL**
- **Ocultar miniatura**
- **Ocultar anexos**
- **Mostrar opção de status no dropdown do rodapé** - Isso coloca o seletor de status de volta a um lugar onde costumava estar nas versões anteriores, misturado com o botão "Finalizar" como um dropdown.
- **Permitir modal de criação de item dentro de outro modal (experimental)**

### Página de item

Opções relacionadas à página de item dentro do administrador. A maioria disso existe para fazer um espelho das escolhas da página de edição de item, pois esta é a página que você vê dentro do Administrador quando está visitando, mas não editando um item.

- **Ocultar título da página**
- **Ocultar status**
- **Ocultar status de visibilidade**
- **Ocultar condição de comentários**
- **Ocultar documento**
- **Ocultar miniatura**
- **Ocultar anexos**
- **Ocultar atividades**
- **Ocultar botão "Ver como..."**

## Possíveis resultados

Aqui está um exemplo de quão longe você pode chegar com personalizações como as mencionadas acima:

![Captura de tela do formulário de edição de item com a Aparência do Administrador ajustada para um layout com abas e menus mais limpos](../_assets/images/admin-appearance-2.png)

> [!WARNING]
> Por mais poderosas que essas configurações sejam, aconselhamos usá-las com cuidado. Para começar, como mencionamos, algumas opções conflitam umas com as outras ou com controles existentes (configurações de nível de coleção, capacidades de nível de função de usuário), o que pode colocá-lo em situações confusas. Também desviar da interface original para alguns usuários e não para outros pode implicar em ter que educar usuários de maneiras diferentes de acordo com seu perfil. Os recursos de navegação são especialmente arriscados porque afetam como parte do fluxo de navegação foi originalmente planejado no Administrador. Algumas das opções acima são até um pouco experimentais, o que significa que podemos considerar mudá-las no futuro.

## Opções sobrescritas

Todas as opções listadas aqui podem ser sobrescritas por um plugin ou tema se seu desenvolvedor implementou um de nossos filtros. Para aprender e entender como isso funciona, leia [nossa documentação para desenvolvedores](/dev/admin-ui-options.md).