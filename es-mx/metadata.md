<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Metadados" 
		src="/_assets/images/icon_metadata.png"
		width="42"
		height="42">
</div>

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

# Metadados

No Tainacan, os _“itens”_ são organizados por meio de _“coleções”_ e, cada _“coleção”_, pode ter _“metadados”_ específicos ou compartilhar _“metadados”_ entre si. Os _“metadados”_ são usados para descrever os _“itens”_, visando sua recuperação.

> Os _“metadados”_ definem as características, parâmetros e especificidades das informações que serão inseridas junto com o documento digital durante o envio de _“itens”_ para as _“coleções”_. É similar, por exemplo, às configurações dos campos que farão parte de um “_formulário”_, ou aos campos de uma “_ficha museológica”_.

Cada _“metadado”_ tem um conjunto de configurações possíveis: É um _“metadado obrigatório”_? Seus _“valores”_ são _únicos_ para cada _“item”_ (número de registro, por exemplo)? Ele aceita _“múltiplos valores”_ (vários autores, por exemplo)?

Neste artigo, descrevemos:

- As [características gerais dos metadados](#características-gerais-de-metadados), presentes em todos os tipos;
- Como criar metadados, seja à [nível repositório](#criar-metadados) ou [nível coleção](#criar-metadados-à-nível-de-coleções);
- Os [tipos de metadados](#tipos-de-metadados) e suas particularidades;
- Como [editar metadados](#editar-metadados) existentes;
- Como [excluir metadados](#excluir-metadados);

Em outros artigos, você também pode ver informações relevantes como:

- Como organizar listas longas de metadados com o recurso das [Seções de Metadados](/es-mx/metadata-sections.md);
- Como editar vários metadados de uma vez com as [Ações em Massa](/es-mx/bulk-actions.md);
- Também é possível importar e exportar _“metadados predefinidos”_. [Consulte Importadores](/es-mx/importers.md);

---

## Características gerais de metadados

- Por padrão, todas as _“coleções”_ possuem os _“metadados”_ de _“Título”_ e _“Descrição”_, que não podem ser excluídos, mas, podem ser _“editados”_ ou _“desabilitados”_. Estes _“metadados”_ são usados em algumas listagens dentro do Tainacan para representar o _“item”_;
- _“Metadados herdados”_ podem ser “_habilitados”_ ou “_desabilitados”_, o que implica na sua existência para o preenchimento durante o envio de um novo _“item”_ e, também, na sua ausência (com seus respectivos dados) durante a visualização de _“coleções”_ e dos _“itens”_;
- **_“Metadados a nível de repositório”_ são herdados por todas as _“coleções”_** no repositório, assinalados com “_herdado_” à frente do nome;
- Não é possível alterar o _“Tipo do Metadado”_. Por exemplo, alterar um _“metadado”_ do tipo “_Texto”_ para “_Texto Longo”_, ou “_Numérico”_ para “_Data”_, após sua criação;
- _“Metadados”_ que não foram herdados do repositório podem ser excluídos, e apresentam um _“ícone de lixeira”_ à frente. Consulte [Excluir metadados](#excluir-metadados) para saber mais.

O Tainacan não possui um _“modelo de metadados padrão”_, e sim diferentes _“tipos de metadados”_ que podem ser escolhidos para atender as necessidades do usuário durante a montagem de seu acervo digital. A escolha correta do _“tipo de metadado”_ vai ajudar na hora do preenchimento das informações e, consequentemente, na recuperação mais precisa dos _“itens”_.

Os _“metadados”_ podem ser criados de forma automática durante a importação de dados em massa, ou manualmente durante a criação da _“coleção”_ pelo _“painel administrativo”_.

## Criar Metadados

Os _“metadados”_ podem ser criados manualmente no nível do _“repositório”_ ou da _“coleção”_. Os _“metadados”_ criados no nível de _“repositório”_ são herdados por todas as _“coleções”_.

_“Metadados”_ a nível de _“Repositório”_ devem ser pensados para permitir a inserção de informações globais, ou seja, comuns a pelo menos grande parte do repositório. Por exemplo: _“Número de Registro”, “Tipo de arquivo”, “Data do registro do item”, “Estado de Conservação”_ e etc.

Novas _“coleções”_ podem ser criadas também com um modelo de “_metadados predefinido_” ou importadas por fontes externas. _“Coleções”_ criadas com _“metadados predefinidos”_ contam com um conjunto de _“metadados preestabelecidos”_ durante sua criação, e podem ser geridas da mesma maneira que outras _“coleções”_.

​Desde a versão 0.6 do plugin, existe a opção para a criação de _“coleções”_ com um conjunto de _“metadados”_ a partir do modelo _“Dublin Core”_.

​Novos conjuntos de _“metadados”_ podem ser desenvolvidos de acordo com a necessidade individual de cada instalação, e/ou adicionados ao Tainacan. Consulte [Desenvolvimento do Plugin](/dev/) para saber mais sobre o desenvolvimento do Tainacan.

1. Faça login no WordPress com seu _“nome de usuário”_ e _“senha”_;

   ![Acesse o painel de controle](_assets\images\050.png)

2. No _“painel administrativo”_, clique em _“Tainacan”_;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique em _“Metadados do Repositório”_;

   ![Acesse o painel de controle](_assets\images\070.png)

4. Para “_criar um novo metadado”_, basta clicar no _“metadado”_ e ele aparecerá por último na listagem do lado esquerdo. Você também pode usar o recurso de arrastar e soltar, que permite a _“ordenação do metadado”_ durante sua criação.

## Criar Metadados à nível de Coleções

- “Metadados” a nível de “coleção” são aplicados apenas aos “itens” criados nesta “coleção”. Os metadados também são em coleções “filhas” desta coleção;
- Crie ou escolha a “coleção” que deseja “criar novos metadados”. Consulte Criar coleção para saber mais;

1. Faça login no WordPress com seu _“nome de usuário”_ e _“senha”_;

   ![Acesse o painel de controle](_assets\images\050.png)

2. No _“painel administrativo”_ clique em _“Tainacan”;_

   ![Acesse o painel de controle](_assets\images\051.png)

3. Crie uma _“coleção”_ como apresentado no tópico "_Criar Coleções_";

4. Acesse a _“coleção”_ criada e clique em _“Metadados”;_

   ![Acesse o painel de controle](_assets\images\064.png)

5. Para _“criar um novo metadado”_, basta clicar no _“metadado”_ e ele aparecerá por último na listagem do lado esquerdo. Você também pode usar o recurso de arrastar e soltar, que permite a _“ordenação do metadado”_ durante sua criação. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata?id=tipos-de-metadados)[Tipos de metadados](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata?id=tipos-de-metadados) para saber o _“metadado”_ mais adequado para cada tipo de informação;

6. Cada _“metadado”_ criado tem um conjunto de configurações e funções individuais para configuração. Abaixo, descrevemos as funções gerais que podem ser configuradas em praticamente todos os _“metadados”_. Consulte a área de metadados para aprender a usar configurações específicas (linkar);

   ![Acesse o painel de controle](_assets\images\071.png)

   **“Nome”**: Nome do _“Metadado”_, Por exemplo: _“Material do item”_, _“Estado de conservação”_, e etc.;

   **“Descrição”**: Breve descrição, útil para descrever ou explicar como o _“metadado”_ deve ser preenchido. A descrição pode ser visualizada passando o cursor por sobre o ponto de interrogação, que fica ao lado do _“metadado”_, durante o preenchimento;

   ![Acesse o painel de controle](_assets\images\descricao_metadado.png)

   **“Placeholder (espaço reservado)”**: Campo usado por _metadados_ com campo de texto para dar uma curta instrução de preenchimento. Por exemplo: _"Digite aqui o nome completo..."_.

   **“Status”**: Determina o nível de privacidade do _“metadado”_, ou seja, para informações sensíveis que não devem ficar disponíveis aos visitantes ou para um papel específico. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/users)[Permissões de Usuários](https://tainacan.github.io/tainacan-wiki/#/es-mx/users) para saber mais detalhes;

   ​ ■ “Visível para todos”: São exibidos junto com o “item”, a depender do nível de privacidade deste “item” e a “coleção” a qual pertence;

   ​ ■ “Visível apenas para editores”: São exibidos apenas para administradores, editores e moderadores da _“coleção”_. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/users)[Permissões de Usuários](https://tainacan.github.io/tainacan-wiki/#/es-mx/users) para saber mais detalhes.

   **“Exibir na Listagem”**: Determina se o _“metadado”_ é apresentado por padrão na visualização dos itens:

   ​ ■ “Exibir por padrão”: O “metadado” é exibido por padrão na página de visualização da “coleção” (dependendo do tipo de visualização) e, na pré-visualização do “item”;

   ​ ■ “Não exibir por padrão”: O “metadado” não é exibido por padrão na visualização da “coleção”, mas, pode ser selecionado para exibição pelo usuário (dependendo do tipo de visualização), e exibido na pré-visualização do “item”;

   ​ ■ “Nunca exibir”: O “metadado” não é exibido na visualização da “coleção” e, também não aparece como opção para seleção na página de visualização da “coleção”. O _“metadado”_ continua visível na visualização do _“item”_, altere o _“status do metadado”_ para mudar seu nível de privacidade.

   **“Opções de preenchimento”**:

   ​ ■ “Obrigatório”: Determina se o preenchimento do “metadado” é obrigatório. Isso implica no envio do “item”, que não é permitido caso o campo de preenchimento deste “metadado” esteja vazio;

   ​ ■ “Único ou Múltiplo”: Determina se o “metadado” permite a inserção de um único valor ou múltiplos valores, como, por exemplo, “metadados” sobre “Cor”, “Material” e etc;

   ​ ■ “Valor Único”: Determina que o valor inserido no “metadado” não se repete em outros “itens” no repositório (para “metadados” criados a nível de repositório) ou na mesma “coleção” (para “metadados” criados a nível de “coleção”).

   **“URL Semântica”**: URL da descrição semântica do _“metadado”_. Configuração opcional;

   Dependendo do _“tipo de metadado”_, também existem opções específicas a serem configuradas. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata?id=tipos-de-metadados)[Tipos de metadados](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata?id=tipos-de-metadados) para mais detalhes.

7. Após preencher e configurar o _“metadado”_, clique em _“Salvar”_, ou clique em _“Cancelar”_ para abortar a missão. Uma vez salvo, o _“metadado”_ criado aparecerá como um campo a ser preenchido durante o envio e a edição de novos _“itens”_.

## Tipos de Metadados

A seguir, descrevemos cada um dos _“tipos de metadados”_ disponíveis e suas configurações.

### Texto simples

Para _“metadados”_ de textos curtos e livres. Não permite a inserção de parágrafos;

![Acesse o painel de controle](_assets\images\066.png)

### Área de Texto

Para _“metadados”_ de textos curtos e livres. Permite a inserção de parágrafos;

![Acesse o painel de controle](_assets\images\067.png)

### Data

Para _“metadados”_ de datas completas no formato _“DD/MM/AAAA”_. Caso não tenha a data completa, sugerimos escolher outros campos para a inserção de datas, tais como _“numérico”_ e _“texto curto”_. Este _“metadado”_ permite a recuperação de _“itens”_ por intervalos de tempo em dois tipos de filtros. Acesse Filtros disponíveis para cada Tipo de Metadado para saber mais;

![Acesse o painel de controle](_assets\images\076.png)

### Numérico

Para _“metadados”_ que contenham apenas números. Este tipo de _“metadado”_ permite a recuperação de _“itens”_ por intervalos. Acesse Filtros disponíveis para cada Tipo de Metadado para saber mais;

​■**Configurações adicionais**

​Passo: Você pode configurar quantidade a ser incrementada/decrementada ao clicar nos botões de controle durante o preenchimento do _“metadado”_. Por exemplo: ao usar o _“metadado numérico”_ como _"Década"_, você pode configurar o passo para 10. No preenchimento, ao clicar nas setas, o valor será incrementado de 10 em 10.

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/_hRrB6wVY7k" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

### Lista de seleção

Para _“metadados”_ que possuem um pequeno conjunto de termos controlados. Diferentemente da _“taxonomia”_, os termos não viram link na página do _“item”_ e não possuem uma página própria;

​■**Configurações adicionais**:

​Os termos são adicionados no campo _“Opções”_. Para adicionar mais valores, basta escrever o termo e clicar no \*“Enter”**\*;**

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/-UoNKi7KfBw" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

!>**Atenção**: Para criar novos termos na lista de seleção, é necessário que o usuário tenha permissão para a edição do “metadado” em questão. O “metadado” de lista de seleção não permite a criação de novos termos durante o preenchimento, estes termos precisam ser configurados previamente.

### Taxonomias

“\*Metadados do tipo Taxonomia**\*”** usam uma _“taxonomia”_ criada previamente. Este tipo de _“metadado”_ é especialmente útil para informações estruturadas a partir de um _“vocabulário controlado”_, permitindo inclusive a hierarquização de termos. Abaixo, apresentamos os passos para configurar um metadado do tipo _“Taxonomia”_.

​■**Configurações adicionais:**

​Como informado acima, é necessário criar primeiro uma _“Taxonomia”_. Esta será usada durante o processo de criação de um _“Metadado de Taxonomia”_:

1.Crie uma _“taxonomia”_. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/taxonomies?id=criar-taxonomias)[Criar Taxonomias](https://tainacan.github.io/tainacan-wiki/#/es-mx/taxonomies?id=criar-taxonomias) para conhecer mais;

2.Crie um _“metadado”_ do tipo _“Taxonomia”_. Consulte Criar Metadados para saber mais;

3.Na área de _“edição do metadado”_, selecione a _“taxonomia”_ desejada para o preenchimento dos valores no _“metadado”_;

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/bDy0FQFolAs" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

4.Escolha o tipo de entrada de informações durante o preenchimento dos valores no _“metadado”_;

![Acesse o painel de controle](_assets\images\077.png)

​■**Entrada do tipo** **“Tag input”**:

Neste tipo de entrada, é oferecido ao usuário somente uma caixa de busca. Os termos podem ser explorados por meio de digitação e busca;

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/RUaAFqM_XmE" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

■**Entrada do tipo** **"Checkbox”:**

Este tipo de entrada ajuda o usuário a saber quais são os termos disponíveis para escolha em uma determinada _“Taxonomia”_. Os termos podem ser explorados em ordem alfabética ou por meio de digitação e busca;

<iframe    width="560"    height="513"     src="https://www.youtube.com/embed/6-3nRtvMvXQ" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

5.Marque a opção _“Lista de opções sempre visível”_ se você está exibindo uma lista de caixa de seleção ou entrada de rádio e deseja que, durante o preenchimento, a lista de opções esteja sempre visível. Esta opção só está disponível para a entrada do tipo _“Checkbox”;_

![Acesse o painel de controle](_assets\images\080.png)

6.Se necessário, habilite _“Permitir termos novos”_ para autorizar que novos termos de _“Taxonomia”_ sejam criados durante o envio de _“itens”_.

![Acesse o painel de controle](_assets\images\081.png)

■**“Link filtrado para a coleção”**

Os termos de _“Taxonomia”_ se transformam em itens na página do _“Item”_. Isto dá ao usuário a possibilidade de visitar uma faceta ou recorte do acervo. Por exemplo: em uma ficha de uma moeda de ouro, ao clicar no link referente ao termo _"ouro"_ o visitante terá acesso a todos os _“itens”_ que foram classificados com o mesmo material. Como uma _“Taxonomia”_ pode ser compartilhada entre diferentes _“coleções”_ no Tainacan, você pode configurar se o link do _“item”_ vai dar acesso a itens de outras coleções ou somente da coleção em que o item está inserido.

![Acesse o painel de controle](_assets\images\082.png)

### Relacionamento

_“Metadados de Relacionamento”_ permitem fazer a conexão entre itens de uma mesma coleção ou entre itens de coleções distintas, ou seja, atribuem um item de uma coleção como valor para seu preenchimento;

​■**“Configurações adicionais”**

1.Selecione a _“coleção relacionada”_ para apontar a origem da lista de _“itens”_ no preenchimento do _“metadado”_;

2.Quando uma _“coleção”_ é selecionada, a seção _“Metadados para busca”_ permite escolher os metadados desta _“coleção”_ que irão auxiliar na localização de _“itens”_ durante o preenchimento deste _“metadado”_;

3.Habilite _“permitir itens repetidos”_ para que um mesmo _“item”_ da _“coleção relacionada”_ seja atribuído como valor do _“metadado”_ em diferentes _“itens”_.

<iframe
      width="560"
      height="513" 
      src="https://www.youtube.com/embed/z1lc9X9GMTE" title="YouTube video player"
      frameborder="0"
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen>
</iframe>

### Composto

_“Metadados Compostos”_ são aqueles cujo valor não pode ser representado de maneira isolada por um único campo. Por exemplo, um endereço residencial pode ser composto por campos de _“texto”_, _“número”_ e até _“listas de seleção”_. Estes campos ou _“metadados”_ internos ao composto são chamados _“Metadados Filhos”_.

É importante diferenciar este conceito de uma [_“Sessão de Metadados”_](/es-mx/metadata-sections.md), cujo propósito é apenas de organizar dados _“agrupados”_. **Para simples separação visual, não o use**. No caso do _“metadado composto”_, é possível ter multivalores compostos, ou seja, uma lista de valores constituídos por diferentes sub-valores que se relacionam.

Note que, ao usá-los:

● Não é possível ter uma “Taxonomia” como “Metadado filho”;

● Um “metadado composto” não pode ser marcado como “Obrigatório” ou “Valor Único”. Esse atributo será marcado nos filhos. Se o “metadado composto”, porém, está marcado como “Aceita múltiplos valores”, seus filhos não poderão ser marcados como “Obrigatório”;

● Os “metadados filhos” não podem ser marcados como “Multivalorados”, e não possuem opções de visualização (“Ver na lista”), estas configurações correspondem ao pai;

● “Metadados compostos” não estão disponíveis como opção para “Busca Avançada” ou “Edição em Massa”, apenas seus filhos.

​■**Configurações adicionais:**

1.Logo ao se criar um _“metadado composto”_, uma área de criação dos filhos é formada abaixo de seu formulário. Arraste os tipos de _“metadados”_ desejados para dentro desta área para criar filhos;

2.Note que a ordenação funciona internamente entre filhos, mas, uma vez criados, não é possível promover os _“metadados”_ para _“não filhos”_.

<iframe
      width="560"
      height="513" 
      src="https://www.youtube.com/embed/x-iUm3pbOmQ" title="YouTube video player"
      frameborder="0"
      allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
      allowfullscreen>
</iframe>

### Usuário

“_Metadados”_ do tipo _“Usuário”_ atribuem um usuário WordPress como valor para seu preenchimento. Com ele você pode vincular usuários à _“itens”_ e definir um significado para tal vínculo, em geral desejado para fins de gestão.

§ Caso deseje que o campo seja de início preenchido com o valor do atual “Autor do item” (o usuário que o criou), marque a opção “Por padrão é o autor do item”.

> **Nota:** Marcar a opção acima não faz com que itens _“já existentes”_ tenham seus valores deste _“metadado”_ automaticamente preenchidos. Para isso, é possível usar o método _“Copiar”_ da edição em massa, passando dados para o _“metadado tipo usuário”_, vindos do atributo _“Criado por”_, que equivale ao _“autor do item”_.

Atualmente o Tainacan tem nove tipos de _“metadados por padrão”_, mas novos conjuntos[ ](https://tainacan.github.io/tainacan-wiki/#/dev/creating-metadata-type)[podem ser desenvolvidos](https://tainacan.github.io/tainacan-wiki/#/dev/creating-metadata-type) de acordo com a necessidade individual de cada instalação e/ou adicionados ao core do Tainacan. Consulte o artigo sobre o[ ](https://tainacan.github.io/tainacan-wiki/#/dev/)[Desenvolvimento do Plugin](https://tainacan.github.io/tainacan-wiki/#/dev/) para saber mais.

## Editar Metadados

Como detalhado na seção de criação de metadados, os _“metadados”_ podem ser criados tanto no _“nível de repositório”_ (serão herdados por todas as coleções), quanto no nível de uma determinada _“coleção”_. Por isso, os _“metadados”_ podem ser editados nestes dois níveis.

### Edição no Nível do repositório

1. Acesse o _“painel de controle”_ do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em _“Tainacan”_;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique em _"Metadados de Repositório"_ (metadados que são herdados por todas as coleções);

   ![Acesse o painel de controle](_assets\images\085.png)

   !>**Atenção**: As modificações em configurações de _“metadados a nível de repositório”_ podem afetar dados já preenchidos e informações em itens que serão ou já foram criados em todo o repositório.

4. Clique no _“ícone de lápis”_ à direita do _“metadado”_ que deseja editar;

   ![Acesse o painel de controle](_assets\images\086.png)

5. Ao concluir as alterações, clique em _“Salvar”_ ou clique em _“Cancelar”_ para abortar a missão;

   !>**Atenção**: Não é possível alterar o _“Tipo de Metadado”._ Por exemplo, alterar um _“metadado”_ do tipo _“Texto”_ para _“Texto Longo”_, ou _“Numérico”_ para _“Data”_.

### Edição no nível da coleção

1. Acesse o _“painel de controle”_ do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em _“Tainacan”_;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique na _“coleção”_ que você deseja editar;

   ![Acesse o painel de controle](_assets\images\087.png)

4. Clique em _“metadados”_;

![Acesse o painel de controle](_assets\images\088.png)

5. Clique no _“ícone lápis”_ para editar o _“metadado”;_

   ![Acesse o painel de controle](_assets\images\089.png)

!>**Atenção**: Não é possível alterar o _“Tipo de Metadado”_. Por exemplo, alterar um _“metadado”_ do tipo “_Texto”_ para “_Texto Longo”_, ou “_Numérico”_ para _“Data”_.

## Excluir Metadados

Excluir _“Metadados a nível de Repositório”_:

1. Acesse o _“painel de controle”_ do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em _“Tainacan”_;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique em _"Metadados de Repositório"_ (metadados que são herdados por todas as coleções);

   ![Acesse o painel de controle](_assets\images\085.png)

4. Clique no “_ícone de lixeira”_ à direita do _“metadado”_ que deseja excluir;

   ![Acesse o painel de controle](_assets\images\090.png)

!>**Atenção**: Ao clicar no _“ícone de lixeira”_, o metadado é excluído imediatamente. Esta operação não poderá ser desfeita. A exclusão de _“metadados a nível de repositório”_ afetam **todos** os dados já preenchidos e informações em _“itens”_ que já foram criados em todo o repositório. Antes da exclusão do _“metadado”_, recomenda-se que este seja somente desabilitado (até que haja certeza de que a exclusão não implicará na perda de informações). Exclua o _“metadado”_ somente se tiver certeza de que não haverá perdas graves de informação. Consulte [Registro de atividades](/es-mx/activities) para saber mais.

### Excluir Metadados a nível de _“Coleções”_

1. Acesse o _“painel de controle”_ do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em _“Tainacan”_;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique na _“coleção”_ que você deseja editar;

   ![Acesse o painel de controle](_assets\images\087.png)

4. Clique em _“metadados”;_

   ![Acesse o painel de controle](_assets\images\088.png)

5. Clique no _“ícone lixeira”_ para excluir o _“metadado”_;

   ![Acesse o painel de controle](_assets\images\091.png)

!>**Atenção:** Excluir _“Metadados a nível de coleção”_ afeta as informações de todos os _“itens”_ criados nesta _“coleção”_; Na tela de edição de _“Metadados”_ (a nível de repositório ou a nível de coleção), é possível visualizar os _“metadados já criados”_ (ou herdados) na coluna à esquerda; A exclusão do _“metadado”_ implica, também, na exclusão de seus valores em todos os _“itens”_ aos quais se aplica. Antes da exclusão do _“metadado”_, recomenda-se que este seja somente desabilitado (até que haja certeza de que a exclusão não implicará na perda de informações). Para _“desabilitar um metadado”_, basta clicar no botão ao lado da _“caneta de edição”_.

![Acesse o painel de controle](_assets\images\092.png)
