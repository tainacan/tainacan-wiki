<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Filtros" 
		src="_assets/images/icon_filters.png"
		width="42"
		height="42">
</div>

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

# Filtros

Para cada _“coleção”_ é possível escolher quais de seus _“metadados”_ serão usados como opção de _“filtros”_ para resultados em uma busca facetada na visualização da _“coleção”_. Sendo assim, os pré-requisitos para o uso dos _“filtros”_ no repositório são:

- Criar[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata)_“_[_Metadados_](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata)_”_ a nível de _“repositório”_ ou de _“coleção”_;
- Preencher os campos dos metadados de[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/items)_“_[_Itens_](https://tainacan.github.io/tainacan-wiki/#/es-mx/items)_”_;
- E então[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/filters?id=configurar-filtros)[configurar Filtros](https://tainacan.github.io/tainacan-wiki/#/es-mx/filters?id=configurar-filtros) a nível de _“repositório”_ ou de _“coleção_

_“Filtros”_ permitem que o usuário altere a visualização dos _“itens”_ de uma _“coleção”_ a partir dos dados do _“metadado”_ que foi configurado como um _“filtro”_.

---

## Características gerais de Filtros

- Todos os _“metadados”_ criados ou herdados pela _“coleção”_ estão disponíveis para criação do _“filtro”_;
- _“Metadados_ _a nível de repositório”_ são representados com o _“ícone Repositório”_;
- _“Metadados a nível de coleção”_ (ou herdados de uma coleção) são representados com o _“ícone Coleção”_;

* Por padrão, o Tainacan possui dois _“filtros”_ independentes, que podem ser habilitados na _“seção de filtros”_. São eles:
  - **“Tipo de documento”**: É possível filtrar quais _“itens”_ possuem algum documento principal vinculado;
  - **“Possui miniatura”**: É possível filtrar pelos _“itens”_ que possuem ou não miniatura.

- Os valores preenchidos no _“metadado”_ de cada _“item”_ aparecerão como opção para seleção em cada _“filtro”_, de acordo com suas configurações de “_tipo de metadado”_ configurado;
- Atualmente o Tainacan tem **nove tipos de metadados** por padrão, mas novos conjuntos podem ser desenvolvidos de acordo com a necessidade individual de cada instalação e/ou adicionados ao core do Tainacan. Consulte o artigo sobre o[ ](https://tainacan.github.io/tainacan-wiki/#/dev/)[Desenvolvimento do Plugin](https://tainacan.github.io/tainacan-wiki/#/dev/) para saber mais.

## Tipos de Filtros

Cada _“tipo de metadado”_ oferece diferentes _“tipos de filtros”_ para criação, veja as variações a seguir:

### Filtros disponíveis para cada Tipo de Metadado

#### "Texto":

● Lista de Seleção (selectbox);

● AutoCompletar (autocomplete);

● Inserção de Termo (taginput);

● Caixas de Seleção Múltipla (checkbox).

#### "Texto Longo":

● Lista de Seleção (selectbox);

● AutoCompletar (autocomplete);

● Inserção de Termo (taginput);

● Caixas de Seleção Múltipla (checkbox).

#### "Numérico":

● Intervalo Numérico (Custom_Interval);

● Numérico;

● Lista de Intervalos Numéricos.

#### "Data":

● Intervalo de Datas (Custom_Interval);

● Data

#### "Lista de Seleção":

● Lista de Seleção (selectbox);

● AutoCompletar (autocomplete);

● Inserção de Termo (taginput);

● Caixas de Seleção Múltipla (checkbox).

#### "Taxonomias":

● Inserção de Termo (taginput);

● Caixas de Seleção Múltipla (checkbox)..

#### "Relacionamento":

● AutoCompletar (autocomplete);

● Inserção de Termo (taginput);

● Seleção Múltipla (checkbox).

#### "Usuário":

● Inserção de Termo (taginput).

> Nota: Ao selecionar um _“tipo de filtro”_ para a criação, será exibida uma tela de exemplo para ilustração das características de cada tipo de entrada de valores do _“filtro”_.
>
> Nota: O _“metadado composto”_ não possui um filtro próprio. Apenas os _“metadados filhos”_ podem ter filtros configurados. Na _“seção de filtros”_, na lista de metadados disponíveis, eles podem ser identificados com a marcação _“filho de composto”_.

## Configurar Filtros

1. Acesse o painel de Controle do _WordPress_;

   ![Acesse o painel de controle](_assets\images\Painel_Adm_WordPress.png)

2. Na barra lateral esquerda, clique em _“Tainacan”_:

   ![Acesse o painel de controle](_assets\images\Painel_Acesso_Tainacan.png)

3. _“Filtros a nível de Repositório”_:

   ○ Clique em “Filtros do Repositório” para configurar “filtros” que serão herdados por todas as “coleções”. Devem ser pensados para permitir a navegação a partir de informações globais com vocabulários objetivos. Por exemplo: “Tipo de arquivo”, “Data do registro do item”, “Estado de Conservação” e etc.).

   ![Acesse o painel de controle](_assets\images\Acessar_Filtros_Repositorio.png)

4. Crie Filtros a nível de **Coleções**.

   ○ “Filtros a nível de coleção” são aplicados apenas aos “itens” criados nesta “coleção”. A visualização dos “filtros da coleção” também herda os “filtros a nível de repositório”;

   ○ Crie ou escolha a “coleção” que deseja criar novos filtros. Consulte “Criar coleção” e “Criar metadados” para saber mais.

   ![Acesse o painel de controle](_assets\images\Selecao_Colecao.png)

   I. Na barra superior da “coleção” selecionada, clique em “Filtros”;

   ![Acesse o painel de controle](_assets\images\Acessar_Filtros_Colecao.png)

   II. Para criar “filtros a nível de coleção”, é necessário que sejam criados anteriormente “metadados” na respectiva “coleção” (consulte Criar metadados) e, então, estes “metadados” estarão disponíveis para serem configurados como “filtros”.

5. Na tela de _“edição de Filtros”_ (a “_nível de repositório”_ ou a “_nível de coleção”_), é possível visualizar os _“metadados”_ já criados no repositório ou coleção, exibidos na lista à direita, na seção _“Metadados disponíveis”_. Nessa lista, é possível visualizar os _“tipos de metadados”_ já criados e disponíveis para criação do _“Filtro”_.

## Criar Filtros

Não existe diferença no processo de criação de _“filtros no nível repositório”_ ou _“coleção”_. Entretanto, lembre-se de certificar em qual nível de acesso você deseja criar o _“filtro”_. Para saber chegar à tela de criação de _“filtro a nível repositório”_ ou a tela de configuração de _“filtro a nível coleção”_ acesse Configurar Filtros.

1. Escolha um _“metadado”_ na lista de _“Metadados disponíveis”_;

   ![Acesse o painel de controle](_assets\images\Criar_FIltro_Repositorio_Metadados_Disponiveis.png)

2. Selecione e arraste para a esquerda um _“metadado”_ para a criação do _“filtro”_:

   I. Será exibida uma tela para você escolher o “tipo do filtro”. Os “tipos de filtros” variam conforme os “tipos de metadados”. Consulte os Tipos de Filtros disponíveis ou Tipos de Metadados para saber mais;

   ![Acesse o painel de controle](_assets\images\Criar_Filtro_Selecao_Tipo.png)

   II. Você pode pré-visualizar como cada “filtro” será exibido na página da sua “coleção”. Para isso, passe o mouse sobre cada tipo disponível para o “metadado” selecionado, como visto na imagem anterior.

   ![Acesse o painel de controle](_assets\images\Criar_Filtro_Pre-visualizar_tipo.png)

3. Selecione o _“tipo do filtro”_ desejado. Uma tela de configurações do _“filtro”_ irá abrir. Preencha os campos conforme desejar:

   - Nomeie o _“filtro”_ (por padrão o _“nome do filtro”_ é igual ao seu respectivo _“metadado”_);
   - Crie uma descrição para o _“filtro”_;
   - Defina o _“status do filtro”_ entre:
     - **“Público”**: o filtro aparece para todos na visualização da _“coleção”_;
     - **“Privado”**: o filtro aparece somente para editores da _“coleção”_, na visualização da coleção a partir do _“painel administrativo”_.

   > **Nota:** As configurações disponíveis para cada _“filtro”_ criado variam conforme o _“tipo de filtro”_ e _“tipo de metadado”_. Em caso de dúvidas, clique no _“ícone interrogação”_ para saber mais.

   ![Acesse o painel de controle](_assets\images\Criar_Filtro_Configuracoes.png)

4. Clique em _“Salvar”_;

   ![Acesse o painel de controle](_assets\images\Criar_Filtro_Salvar.png)

5. Uma vez salvo, o _“filtro”_ criado aparecerá na barra lateral esquerda na visualização da _“coleção”_.

## Editar Filtros

### Nível Repositório:

● Se estiver na tela inicial do Tainacan, clique em “Filtros do Repositório” ou, se estiver na página de “coleções”, na barra lateral, clique em “Filtros”:

■Identifique o _“filtro”_ que deseja alterar;

■Clique no _“ícone lápis”_ localizado próximo ao título do _“filtro”_;

■Altere os campos desejados;

> · **Nota**:
>
> ○ Só é possível editar o “Título”, “Descrição” e “Status” de filtros existentes;
>
> ○ Para alterar o tipo de um “filtro” é necessário deletar o filtro existente, e criar um novo com as configurações desejadas.

■Clique em _“Salvar”_.

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
> “Filtros herdados”\* (aqueles criados no nível repositório) podem ser desabilitados;
>
> “Filtros desabilitados”\* não serão exibidos na visualização da coleção.

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

!>**Atenção:** Ao clicar no _“ícone lixeira”_ o _“filtro”_ é excluído imediatamente. Se você não desejar visualizar um _“filtro ativo”_ momentaneamente, considere apenas desabilitar a seção de _“filtros a nível coleção”_.

### Nível Repositório

1. Se estiver na tela inicial do Tainacan, clique em _“Filtros do Repositório”_ ou, se estiver na página de _“coleções”_, na barra lateral, clique em \*“Filtros”**\*:**
   1. Identifique o _“filtro”_ que deseja excluir;
   2. Clique no _“ícone lixeira”_ localizado próximo ao título do _“filtro”._

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/VCtoRrnRxjo" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

### Nível Coleção

1. Na barra superior da _“coleção”_ selecionada, clique em \*“Filtros”**\*:**
   1. Identifique o _“filtro”_ que deseja alterar;
   2. Clique no _“ícone lixeira”_ localizado próximo ao título do _“filtro”_

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/K65AhIu8zao" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> **Nota:** a _“exclusão do filtro”_ implica somente na navegabilidade da visualização da _“coleção”_. Esta operação só pode ser desfeita por administradores. Consulte[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/activities)[Registro de atividades](https://tainacan.github.io/tainacan-wiki/#/es-mx/activities) para saber mais. O _“filtro”_ deixará de existir automaticamente caso seu respectivo _“metadado”_ seja desabilitado ou excluído.

- Para _“recuperar”_ um _“filtro”_ excluído, basta criar o _“filtro”_ novamente.
