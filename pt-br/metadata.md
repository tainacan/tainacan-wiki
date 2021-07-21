<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Metadados" 
		src="/_assets/images/icon_metadata.png"
		width="42"
		height="42">
</div>

# Metadados

No Tainacan, os *“itens”* são organizados por meio de *“coleções”* e, cada *“coleção”*, pode ter *“metadados”* específicos ou compartilhar *“metadados”* entre si. Os *“metadados”* são usados para descrever os *“itens”*, visando sua recuperação. 

Os *“metadados”* definem as características, parâmetros e especificidades das informações que serão inseridas junto com o documento digital durante o envio de *“itens”* para as *“coleções”*. 

> É similar, por exemplo, às configurações dos campos que farão parte de um “*formulário”*, ou aos campos de uma “*ficha museológica”*. 

Cada *“metadado”* tem um conjunto de configurações possíveis: É um *“metadado obrigatório”*? Seus *“valores”* são *únicos* para cada *“item”* (número de registro, por exemplo)? Ele aceita *“múltiplos valores”* (vários autores, por exemplo)? 

É possível configurar *“metadados a* *nível de repositório”*, que serão herdados por todas as *“coleções”* no repositório. 

  * Consulte a seção[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/collections)[Coleções](https://tainacan.github.io/tainacan-wiki/#/pt-br/collections) para saber mais sobre a configuração de *“coleções herdadas”*; 
* Também é possível importar e exportar *“metadados predefinidos”*. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/bulk-edition)[Ações em Massa](https://tainacan.github.io/tainacan-wiki/#/pt-br/bulk-edition). 

-----


## Características gerais de metadados

* Por padrão, todas as *“coleções”* possuem os *“metadados”* de *“Título”* e *“Descrição”*, que não podem ser excluídos, mas, podem ser *“editados”* ou *“desabilitados”*. Estes *“metadados”* são usados em algumas listagens dentro do Tainacan para representar o *“item”*; 
* *“Metadados herdados”* podem ser “*habilitados”* ou “*desabilitados”*, o que implica na sua existência para o preenchimento durante o envio de um novo *“item”* e, também, na sua ausência (com seus respectivos dados) durante a visualização de *“coleções”* e dos *“itens”*; 
* *“Metadados a nível de repositório”* são herdados por todas as *“coleções”* no repositório, assinalados com “*herdado*” à frente do nome; 

- Não é possível alterar o *“Tipo do Metadado”*. Por exemplo, alterar um *“metadado”* do tipo “*Texto”* para “*Texto Longo”*, ou “*Numérico”* para “*Data”*, após sua criação; 
- *“Metadados”* que não foram herdados do repositório podem ser excluídos, e apresentam um *“ícone de lixeira”* à frente. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=excluir-metadados)[Excluir metadados](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=excluir-metadados) para saber mais. 



O Tainacan não possui um *“modelo de metadados padrão”*, e sim diferentes *“tipos de metadados”* que podem ser escolhidos para atender as necessidades do usuário durante a montagem de seu acervo digital. A escolha correta do *“tipo de metadado”* vai ajudar na hora do preenchimento das informações e, consequentemente, na recuperação mais precisa dos *“itens”*.

Os *“metadados”* podem ser criados de forma automática durante a importação de dados em massa, ou manualmente durante a criação da *“coleção”* pelo *“painel administrativo”*. 

## Criar Metadados

Os *“metadados”* podem ser criados manualmente no nível do *“repositório”* ou da *“coleção”*. Como detalhado acima, os *“metadados”* criados no nível de *“repositório”* são herdados por todas as *“coleções”*. 

*“Metadados”* a nível de *“Repositório”* devem ser pensados para permitir a inserção de informações globais, ou seja, comuns a pelo menos grande parte do repositório. Por exemplo: *“Número de Registro”, “Tipo de arquivo”, “Data do registro do item”, “Estado de Conservação”* e etc. 

Novas *“coleções”* podem ser criadas também com um modelo de “*metadados predefinido*” ou importadas por fontes externas. *“Coleções”* criadas com *“metadados predefinidos”* contam com um conjunto de *“metadados preestabelecidos”* durante sua criação, e podem ser geridas da mesma maneira que outras *“coleções”*. 



​		Desde a versão 0.6 do plugin, existe a opção para a criação de *“coleções”* com um conjunto de *“metadados”* a partir do modelo *“Dublin Core”*. 

