> [!NOTE]
This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

# Coleções

Uma "coleção" é um grupo de itens que compartilham um mesmo conjunto de metadados. Cada item enviado para seu repositório digital pertencerá a uma única coleção.

> Por exemplo: você pode ter uma coleção de *"pinturas"* com metadados como *"Título"*, "Autor", *"País"*, *"Técnica"*, etc. e outra coleção para *"filmes"*, com *"Título"*, *"Diretor"*, *"País"*, *"Duração"* e *"Gênero"*.

Para cada coleção você pode configurar um conjunto diferente de metadados, entretanto, eles podem compartilhar taxonomias em comum, o que significa, por exemplo, que você pode navegar por itens de um *"país"* e obter resultados de *"pinturas"* e de *"filmes"* nos resultados.

> [!TIP] Consulte a seção [Taxonomias](#taxonomias) para saber mais.

As coleções também podem ter coleções **filhas**, que vão herdar seus metadados e a partir disso podem também é possível adicionar outros metadados ao seu conjunto.

<!-- tabs:start -->

#### ** Criar **

## Criar Coleções
1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em "Tainacan";
3. Clique em `Criar Coleção` na seção **Coleções**;  
  1. Nomeie a coleção no campo **Nome**;
  2. Defina seu status entre **público**, **privado**, **rascunho** ou **lixo**. 
    * **Público**: Coleções definidas como públicas serão visualizadas assim que criadas. 
    * **Rascunho**: Coleções *rascunho* serão visualizadas por usuários com permissão de acesso ao painel administrativo do Tainacan (por exemplo: editores, moderadores e administradores). (Consulte [Permissões de Usuários](/pt-br/users) para saber mais). 
    * **Privado**: Coleções *privadas* aparecem apenas para seu criador e moderadores desta coleção. 
    * **Lixo**: Coleções no *lixo* serão visualizadas por usuários com permissão de acesso ao painel administrativo do Tainacan (por exemplo: *editores*, *moderadores* e *administradores*). (Consulte [Permissões de Usuários](/pt-br/users) para saber mais). 
  3. Defina uma miniatura e uma imagem da *header* com imagens que representem o conteúdo que fará parte dessa coleção. 
    * A **imagem de miniatura** representará a coleção em diferentes ambientes no plugin e no tema do repositório (assim como uma foto de perfil no *Facebook*)
    * A **imagem da header**, ou cabeçalho, aparece na visualização da coleção, dependendo das configurações e do layout adotado. o tema padrão do *Tainacan* exibe a imagem da *header* na página da coleção.  
  4. Habilite a página de capa e adicione a URL específica caso esteja criando uma página com layout personalizado para exibir sua coleção.
4. Insira uma descrição sobre o conteúdo que fará parte desta coleção
  5. Selecione um ou mais modos de visualização (disponíveis no tema) para a navegação na visualização da coleção. 
  6. Escolha uma coleção raiz para herdar metadados de outra coleção.  (Consulte [Metadados](/pt-br/metadada) para saber mais) 
  7. Selecione se deseja ou não **Permitir Comentários** na coleção, os comentários podem ser geridos na seção de comentários do painel do WordPress (saiba mais na [documentação do WordPress](https://codex.wordpress.org/pt-br:Painel_Coment%C3%A1rios). 
  8. No campo **Moderadores** é possível adicionar outros usuários para novas atribuições nesta coleção em específico:
    * para adicionar moderadores digite ao menos as três primeiras letras do usuário e selecione na lista.  (Consulte [Permissões de Usuários](/pt-br/users) para saber mais)  
  9. O campo **slug** permite alterar o final da URL desta coleção. Por padrão ela é criada a partir do Nome da Coleção, mas pode ser alterada neste campo. 
5. Clique em uma das opções abaixo: (a coleção será criada com os parâmetros de privacidade definidos em **Status**).
  10. Clique em `Salvar e ir para Metadados` para acessar a configuração de metadados desta coleção. (Consulte [Metadados](/pt-br/metadada) para saber mais) 
  11. ou
  12. Clique em `Salvar e ir para Filtros` para acessar a configuração de filtros desta coleção. (Consulte [Filtros](/pt-br/filters) para saber mais); 
  13. Clique em `Concluir` para terminar a configuração desta nova coleção.

Novas coleções podem ser criadas também com um modelo de metadados pré-definido ou importadas por fontes externas.
Coleções criadas com metadados pré-definidos contam com um conjunto de metadados pré-estabelecidos durante sua criação, e podem ser geridas da mesma maneira que outras coleções. 
> Desde a versão 0.6 do plugin existe a opção para a criação de coleções com um conjunto de metadados a partir do modelo **Dublin Core**.

> Novos conjuntos de metadados podem ser desenvolvidos de acordo com a necessidade individual de cada instalação e/ou adicionados ao Tainacan (Consulte [Desenvolvimento do Plugin](/pt-br/dev/) para saber mais sobre o desenvolvimento do Tainacan)

Consulte a seção de [Ações em Massa](/pt-br/bulk-edition) e de [Importadores do Tainacan](/pt-br/importers) para saber mais sobre a criação itens e termos em massa.

#### ** Editar **
## Editar Coleções
1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em *Tainacan*;
3. Na seção **Coleções** clique na engrenagem à direita para editar a coleção desejada.

#### ** Excluir **
## Excluir Coleções
1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em *Tainacan*;
3. Na listagem de coleções, clique no *ícone de lixeira* para excluir a coleção desejada;
  * As coleções excluídas vão para a aba **Lixo**, em coleções.

### Desfazer Coleções excluídas
1. Para desfazer a exclusão de **coleções** acesse a aba **Lixo**;
2. Na lista de coleções exibidas, clique na *engrenagem* à direita da coleção desejada;
  1. Edite a coleção alterando o *status* entre **público**, **privado**ou **rascunho**; 
    * **Público**: Coleções definidas como públicas serão visualizadas assim que criadas; 
    * **Rascunho**: Coleções *rascunho* serão visualizadas por usuários com permissão de acesso ao painel administrativo do Tainacan (por exemplo: editores, moderadores e administradores). (Consulte [Permissões de Usuários](/pt-br/users) para saber mais) 
    * **Privado**: Coleções privadas aparecem apenas para seu criador e moderadores desta coleção. 
3. Na listagem de coleções da aba **Lixo" também é possível excluir a coleção permanentemente. 

> [!WARNING]
> **Atenção**: a exclusão da coleção implica também na exclusão de seus itens, metadados e informações desta coleção. Esta operação só poderá ser desfeita por administradores. (Consulte [Registro de atividades](/pt-br/activities) para saber mais). Exclua a coleção somente se tiver certeza de que não haverá perdas graves de informação. (Consulte [Registro de atividades](/pt-br/activities) para saber mais)

<!-- tabs:end -->