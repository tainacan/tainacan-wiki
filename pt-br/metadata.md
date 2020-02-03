<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Metadados" 
		src="/_assets/images/icon_metadata.png"
		width="42"
		height="42">
</div>

# Metadados

No Tainacan, cada coleção tem um conjunto de metadados para descrever seus documentos. Isso significa que a **coleção** a qual o **item** pertence determina os *metadados* que ele tem.

Os **metadados** definem as características, parâmetros e especificidades das informações que serão inseridas referentes ao documento durante o envio de itens para as **coleções**.

> É similar, por exemplo, a configuração dos campos que farão parte de um *formulário*, ou aos campos de uma *ficha museológica*.

Cada metadado tem um conjunto de configurações possíveis. É um metadado *obrigatório*? Seus *valores* são *únicos* para cada item (Um número de registro, por exemplo)? Ele aceita *múltiplos valores* (Vários autores, por exemplo)?

É possível configurar metadados a **nível de repositório**, que serão herdados por todas coleções no repositório. Da mesma forma, coleções configuradas como **filha** herdam todos metadados da coleção apontada.

  * Consulte a seção [Coleções](/pt-br/collections) para saber mais sobre a configuração de coleções herdadas.
  * Também é possível importar e exportar metadados predefinidos (Consulte [Ações em Massa](/pt-br/bulk-edition))

-----

### Vídeo Tutorial: Criação de Metadados

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/fzbd36fbuII?start=431"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

## Características gerais de metadados