​		Novos conjuntos de *“metadados”* podem ser desenvolvidos de acordo com a necessidade individual de cada instalação, e/ou adicionados ao Tainacan. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/dev/)[Desenvolvimento do Plugin](https://tainacan.github.io/tainacan-wiki/#/dev/) para saber mais sobre o desenvolvimento do Tainacan. 

1. Faça login no WordPress com seu *“nome de usuário”* e *“senha”*; 

   ![Acesse o painel de controle](\_assets\images\050.png)

2. No *“painel administrativo”*, clique em *“Tainacan”*;  

   ![Acesse o painel de controle](\_assets\images\051.png)

3. Clique em *“Metadados do Repositório”*;  

   ![Acesse o painel de controle](\_assets\images\070.png)

4. Para “*criar um novo metadado”*, basta clicar no *“metadado”* e ele aparecerá por último na listagem do lado esquerdo. Você também pode usar o recurso de arrastar e soltar, que permite a *“ordenação do metadado”* durante sua criação. 



## Criar Metadados à nível de Coleções



○ “Metadados” a nível de “coleção” são aplicados apenas aos “itens” criados nesta “coleção”. Os metadados também são em coleções “filhas” desta coleção; 

○ Crie ou escolha a “coleção” que deseja “criar novos metadados”. Consulte Criar coleção para saber mais;



1. Faça login no WordPress com seu *“nome de usuário”* e *“senha”*; 

   ![Acesse o painel de controle](\_assets\images\050.png)

2. No *“painel administrativo”* clique em *“Tainacan”;*  

   ![Acesse o painel de controle](\_assets\images\051.png)

3. Crie uma *“coleção”* como apresentado no tópico "*Criar Coleções*"; 

4. Acesse a *“coleção”* criada e clique em *“Metadados”;*  

   ![Acesse o painel de controle](\_assets\images\064.png)

5. Para *“criar um novo metadado”*, basta clicar no *“metadado”* e ele aparecerá por último na listagem do lado esquerdo. Você também pode usar o recurso de arrastar e soltar, que permite a *“ordenação do metadado”* durante sua criação. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados)[Tipos de metadados](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados) para saber o *“metadado”* mais adequado para cada tipo de informação; 

6. Cada *“metadado”* criado tem um conjunto de configurações e funções individuais para configuração. Abaixo, descrevemos as funções gerais que podem ser configuradas em praticamente todos os *“metadados”*. Consulte a área de metadados para aprender a usar configurações específicas (linkar);  

   ![Acesse o painel de controle](\_assets\images\071.png)

   

   **“Nome”**: Nome do *“Metadado”*, Por exemplo: *“Material do item”*, *“Estado de conservação”*, e etc.; 

   **“Descrição”**: Breve descrição, útil para descrever ou explicar como o *“metadado”* deve ser preenchido. A descrição pode ser visualizada passando o cursor por sobre o ponto de interrogação, que fica ao lado do *“metadado”*, durante o preenchimento; 

   ![Acesse o painel de controle](\_assets\images\descricao_metadado.png)

   **“URL Semântica”**: URL da descrição semântica do *“metadado”*. Configuração opcional; 

   **“Status”**: Determina o nível de privacidade do *“metadado”*, ou seja, para informações sensíveis que não devem ficar disponíveis aos visitantes ou para um papel específico. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/users)[Permissões de Usuários](https://tainacan.github.io/tainacan-wiki/#/pt-br/users) para saber mais detalhes; 

   ​	■ “Visível para todos”: São exibidos junto com o “item”, a depender do nível de privacidade deste “item” e a “coleção” a qual pertence;

   ​	■ “Visível apenas para editores”: São exibidos apenas para administradores, editores e moderadores da *“coleção”*. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/users)[Permissões de Usuários](https://tainacan.github.io/tainacan-wiki/#/pt-br/users) para saber mais detalhes. 

   **“Exibir na Listagem”**: Determina se o *“metadado”* é apresentado por padrão na visualização dos itens: 

   ​	■ “Exibir por padrão”: O “metadado” é exibido por padrão na página de visualização da “coleção” (dependendo do tipo de visualização) e, na pré-visualização do “item”;

   ​	■ “Não exibir por padrão”: O “metadado” não é exibido por padrão na visualização da “coleção”, mas, pode ser selecionado para exibição pelo usuário (dependendo do tipo de visualização), e exibido na pré-visualização do “item”;

   ​	■ “Nunca exibir”: O “metadado” não é exibido na visualização da “coleção” e, também não aparece como opção para seleção na página de visualização da “coleção”. O *“metadado”* continua visível na visualização do *“item”*, altere o *“status do metadado”* para mudar seu nível de privacidade. 

   **“Opções de preenchimento”**: 

   ​	■ “Obrigatório”: Determina se o preenchimento do “metadado” é obrigatório. Isso implica no envio do “item”, que não é permitido caso o campo de preenchimento deste “metadado” esteja vazio;

   ​	■ “Único ou Múltiplo”: Determina se o “metadado” permite a inserção de um único valor ou múltiplos valores, como, por exemplo, “metadados” sobre “Cor”, “Material” e etc;

   ​	■ “Valor Único”: Determina que o valor inserido no “metadado” não se repete em outros “itens” no repositório (para “metadados” criados a nível de repositório) ou na mesma “coleção” (para “metadados” criados a nível de “coleção”). 

   Dependendo do *“tipo de metadado”*, também existem opções específicas a serem configuradas. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados)[Tipos de metadados](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados) para mais detalhes. 

