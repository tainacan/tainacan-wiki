<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Filtros" 
		src="/_assets/images/icon_filters.png"
		width="42"
		height="42">
</div>

# Filtros

Para cada coleção é possível escolher quais de seus metadados serão usados como opção de filtros para resultados em uma busca facetada na visualização da coleção. Sendo assim, os pré-requisitos para o uso dos filtros no repositório são:

* Criar [Metadados](/pt-br/metadata) a nível de **repositório** ou de **coleção**;
* Preencher os campos dos metadados de [Itens](/pt-br/items);
* E então [configurar Filtros](#configurar-filtros) a nível de **repositório** ou de **coleção**

**Filtros** permitem que o usuário altere visualização dos itens de uma coleção a partir dos dados do metadado que foi configurado como um filtro.

-----

## Configurar Filtros

1. Acesse o painel de Controle do *WordPress*;
2. Na barra lateral esquerda clique em Tainacan e então:
  1. Crie Filtros a nível de **Repositório**:
      * Clique em Filtros do **Repositório** para configurar filtros que serão herdados por todas as coleções. Devem ser pensados para permitir a navegação a partir de informações globais com vocabulários objetivos. (Por exemplo: Tipo de arquivo, Data do registro do item, Estado de Conservação etc.)
  2. Crie Filtros a nível de **Coleções**.
      * Filtros a nível de coleção são aplicados apenas aos itens criados nesta coleção. A visualização dos filtros da coleção também herda os filtros a nível de repositório
      * Crie ou escolha a coleção que deseja criar novos filtros (Consulte [Criar coleção](/pt-br/collections#criar-coleções) e [Criar metadados](/pt-br/metadata#criar-metadados) para saber mais;
        1. Clique no ícone **Filtros** à direita, na barra superior de cor cinza;
        2. Para criar filtros a nível de coleção, é necessário que sejam criados anteriormente metadados na respectiva coleção (Consulte [Criar metadados](/pt-br/metadata#criar-metadados)), e então estes metadados estarão disponíveis para serem configurados como filtros.
3. Na tela de edição de Filtros (a *nível de repositório* ou a *nível de coleção*), é possível visualizar os metadados já criados no repositório ou coleção, exibidos na lista à direita, na seção **Metadados Disponíveis**. Nesta lista é possível visualizar os tipos de metadados já criados e disponíveis para criação do Filtro.

## Características gerais de Filtros

* Todos metadados criados ou herdados pela coleção estão disponíveis para criação do filtro
* Metadados a nível de **repositório** são representados com o ícone Repositório
* Metadados a nível de **coleção** (ou herdados de uma coleção) são representados com o ícone Coleção

!> **Atenção**: O filtro deixará de existir caso seu respectivo metadado seja desabilitado ou excluído. A exclusão do do filtro implica somente na navegabilidade da visualização da coleção. Esta operação só pode ser desfeita por administradores. (Consulte [Registro de atividades](pt-br/activities) para saber mais)
* Os valores preenchidos no metadado de cada item aparecerão como opção para seleção em cada filtro, de acordo com suas configurações de *tipo de metadado* configurado.
* Atualmente o Tainacan tem **sete tipos de metadados** por padrão, mas novos conjuntos podem ser desenvolvidos de acordo com a necessidade individual de cada instalação e/ou adicionados ao core do Tainacan. (Consulte o artigo sobre o [Desenvolvimento do Plugin](/dev/) para saber mais)

## Tipos de Filtros

Cada tipo de metadado oferece diferentes tipos de filtros para criação, veja as variações a seguir:

### Filtros disponíveis para cada Tipo de Metadado


<details>
<summary>Texto:</summary>
  
* Lista de Seleção (selectbox)
* AutoCompletar (autocomplete)
* Inserção de Termo (taginput)
* Caixas de Seleção Múltipla (checkbox)
</details>

<details>
<summary>Texto Longo</summary>

* Lista de Seleção (selectbox)
* AutoCompletar (autocomplete)
* Inserção de Termo (taginput)
* Caixas de Seleção Múltipla (checkbox)
</details>

<details>
<summary>Numérico</summary>

* Intervalo Numérico (Custom_Interval)
* Numérico *(Introduzido na versão 0.10)*
</details>

<details>
<summary>Data</summary>

* Intervalo de Datas (Custom_Interval)
* Data *(Introduzido na versão 0.10)*
</details>

<details>
<summary>Lista de Seleção</summary>

* Lista de Seleção (selectbox)
* AutoCompletar (autocomplete)
* Inserção de Termo (taginput)
* Caixas de Seleção Múltipla (checkbox)
</details>

<details>
<summary>Taxonomias</summary>

* Inserção de Termo (taginput)
* Caixas de Seleção Múltipla (checkbox)
</details>

<details>
<summary>Relacionamento</summary>

* AutoCompletar (autocomplete)
* Inserção de Termo (taginput)
* Seleção Múltipla (checkbox)
</details>

> Nota: Ao selecionar um tipo de filtro para a criação, será exibida uma tela de exemplo para ilustração das características de cada tipo de entrada de valores do filtro; 


<!-- tabs:start -->

#### ** Criar **
## Criar Filtros

1. Escolha um metadado na lista de **metadados disponíveis**;
  1. Cada tipo de metadado oferece opções diferentes de configuração na criação do filtro (Consulte [Tipos de Metadados](/pt-br/metadata#tipos-de-metadados)).
  2. Ao selecionar um tipo de metadado para a criação do filtro, será exibida uma tela de exemplo para ilustração das características de cada tipo de entrada de valores do filtro;
  3. Consulte os [Tipos de Filtros disponíveis](#tipos-de-filtros);
2. Após configurar o filtro, clique em `Próximo`;
  * ou clique em `cancelar` para abortar a missão.
3. Preencha os campos seguintes (opcional):
  1. Nomeie o filtro (por padrão o nome do filtro é igual ao seu respectivo metadado)
  2. Crie uma descrição para o filtro.
  3. Defina o *Status* do filtro entre:
    * **Visível para todos**: o filtro aparece para todos na visualização da coleção
    * **Visível apenas para editores**: o filtro aparece somente para editores da coleção, na visualização da coleção a partir do painel administrativo.
4. Clique em `Salvar`.
  * ou clique em `cancelar` para abortar a missão.
5. Uma vez salvo, o filtro criado aparecerá na barra lateral esquerda na visualização da coleção.

#### ** Editar **
## Editar Filtros

1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em Tainacan;
3. Para editar filtros a nível de **repositório** clique em `Filtros do Repositório`:
  1. Clique no ícone de **lápis do filtro** desejado para editar suas opções;
  2. Altere as opções desejadas, ao concluir clique em `Salvar`;
    * ou clique em `cancelar` para abortar a missão.
4. Para editar filtros a nível de coleções selecione a coleção desejada na seção `Coleções`;
  1. Nos ícones à direita da barra superior cinza selecione Filtros;
  2. Clique no **ícone de lápis** do filtro desejado para editar suas opções;
  3. Altere as opções desejadas, ao concluir clique em `Salvar`;
    * ou clique em `cancelar` para abortar a missão.
  4. Para **Filtros herdados** a nível de repositório ou de coleções acima podem ser desabilitados;
    * Filtros desabilitados não serão exibidos na visualização da coleção.

#### ** Excluir **
## Excluir Filtros

1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em Tainacan;
3. Para editar filtros a nível de **repositório** clique em `Filtros do Repositório`:
  1. Para excluir, clique no **ícone de lixeira** do filtro desejado;
    
    !> Atenção: Ao clicar na **lixeira** o filtro é excluído imediatamente.
    * Metadados a nível de coleção (ou herdados de uma coleção) são representados com o ícone **Coleção**
    * Outra opção disponível para filtros herdados a nível de **repositório** ou de **coleções acima** consiste em desabilitar o filtro desejado (ao invés da exclusão);
    
    !> Atenção: a exclusão do do filtro implica somente na navegabilidade da visualização da coleção. Esta operação só pode ser desfeita por administradores. (Consulte [Registro de atividades](/pt-br/activities) para saber mais). O filtro deixará de existir automaticamente caso seu respectivo metadado seja desabilitado ou excluído.
    * Para *"recuperar"* Filtro desejado, basta criar o filtro novamente.
4. Para editar filtros a nível de **coleções** selecione a coleção desejada na seção `Coleções`;
  2. Nos ícones à direita da barra superior cinza selecione **Filtros**;
  3. Para excluir, clique no **ícone de lixeira** do filtro desejado;
    
    !> **Atenção**: Ao clicar na **lixeira** o filtro é excluído imediatamente.
    * Metadados a nível de coleção (ou herdados de uma coleção) são representados com o ícone Coleção
    * Outra opção disponível para filtros herdados a nível de **repositório** ou de **coleções acima** consiste em desabilitar o filtro desejado (ao invés da exclusão);
    
    !> **Atenção**: a exclusão do do filtro implica somente na navegabilidade da visualização da coleção. Esta operação só pode ser desfeita por administradores. (Consulte [Registro de atividades](/pt-br/activities) para saber mais). O filtro deixará de existir automaticamente caso seu respectivo metadado seja desabilitado ou excluído.
    * Para *"recuperar"* Filtro desejado, basta criar o filtro novamente.

<!-- tabs:end -->