* Por padrão, todos os itens possuem o metadado de **Título** e de **Descrição**, que não podem ser excluídos, mas podem ser *editados* ou desabilitados.
* Metadados **herdados** podem ser *habilitados* ou *desabilitados*, o que implica na sua existência para o preenchimento durante o envio de um novo item e também na sua ausência (com seus respectivos dados) durante a visualização de coleções e dos itens.
* Metadados a nível de **repositório** são herdados por todas coleções no repositório, assinalados com *"herdado"* a frente do nome.
* Coleções configuradas para herdar metadados de uma **coleção acima** apresentam estes metadados com *"herdado"* assinalado à frente.
* Não é possível alterar o **tipo do Metadado**. (Por exemplo, alterar um metadado do tipo *Texto* para *Texto Longo*, ou *Numérico* para *Data*)
* Metadados que não foram herdados do repositório (ou de coleções acima) podem ser excluídos, apresentado um **ícone de lixeira** à frente. (Consulte [Excluir metadados](#excluir-metadados).)

## Tipos de metadados

<details>
<summary>Texto:</summary>
Metadado ideal para inserção de textos curtos.
</details>

<details>
<summary>Área de Texto:</summary>
Metadado ideal para inserção de textos longos, com parágrafos.
</details>

<details>
<summary>Data:</summary>
Metadado ideal para a inserção de datas completas no formato **DD/MM/AAAA**.
</details>

<details>
<summary>Numérico:</summary>
Metadado ideal para inserção de informações que contenham apenas números. 
</details>

<details>
    <summary>Lista de seleção:</summary>
Metadado ideal para inserção de um pequeno conjunto de termos controlados. Adicione termos no campo **Opções**, para adicionar mais valores separe o valor atual por vírgula ou tecle *enter*.
    
!> **Atenção**: Para criar novos termos na lista de seleção é necessário que o usuário tenha permissão para a edição do metadado em questão. (Consulte [Criar Taxonomias](/pt-br/taxonomies#criar-taxonomias) para saber como permitir a adição de novos termos durante o envio de itens)
    
</details>

<details>
    <summary>Taxonomias:</summary>
Metadados do tipo Taxonomia usam uma taxonomia criada previamente, este tipo de metadado é especialmente útil para informações estruturadas a partir de um vocabulário controlado, permitindo inclusive a hierarquização de termos. Passos para configurar um metadado do tipo **Taxonomia**:

1. Crie uma taxonomia. (consulte [Criar Taxonomias](/pt-br/taxonomies#criar-taxonomias));
2. Crie um metadado do tipo **Taxonomia**;
3. Selecione a **taxonomia** desejada para o preenchimento dos valores no metadado.
4. Escolha o tipo de entrada de informações durante o preenchimento dos valores no metadado
5. Se necessário, habilite **"Permitir termos novos"** para permitir que novos termos sejam criados durante o envio de itens.
</details>

<details>
<summary>Relacionamento:</summary>

Metadados do tipo Relacionamento atribuem um item de uma coleção como valor para seu preenchimento (com os itens desta coleção).

1. Selecione a coleção relacionada para apontar a origem da lista de itens no preenchimento do metadado.
2. Quando uma coleção é selecionada, a seção "Metadados para busca" permite escolher os metadados desta coleção que irão auxiliar na localização de itens durante o preenchimento deste metadado.
3. Habilite **"permitir itens repetidos"** para que um mesmo item da coleção relacionada seja atribuído como valor do metadado em diferentes itens.
</details>


Existem diferentes tipos de metadados para permitir a criação de forma mais adequada com o tipo de informação que será preenchido durante o envio dos itens.

Atualmente o Tainacan tem seis tipos de metadados e filtros por padrão, mas novos conjuntos podem ser desenvolvidos de acordo com a necessidade individual de cada instalação e/ou adicionados ao core do Tainacan. (Consulte o artigo sobre o [Desenvolvimento do Plugin](/dev/) para saber mais.

<!-- tabs:start -->

#### ** Criar **
## Criar Metadados

1. Acesse o painel de *Controle do WordPress*;
2. Na barra lateral esquerda clique em Tainacan e então:
  1. Crie Metadados a nível de **Repositório**:
    * Clique em **Metadados do Repositório** para criar metadados que serão herdados por todas as coleções. Devem ser pensados para permitir a inserção de informações globais, ou seja, comuns a pelo menos grande parte do repositório. (Por exemplo: Número de Registro, Tipo de arquivo, Data do registro do item, Estado de Conservação etc.)
  2. Crie Metadados a nível de **Coleções**.
    * Metadados a nível de coleção são aplicados apenas aos itens criados nesta coleção. (Os metadados também são em coleções *filhas* desta coleção)
    * Crie ou escolha a coleção que deseja criar novos metadados (Consulte [Criar coleção](/pt-br/collections#criar-coleções)) para saber mais);
  3. Clique no ícone **Metadados** à direita, na barra superior de cor cinza;
3. Na tela de **edição de Metadados** (a *nível de repositório* ou a *nível de coleção*), é possível visualizar os metadados já criados (ou herdados) na coluna à esquerda.
4. Na mesma tela à direita estão listados os tipos de metadados disponíveis para criação.
5. Clique no tipo de metadado que deseja criar (Consulte [Tipos de metadados](/pt-br/metadata#tipos-de-metadados) para saber o metadado mais adequado para cada tipo de informação);
  * Cada metadado criado tem um conjunto de configurações e funções individuais para configuração:
    1. **Nome**: Nome do Metadado (Por exemplo: *"Material do item"*, *"Estado de conservação"*, etc.)
    2. **Descrição**: Breve descrição, útil para descrever ou explicar como o metadado deve ser preenchido.
    3. **URL Semântica**: URL da descrição semântica do metadado.
    4. **Status**: determina o nível de privacidade do metadado, por exemplo metadados para informações sensíveis, como Estado de conservação ou Valor da obra.
      * **Visível para todos**: são exibidos junto com o item, a depender do nível de privacidade deste item e a coleção a qual pertence.
      * **Visível apenas para editores**: são exibidos apenas para administradores, editores e moderadores da coleção. (Consulte [Permissões de Usuários](/pt-br/users) para saber mais detalhes)
    5. **Exibir na Listagem**: Determina se o metadado é apresentado por padrão na visualização dos itens.
      * Exibir por padrão: o metadado é exibido por padrão na visualização da coleção (dependendo do tipo de visualização) e na visualização do item
      * Não exibir por padrão: o metadado é não é exibido por padrão na visualização da coleção, mas pode ser selecionado para exibição pelo usuário (dependendo do tipo de visualização) e exibido na visualização do item
      * Nunca exibir: o metadado não é exibido na visualização da coleção e também não aparece como opção para seleção na visualização da coleção. O metadado continua visível na visualização do item, altere o status do metadado para mudar seu nível de privacidade.
    6. **Opções de preenchimento**:
      * **Obrigatório:** determina se o preenchimento do metadado é obrigatório. Isso implica no envio do item, que não é permitido caso o campo de preenchimento deste metadado esteja vazio.
      * **Único ou Múltiplo**: determina se o metadado permite a inserção de um único valor ou múltiplos valores, como, por exemplo, metadados sobre Cor, Material, etc.
      * **Valor Único**: determina que o valor inserido no metadado não se repete em outros itens no repositório (para metadados criados a nível de repositório) ou na mesma coleção (para metadados criados a nível de coleção).
  * Dependendo do tipo de metadado, também existem opções específicas a serem configuradas (Consulte [Tipos de metadados](/pt-br/metadata#tipos-de-metadados) para mais detalhes)
6. Após preencher e configurar o metadado, clique em `Salvar`.
  * ou clique em `cancelar` para abortar a missão.
7. Uma vez salvo, o metadado criado aparecerá como um campo a ser preenchido durante o envio e a edição de novos itens.


#### ** Editar **
## Editar Metadados

1. Acesse o painel de *Controle do WordPress*;
2. Na barra lateral esquerda clique em Tainacan e então:
  1. Edite Metadados a nível de **Repositório**:
  
  !> **Atenção**: As modificações em configurações de metadados a **nível de repositório** podem afetar dados já preenchidos e informações em itens que serão ou já foram criados em todo o repositório.
    * Clique em **Metadados do Repositório** para editar metadados que são herdados por todas as coleções. (Por exemplo: Número de Registro, Tipo de arquivo, Data do registro do item, Estado de Conservação etc.)
    * Clique no **ícone de lápis** à direita do metadado que deseja editar.
    * Ao concluir as alterações clique em `Salvar`
      * ou clique em `cancelar` para abortar a missão.
  
  !> **Atenção**: Não é possível alterar o tipo de Metadado. (Por exemplo, alterar um metadado do tipo Texto para Texto Longo, ou Numérico para Data)
  1. Edite Metadados a nível de **Coleções**.
    *  A edição de Metadados a nível de **coleção** são aplicados apenas aos itens criados nesta coleção. (A edição destes metadados também afetam coleções *filhas* desta coleção)
    * Escolha a coleção que deseja editar os metadados (Consulte [Criar coleção](/pt-br/collections#criar-coleções) para saber mais);
      1. Clique no ícone **Metadados** à direita, na barra superior de cor cinza;
3. Na tela de edição de Metadados (a *nível de repositório* ou a *nível de coleção*), é possível visualizar os metadados já criados (ou herdados) na coluna à esquerda.
  * Clique no *ícone de lápis* à direita do metadado que deseja editar.
  * Ao concluir as alterações clique em `Salvar`
    * ou clique em `cancelar` para abortar a missão.

  !> **Atenção**: Não é possível alterar o tipo de Metadado. (Por exemplo, alterar um metadado do tipo *Texto* para *Texto Longo*, ou *Numérico para Data*)


#### ** Excluir **
## Excluir Metadados

Metadados que não foram herdados a nível de **repositório** (ou de **coleções acima**) podem ser excluídos, apresentado um ícone de lixeira à frente.

1. Acesse o painel de *Controle do WordPress*;
2. Na barra lateral esquerda clique em Tainacan e então:
3. Excluir Metadados a nível de **Repositório**:
  1. Clique em **Metadados do Repositório** para excluir metadados que são herdados por todas as coleções.
  2. Clique no *ícone de lixeira* à direita do metadado que deseja excluir.
    
  !> **Atenção**: Ao clicar na *lixeira* o metadado é excluído imediatamente. Esta operação não poderá ser desfeita. A exclusão de metadados a nível de **repositório** afetam **todos** dados já preenchidos e informações em itens que já foram criados em todo o repositório. Antes da exclusão do metadado, recomenda-se que este seja somente desabilitado (até que haja certeza de que a exclusão não implicará na perda de informações). Exclua o metadado somente se tiver certeza de que não haverá perdas graves de informação. (Consulte [Registro de atividades](/pt-br/activities) para saber mais).
4. Excluir Metadados a nível de **Coleções**.
  1. Escolha a coleção que deseja editar os metadados (Consulte [Criar coleção](/pt-br/collections#criar-coleções) para saber mais);
  2. Clique no ícone Metadados à direita, na barra superior de cor cinza;
  
  !> **Atenção**: Excluir Metadados a nível de **coleção** afeta as informações de todos os itens criados nesta coleção. A exclusão destes metadados também afeta itens **coleções filhas** desta coleção.
5. Na tela de edição de Metadados (a nível de repositório ou a nível de coleção), é possível visualizar os metadados já criados (ou herdados) na coluna à esquerda.
  3. Clique no *ícone de lixeira* à direita do metadado que deseja excluir.
    * Outra opção disponível para metadados herdados a nível de **repositório** ou de **coleções acima** consiste em desabilitar o metadado desejado (ao invés da exclusão);

  !> **Atenção**: a exclusão do metadado implica também na exclusão de seus valores em todos os itens aos quais se aplica. Esta operação só pode ser desfeita por administradores. (Consulte [Registro de atividades](/pt-br/activities) para saber mais). Antes da exclusão do metadado, recomenda-se que este seja somente desabilitado (até que haja certeza de que a exclusão não implicará na perda de informações).

<!-- tabs:end -->