7. Após preencher e configurar o *“metadado”*, clique em *“Salvar”*, ou clique em *“Cancelar”* para abortar a missão. Uma vez salvo, o *“metadado”* criado aparecerá como um campo a ser preenchido durante o envio e a edição de novos *“itens”*. 

   

   ## Tipos de Metadados

   Abaixo descrevemos cada um dos *“tipos de metadados”* disponíveis e suas configurações.

   

   **“Texto simples”:** 

   Para *“metadados”* de textos curtos e livres. Não permite a inserção de parágrafos; 

   ![Acesse o painel de controle](\_assets\images\066.png)

   

   **“Área de Texto”:** 

   Para *“metadados”* de textos curtos e livres. Permite a inserção de parágrafos; 

   ![Acesse o painel de controle](\_assets\images\067.png)

   

   **“Data”:** 

   Para *“metadados”* de datas completas no formato *“DD/MM/AAAA”*. Caso não tenha a data completa, sugerimos escolher outros campos para a inserção de datas, tais como *“numérico”* e *“texto curto”*. Este *“metadado”* permite a recuperação de *“itens”* por intervalos de tempo em dois tipos de filtros. Acesse Filtros disponíveis para cada Tipo de Metadado para saber mais; 

   ![Acesse o painel de controle](\_assets\images\076.png)

   

   **“Numérico”:** 

   Para *“metadados”* que contenham apenas números. Este tipo de *“metadado”* permite a recuperação de *“itens”* por intervalos. Acesse Filtros disponíveis para cada Tipo de Metadado para saber mais; 

   ​	■**Configurações adicionais**

   ​	Passo: Você pode configurar quantidade a ser incrementada/decrementada ao clicar nos botões de controle durante o preenchimento do *“metadado”*. Por exemplo: ao usar o *“metadado numérico”* como *"Década"*, você pode configurar o passo para 10. No preenchimento, ao clicar nas setas, o valor será incrementado de 10 em 10. 

   <iframe    width="560"    height="513"     src="https://www.youtube.com/embed/_hRrB6wVY7k" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

   

   "**Lista de seleção"**: 

   Para *“metadados”* que possuem um pequeno conjunto de termos controlados. Diferentemente da *“taxonomia”*, os termos não viram link na página do *“item”* e não possuem uma página própria; 

   ​	■**Configurações adicionais**: 

   ​	Os termos são adicionados no campo *“Opções”*. Para adicionar mais valores, basta escrever o termo e clicar no *“Enter”***;** 

   <iframe    width="560"    height="513"     src="https://www.youtube.com/embed/-UoNKi7KfBw" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

   !>**Atenção**: Para criar novos termos na lista de seleção, é necessário que o usuário tenha permissão para a edição do “metadado” em questão. O “metadado” de lista de seleção não permite a criação de novos termos durante o preenchimento, estes termos precisam ser configurados previamente.

   

   **“Taxonomias”**: 

   “*Metadados do tipo Taxonomia***”** usam uma *“taxonomia”* criada previamente. Este tipo de *“metadado”* é especialmente útil para informações estruturadas a partir de um *“vocabulário controlado”*, permitindo inclusive a hierarquização de termos. Abaixo, apresentamos os passos para configurar um metadado do tipo *“Taxonomia”*. 

   ​		■**Configurações adicionais:** 

   ​	Como informado acima, é necessário criar primeiro uma *“Taxonomia”*. Esta será usada durante o processo de criação de um *“Metadado de Taxonomia”*: 

   1.Crie uma *“taxonomia”*. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/taxonomies?id=criar-taxonomias)[Criar Taxonomias](https://tainacan.github.io/tainacan-wiki/#/pt-br/taxonomies?id=criar-taxonomias) para conhecer mais; 

   2.Crie um *“metadado”* do tipo *“Taxonomia”*. Consulte Criar Metadados para saber mais; 

   3.Na área de *“edição do metadado”*, selecione a *“taxonomia”* desejada para o preenchimento dos valores no *“metadado”*;  

   <iframe    width="560"    height="513"     src="https://www.youtube.com/embed/bDy0FQFolAs" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

   4.Escolha o tipo de entrada de informações durante o preenchimento dos valores no *“metadado”*;  

   ![Acesse o painel de controle](\_assets\images\077.png)

   

   ​		■**Entrada do tipo** **“Tag input”**: 

   Neste tipo de entrada, é oferecido ao usuário somente uma caixa de busca. Os termos podem ser explorados por meio de digitação e busca; 

   <iframe    width="560"    height="513"     src="https://www.youtube.com/embed/RUaAFqM_XmE" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

   

   ​		■**Entrada do tipo** **"Checkbox”:** 

   Este tipo de entrada ajuda o usuário a saber quais são os termos disponíveis para escolha em uma determinada *“Taxonomia”*. Os termos podem ser explorados em ordem alfabética ou por meio de digitação e busca; 

   <iframe    width="560"    height="513"     src="https://www.youtube.com/embed/6-3nRtvMvXQ" title="YouTube video player"    frameborder="0"    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"    allowfullscreen></iframe>

   

   5.Marque a opção *“Lista de opções sempre visível”* se você está exibindo uma lista de caixa de seleção ou entrada de rádio e deseja que, durante o preenchimento, a lista de opções esteja sempre visível. Esta opção só está disponível para a entrada do tipo *“Checkbox”;* 

   ![Acesse o painel de controle](\_assets\images\080.png)

   6.Se necessário, habilite *“Permitir termos novos”* para autorizar que novos termos de *“Taxonomia”* sejam criados durante o envio de *“itens”*. 

   ![Acesse o painel de controle](\_assets\images\081.png)

   

   ​		■**“Link filtrado para a coleção”** 

   Os termos de *“Taxonomia”* se transformam em itens na página do *“Item”*. Isto dá ao usuário a possibilidade de visitar uma faceta ou recorte do acervo. Por exemplo: em uma ficha de uma moeda de ouro, ao clicar no link referente ao termo *"ouro"* o visitante terá acesso a todos os *“itens”* que foram classificados com o mesmo material. Como uma *“Taxonomia”* pode ser compartilhada entre diferentes *“coleções”* no Tainacan, você pode configurar se o link do *“item”* vai dar acesso a itens de outras coleções ou somente da coleção em que o item está inserido.

   ![Acesse o painel de controle](\_assets\images\082.png)

   **“Relacionamento”:** 

   *“Metadados de Relacionamento”* permitem fazer a conexão entre itens de uma mesma coleção ou entre itens de coleções distintas, ou seja, atribuem um item de uma coleção como valor para seu preenchimento; 

   ​	■**“Configurações adicionais”** 

   1.Selecione a *“coleção relacionada”* para apontar a origem da lista de *“itens”* no preenchimento do *“metadado”*; 

   2.Quando uma *“coleção”* é selecionada, a seção *“Metadados para busca”* permite escolher os metadados desta *“coleção”* que irão auxiliar na localização de *“itens”* durante o preenchimento deste *“metadado”*; 

   3.Habilite *“permitir itens repetidos”* para que um mesmo *“item”* da *“coleção relacionada”* seja atribuído como valor do *“metadado”* em diferentes *“itens”*. 
   
   <iframe
       width="560"
       height="513" 
       src="https://www.youtube.com/embed/z1lc9X9GMTE" title="YouTube video player"
       frameborder="0"
       allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
       allowfullscreen>
   </iframe>
   
   
   
   **“Composto”**: 
   
   *“Metadados Compostos”* são aqueles cujo valor não pode ser representado de maneira isolada por um único campo. Por exemplo, um endereço residencial pode ser composto por campos de *“texto”*, *“número”* e até *“listas de seleção”*. Estes campos ou *“metadados”* internos ao composto são chamados *“Metadados Filhos”*. 
   
   É importante diferenciar este conceito de uma *“Sessão de Metadados”*, cujo propósito é apenas de organizar dados *“agrupados”*. **Para simples separação visual, não o use**. No caso do *“metadado composto”*, é possível ter multivalores compostos, ou seja, uma lista de valores constituídos por diferentes sub-valores que se relacionam. 
   
   Note que, ao usá-los: 
   
   ● Não é possível ter uma “Taxonomia” como “Metadado filho”;
   
   ● Um “metadado composto” não pode ser marcado como “Obrigatório” ou “Valor Único”. Esse atributo será marcado nos filhos. Se o “metadado composto”, porém, está marcado como “Aceita múltiplos valores”, seus filhos não poderão ser marcados como “Obrigatório”;
   
   ● Os “metadados filhos” não podem ser marcados como “Multivalorados”, e não possuem opções de visualização (“Ver na lista”), estas configurações correspondem ao pai;
   
   ● “Metadados compostos” não estão disponíveis como opção para “Busca Avançada” ou “Edição em Massa”, apenas seus filhos.
   
   ​		■**Configurações adicionais:** 
   
   1.Logo ao se criar um *“metadado composto”*, uma área de criação dos filhos é formada abaixo de seu formulário. Arraste os tipos de *“metadados”* desejados para dentro desta área para criar filhos; 
   
   2.Note que a ordenação funciona internamente entre filhos, mas, uma vez criados, não é possível promover os *“metadados”* para *“não filhos”*. 
   
   <iframe
       width="560"
       height="513" 
       src="https://www.youtube.com/embed/x-iUm3pbOmQ" title="YouTube video player"
       frameborder="0"
       allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
       allowfullscreen>
   </iframe>
   
   **“Usuário”**: 
   
   “*Metadados”* do tipo *“Usuário”* atribuem um usuário WordPress como valor para seu preenchimento. Com ele você pode vincular usuários à *“itens”* e definir um significado para tal vínculo, em geral desejado para fins de gestão. 
   
   § Caso deseje que o campo seja de início preenchido com o valor do atual “Autor do item” (o usuário que o criou), marque a opção “Por padrão é o autor do item”.
   
   > **Nota:** Marcar a opção acima não faz com que itens *“já existentes”* tenham seus valores deste *“metadado”* automaticamente preenchidos. Para isso, é possível usar o método *“Copiar”* da edição em massa, passando dados para o *“metadado tipo usuário”*, vindos do atributo *“Criado por”*, que equivale ao *“autor do item”*. 
   
   Atualmente o Tainacan tem nove tipos de *“metadados por padrão”*, mas novos conjuntos[ ](https://tainacan.github.io/tainacan-wiki/#/dev/creating-metadata-type)[podem ser desenvolvidos](https://tainacan.github.io/tainacan-wiki/#/dev/creating-metadata-type) de acordo com a necessidade individual de cada instalação e/ou adicionados ao core do Tainacan. Consulte o artigo sobre o[ ](https://tainacan.github.io/tainacan-wiki/#/dev/)[Desenvolvimento do Plugin](https://tainacan.github.io/tainacan-wiki/#/dev/) para saber mais. 



## Editar Metadados

Como detalhado na seção de criação de metadados, os *“metadados”* podem ser criados tanto no *“nível de repositório”* (serão herdados por todas as coleções), quanto no nível de uma determinada *“coleção”*. Por isso, os *“metadados”* podem ser editados nestes dois níveis. 

###  Edição no Nível do repositório 

1. Acesse o *“painel de controle”* do WordPress;  

   ![Acesse o painel de controle](\_assets\images\050.png)

2. Na barra lateral esquerda, clique em *“Tainacan”*;  

   ![Acesse o painel de controle](\_assets\images\051.png)

3. Clique em *"Metadados de Repositório"* (metadados que são herdados por todas as coleções); 

   ![Acesse o painel de controle](\_assets\images\085.png) 

   !>**Atenção**: As modificações em configurações de *“metadados a nível de repositório”* podem afetar dados já preenchidos e informações em itens que serão ou já foram criados em todo o repositório. 

4. Clique no *“ícone de lápis”* à direita do *“metadado”* que deseja editar;  

   ![Acesse o painel de controle](\_assets\images\086.png) 

5. Ao concluir as alterações, clique em *“Salvar”* ou clique em *“Cancelar”* para abortar a missão; 

   !>**Atenção**: Não é possível alterar o *“Tipo de Metadado”.* Por exemplo, alterar um *“metadado”* do tipo *“Texto”* para *“Texto Longo”*, ou *“Numérico”* para *“Data”*. 



### Edição no nível da coleção 

1. Acesse o *“painel de controle”* do WordPress;  

   ![Acesse o painel de controle](\_assets\images\050.png) 

2. Na barra lateral esquerda, clique em *“Tainacan”*; 

   ![Acesse o painel de controle](\_assets\images\051.png)

3. Clique na *“coleção”* que você deseja editar; 

   ![Acesse o painel de controle](\_assets\images\087.png)

4.  Clique em *“metadados”*; 

   ![Acesse o painel de controle](\_assets\images\088.png)

5. Clique no *“ícone lápis”* para editar o *“metadado”;*  

   ![Acesse o painel de controle](\_assets\images\089.png)

!>**Atenção**: Não é possível alterar o *“Tipo de Metadado”*. Por exemplo, alterar um *“metadado”* do tipo “*Texto”* para “*Texto Longo”*, ou “*Numérico”* para *“Data”*. 



## Excluir Metadados

Excluir *“Metadados a nível de Repositório”*: 

1. Acesse o *“painel de controle”* do WordPress; 

   ![Acesse o painel de controle](\_assets\images\050.png) 

2. Na barra lateral esquerda, clique em *“Tainacan”*; 

   ![Acesse o painel de controle](\_assets\images\051.png)

3. Clique em *"Metadados de Repositório"* (metadados que são herdados por todas as coleções);

   ![Acesse o painel de controle](\_assets\images\085.png)

4. Clique no “*ícone de lixeira”* à direita do *“metadado”* que deseja excluir; 

   ![Acesse o painel de controle](\_assets\images\090.png)

!>**Atenção**: Ao clicar no *“ícone de lixeira”*, o metadado é excluído imediatamente. Esta operação não poderá ser desfeita. A exclusão de *“metadados a nível de repositório”* afetam **todos** os dados já preenchidos e informações em *“itens”* que já foram criados em todo o repositório. Antes da exclusão do *“metadado”*, recomenda-se que este seja somente desabilitado (até que haja certeza de que a exclusão não implicará na perda de informações). Exclua o *“metadado”* somente se tiver certeza de que não haverá perdas graves de informação. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/activities)[Registro de atividades](https://tainacan.github.io/tainacan-wiki/#/pt-br/activities) para saber mais. 



### Excluir Metadados a nível de *“Coleções”*

1. Acesse o *“painel de controle”* do WordPress; 

   ![Acesse o painel de controle](\_assets\images\050.png) 

2. Na barra lateral esquerda, clique em *“Tainacan”*; 

   ![Acesse o painel de controle](\_assets\images\051.png)

3. Clique na *“coleção”* que você deseja editar; 

   ![Acesse o painel de controle](\_assets\images\087.png)

4. Clique em *“metadados”;* 

   ![Acesse o painel de controle](\_assets\images\088.png)

5. Clique no *“ícone lixeira”* para excluir o *“metadado”*; 

   ![Acesse o painel de controle](\_assets\images\091.png)

!>**Atenção:** Excluir *“Metadados a nível de coleção”* afeta as informações de todos os *“itens”* criados nesta *“coleção”*;  Na tela de edição de *“Metadados”* (a nível de repositório ou a nível de coleção), é possível visualizar os *“metadados já criados”* (ou herdados) na coluna à esquerda; A exclusão do *“metadado”* implica, também, na exclusão de seus valores em todos os *“itens”* aos quais se aplica. Antes da exclusão do *“metadado”*, recomenda-se que este seja somente desabilitado (até que haja certeza de que a exclusão não implicará na perda de informações). Para *“desabilitar um metadado”*, basta clicar no botão ao lado da *“caneta de edição”*. 

![Acesse o painel de controle](\_assets\images\092.png)

