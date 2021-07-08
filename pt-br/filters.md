<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Filtros" 
		src="_assets/images/icon_filters.png"
		width="42"
		height="42">
</div>

# Filtros

Para cada *“coleção”* é possível escolher quais de seus *“metadados”* serão usados como opção de *“filtros”* para resultados em uma busca facetada na visualização da *“coleção”*. Sendo assim, os pré-requisitos para o uso dos *“filtros”* no repositório são: 

* Criar[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata)*“*[*Metadados*](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata)*”* a nível de *“repositório”* ou de *“coleção”*;
* Preencher os campos dos metadados de[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/items)*“*[*Itens*](https://tainacan.github.io/tainacan-wiki/#/pt-br/items)*”*;
* E então[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/filters?id=configurar-filtros)[configurar Filtros](https://tainacan.github.io/tainacan-wiki/#/pt-br/filters?id=configurar-filtros) a nível de *“repositório”* ou de *“coleção*

*“Filtros”* permitem que o usuário altere a visualização dos *“itens”* de uma *“coleção”* a partir dos dados do *“metadado”* que foi configurado como um *“filtro”*. 

-----

## Características gerais de Filtros

* Todos os *“metadados”* criados ou herdados pela *“coleção”* estão disponíveis para criação do *“filtro”*; 
* *“Metadados* *a nível de repositório”* são representados com o *“ícone Repositório”*; 
* *“Metadados a nível de coleção”* (ou herdados de uma coleção) são representados com o *“ícone Coleção”*; 

- Por padrão, o Tainacan possui dois *“filtros”* independentes, que podem ser habilitados na *“seção de filtros”*. São eles: 
  - **“Tipo de documento”****:** É possível filtrar quais *“itens”* possuem algum documento principal vinculado; 
  - **“Possui miniatura”****:** É possível filtrar pelos *“itens”* que possuem ou não miniatura. 

* Os valores preenchidos no *“metadado”* de cada *“item”* aparecerão como opção para seleção em cada *“filtro”*, de acordo com suas configurações de “*tipo de metadado”* configurado; 
* Atualmente o Tainacan tem **nove tipos de metadados** por padrão, mas novos conjuntos podem ser desenvolvidos de acordo com a necessidade individual de cada instalação e/ou adicionados ao core do Tainacan. Consulte o artigo sobre o[ ](https://tainacan.github.io/tainacan-wiki/#/dev/)[Desenvolvimento do Plugin](https://tainacan.github.io/tainacan-wiki/#/dev/) para saber mais. 

## Tipos de Filtros

Cada *“tipo de metadado”* oferece diferentes *“tipos de filtros”* para criação, veja as variações a seguir: 

### Filtros disponíveis para cada Tipo de Metadado

#### Texto:

Lista de Seleção (selectbox); 

AutoCompletar (autocomplete); 

Inserção de Termo (taginput); 

Caixas de Seleção Múltipla (checkbox). 

#### Texto Longo:

Lista de Seleção (selectbox); 

AutoCompletar (autocomplete); 

Inserção de Termo (taginput); 

Caixas de Seleção Múltipla (checkbox). 

#### Numérico:

Intervalo Numérico (Custom_Interval); 

Numérico; 

Lista de Intervalos Numéricos. 

#### Data:

Intervalo de Datas (Custom_Interval); 

Data; 

#### Lista de Seleção:

Lista de Seleção (selectbox); 

AutoCompletar (autocomplete); 

Inserção de Termo (taginput); 

Caixas de Seleção Múltipla (checkbox)**.** 

#### Taxonomias:

Inserção de Termo (taginput); 

Caixas de Seleção Múltipla (checkbox). 

#### Relacionamento:

AutoCompletar (autocomplete); 

Inserção de Termo (taginput); 

Seleção Múltipla (checkbox). 

#### Usuário:

Inserção de Termo (taginput). 

> Nota: Ao selecionar um *“tipo de filtro”* para a criação, será exibida uma tela de exemplo para ilustração das características de cada tipo de entrada de valores do *“filtro”*. 
>
> Nota: O *“metadado composto”* não possui um filtro próprio. Apenas os *“metadados filhos”* podem ter filtros configurados. Na *“seção de filtros”*, na lista de metadados disponíveis, eles podem ser identificados com a marcação *“filho de composto”*.



## Configurar Filtros

1. Acesse o painel de Controle do *WordPress*; 

      ![Acesse o painel de controle](\_assets\images\Painel_Adm_WordPress.png)

2. Na barra lateral esquerda, clique em *“Tainacan”*: 

      ![Acesse o painel de controle](\_assets\images\Painel_Acesso_Tainacan.png)

  3. *“Filtros a nível de Repositório”*:

      Clique em *“Filtros do Repositório”* para configurar *“filtros”* que serão herdados por todas as *“coleções”*. Devem ser pensados para permitir a navegação a partir de informações globais com vocabulários objetivos. Por exemplo: *“Tipo de arquivo”*, *“Data do registro do item”*, *“Estado de Conservação”* e etc.). 

      ![Acesse o painel de controle](\_assets\images\Acessar_Filtros_Repositorio.png)

  4. Crie Filtros a nível de **Coleções**.

      *“Filtros a nível de coleção”* são aplicados apenas aos *“itens”* criados nesta *“coleção”*. A visualização dos *“filtros da coleção”* também herda os *“filtros a nível de repositório”*; 

      Crie ou escolha a *“coleção”* que deseja criar novos filtros. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/collections?id=criar-coleções)*“*[*Criar coleção*](https://tainacan.github.io/tainacan-wiki/#/pt-br/collections?id=criar-coleções)*”* e[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=criar-metadados)*“*[*Criar metadados*](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=criar-metadados)*”* para saber mais. 

      ![Acesse o painel de controle](\_assets\images\Selecao_Colecao.png)

      Na barra superior da *“coleção”* selecionada, clique em *“Filtros”*; 

      ![Acesse o painel de controle](\_assets\images\Acessar_Filtros_Colecao.png)

      Para criar *“filtros a nível de coleção”*, é necessário que sejam criados anteriormente *“metadados”* na respectiva *“coleção”* (consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=criar-metadados)[Criar metadados](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=criar-metadados)) e, então, estes *“metadados”* estarão disponíveis para serem configurados como *“filtros”*. 

5. Na tela de *“edição de Filtros”* (a “*nível de repositório”* ou a “*nível de coleção”*), é possível visualizar os *“metadados”* já criados no repositório ou coleção, exibidos na lista à direita, na seção *“Metadados disponíveis”*. Nessa lista, é possível visualizar os *“tipos de metadados”* já criados e disponíveis para criação do *“Filtro”*. 




## Criar Filtros

Não existe diferença no processo de criação de *“filtros no nível repositório”* ou *“coleção”*. Entretanto, lembre-se de certificar em qual nível de acesso você deseja criar o *“filtro”*. Para saber chegar à tela de criação de *“filtro a nível repositório”* ou a tela de configuração de *“filtro a nível coleção”* acesse Configurar Filtros. 

1. Escolha um *“metadado”* na lista de *“Metadados disponíveis”*;

   ![Acesse o painel de controle](\_assets\images\Criar_FIltro_Repositorio_Metadados_Disponiveis.png)

  2. Selecione e arraste para a esquerda um *“metadado”* para a criação do *“filtro”*:

     Será exibida uma tela para você escolher o *“tipo do filtro”*. Os *“tipos de filtros”* variam conforme os *“tipos de metadados”*. Consulte os[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/filters?id=tipos-de-filtros)[Tipos de Filtros disponíveis](https://tainacan.github.io/tainacan-wiki/#/pt-br/filters?id=tipos-de-filtros) ou [Tipos de Metadados](https://tainacan.github.io/tainacan-wiki/#/pt-br/metadata?id=tipos-de-metadados) para saber mais; 

     ![Acesse o painel de controle](\_assets\images\Criar_Filtro_Selecao_Tipo.png)

     Você pode pré-visualizar como cada *“filtro”* será exibido na página da sua *“coleção”*. Para isso, passe o mouse sobre cada tipo disponível para o *“metadado”* selecionado, como visto na imagem anterior. 

     ![Acesse o painel de controle](\_assets\images\Criar_Filtro_Pre-visualizar_tipo.png)

  3. Selecione o *“tipo do filtro”* desejado. Uma tela de configurações do *“filtro”* irá abrir. Preencha os campos conforme desejar: 

     - Nomeie o *“filtro”* (por padrão o *“nome do filtro”* é igual ao seu respectivo *“metadado”*); 
     - Crie uma descrição para o *“filtro”*; 
     - Defina o *“status do filtro”* entre: 
       - **“Público”**: o filtro aparece para todos na visualização da *“coleção”*; 
       - **“Privado”**: o filtro aparece somente para editores da *“coleção”*, na visualização da coleção a partir do *“painel administrativo”*. 

     > **Nota:** As configurações disponíveis para cada *“filtro”* criado variam conforme o *“tipo de filtro”* e *“tipo de metadado”*. Em caso de dúvidas, clique no *“ícone interrogação”* para saber mais. 

     ![Acesse o painel de controle](\_assets\images\Criar_Filtro_Configuracoes.png)

  4. Clique em *“Salvar”*; 

     ![Acesse o painel de controle](\_assets\images\Criar_Filtro_Salvar.png)

5. Uma vez salvo, o *“filtro”* criado aparecerá na barra lateral esquerda na visualização da *“coleção”*. 

   

## Editar Filtros

### Nível Repositório:

● Se estiver na tela inicial do Tainacan, clique em “Filtros do Repositório” ou, se estiver na página de “coleções”, na barra lateral, clique em “Filtros”:

■Identifique o *“filtro”* que deseja alterar; 

■Clique no *“ícone lápis”* localizado próximo ao título do *“filtro”*; 

■Altere os campos desejados; 



> Nota: Só é possível editar o *“Título”, “Descrição”* e *“Status”* de filtros existentes; 
>
> Para alterar o tipo de um *“filtro”* é necessário deletar o filtro existente, e criar um novo com as configurações desejadas. 

■Clique em *“Salvar”*. 

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B1u8INbY4FU" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

### Nível Coleção

> Nota:
>
> “Filtros herdados”* (aqueles criados no nível repositório) podem ser desabilitados; 
>
> “Filtros desabilitados”* não serão exibidos na visualização da coleção. 

● Na barra superior da “coleção” selecionada, clique em “Filtros”:

■ Identifique o “filtro” que deseja alterar;

■ Clique no “ícone lápis” localizado próximo ao título do “filtro”;

■ Altere os campos desejados.

> Nota:
>
> Só é possível editar o “Título”, “Descrição” e “Status” de filtros existentes;
>
> Para alterar o tipo de um “filtro” é necessário deletar o filtro existente, e criar um novo com as configurações desejadas.

■ Clique em “Salvar”.

● Para desabilitar um “filtro” clique no “ícone seletor”, ao lado dos “ícones lápis” e “lixeira”, localizado próximo ao título do “filtro”.

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/l7Wo48tL_8c" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>



## Excluir Filtros

#### **Atenção:** Ao clicar no *“ícone lixeira”* o *“filtro”* é excluído imediatamente. Se você não desejar visualizar um *“filtro ativo”* momentaneamente, considere apenas desabilitar a seção de *“filtros a nível coleção”*. 

### Nível Repositório

1. Se estiver na tela inicial do Tainacan, clique em *“Filtros do Repositório”* ou, se estiver na página de *“coleções”*, na barra lateral, clique em *“Filtros”***:** 
   1. Identifique o *“filtro”* que deseja excluir; 
   2. Clique no *“ícone lixeira”* localizado próximo ao título do *“filtro”.* 

![Acesse o painel de controle](\_assets\gifs\Excluir_Filtro_Repositorio.mp4)

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/VCtoRrnRxjo" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

### Nível Coleção

1. Na barra superior da *“coleção”* selecionada, clique em *“Filtros”***:** 
   1. Identifique o *“filtro”* que deseja alterar; 
   2. Clique no *“ícone lixeira”* localizado próximo ao título do *“filtro”*

![Acesse o painel de controle](\_assets\gifs\Excluir_Filtro_Colecao.mp4)



> **Nota:** a *“exclusão do filtro”* implica somente na navegabilidade da visualização da *“coleção”*. Esta operação só pode ser desfeita por administradores. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/pt-br/activities)[Registro de atividades](https://tainacan.github.io/tainacan-wiki/#/pt-br/activities) para saber mais. O *“filtro”* deixará de existir automaticamente caso seu respectivo *“metadado”* seja desabilitado ou excluído. 

- Para *“recuperar”* um *“filtro”* excluído, basta criar o *“filtro”* novamente. 

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/K65AhIu8zao" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>