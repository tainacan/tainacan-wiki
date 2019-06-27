# Taxonomias

*Taxonomias* podem ser criadas e usadas para a classificação de itens. Exemplos de taxonomias comuns são a de *Gênero*, *Países*, etc.

> Na linguagem do *WordPress*, elas são taxonomias personalizadas. Consulte a [documentação do WordPress](https://codex.wordpress.org/pt-br:Taxonomias) para saber mais.

Cada taxonomia tem um conjunto de **termos**, por exemplo, a taxonomia gênero pode ter termos como drama e comédia.

Os termos podem ter hierarquia, o que significa que quando você procura por itens que tem termos com termos *filhos* (por exemplo, *Samba*), os resultados incluirão itens que tenham qualquer um dos termos filhos. (Por exemplo, *Samba de Gafieira* e *Samba Maxixe*).

Termos podem ter uma descrição, um ícone, ou uma imagem que o represente, e também pode ser ligado a um conceito existente um uma ontologia. Os termos também podem ter sua própria URL no site, com uma página listando todos os itens relacionados a ele, inclusive de diferentes coleções, dessa forma eles se comportam como se fossem uma coleção.

> As taxonomias podem ser compartilhadas por várias coleções no repositório.

> As taxonomias devem ser configuradas em um metadado para sua inserção nas coleções: consulte o tópico [Criar Metadados](/pt-br/metadata#criar-metadados) para saber como.


<!-- tabs:start -->

#### ** Criar **
## Criar Taxonomias

1. Acesse o painel de controle do WordPress;
2. Na barra lateral esquerda, clique em Tainacan;
3. Clique em `Taxonomias`
4. Clique em `Nova Taxonomia`
5. Na aba **Taxonomia** preencha os campos desejados
  1. **Nome**: nome da taxonomia
  2. **Descrição**: descrição da taxonomia
  3. **Slug**: O campo slug permite alterar o final da URL da taxonomia, por padrão ela é criada a partir do nome da taxonomia, mas pode ser editada neste campo.
  4. **Permitir Termos Novos**: permite que novos termos sejam adicionados à taxonomia durante o envio de itens.
  5. **Status**: configuração de privacidade da taxonomia, nos valores:
    1. **Público**: A taxonomia pode ser visualizada pelos visitantes do repositório
    2. **Privado**: A taxonomia pode ser visualizada somente por editores do repositório
    3. **Rascunho**: A taxonomia pode ser visualizada somente pelo seu autor
    4. **Lixo**: A taxonomia, e seus termos, não serão mais aplicados aos seus itens e poderão ser deletados permanentemente.
6. Em seguida, clique na aba **Termos** e clique em `Criar Novo Termo`

### Criar Termos

1. Clique em Criar Novo Termo;
2. Preencha os campos a seguir de acordo com cada termo a ser criado:
  1. **Imagem da Header**: É possível adicionar uma imagem que aparece na visualização da taxonomia, dependendo das configurações e do tema adotado. O tema padrão do Tainacan exibe a imagem da header na página do termo da taxonomia.
  2. **Nome**: nome do termo que fará parte da taxonomia
    * **Descrição**: descrição do termo que fará parte da taxonomia
    * **Termo pai**: determina o nível hierárquico do termo em relação aos demais desta mesma taxonomia,
3. Clique em `Salvar` para concluir a criação do termo

Repita a ação para adicionar novos termos, clicando novamente em `Criar Novo Termo`.

Taxonomias também podem ser criadas a partir do importador de vocabulário. Consulte [Importador de Vocabulário](/pt-br/importers) para saber mais.

#### ** Editar **
## Editar Taxonomias

1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em Tainacan;
3. Clique em **Taxonomias**;
4. Clique na **taxonomia** desejada na lista de taxonomias;
  * Altere os campos desejados na *aba taxonomia*;
  * Na aba *termos* é possível adicionar, editar ou excluir termos desta taxonomia.

### Editar Termos

1. Na lista de termos, selecione o desejado para edição:
  1. Clique no *ícone de Lápis* à direita para abrir os campos de edição deste termo
  2. Altere os campos desejados
  3. Clique em:
    * `Cancelar`, para cancelar a edição do termo
    * `Visualizar termo`, para visualizar o termo no tema
    * `Salvar` para concluir a edição do termo


#### ** Excluir **
## Excluir Taxonomias

1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em Tainacan;
3. Clique em **Taxonomias**
4. Clique no ícone **lixeira** à direita na taxonomia desejada
   
  !> Atenção: um aviso será exibido para confirmar esta ação. A exclusão da taxonomia implica também na exclusão das informações em metadados, itens e coleções que usam esta taxonomia. Esta operação só poderá ser desfeita por administradores. (Consulte [Registro de Atividades](/pt-br/activities) para saber mais). Exclua a taxonomia somente se tiver certeza de que não haverá perdas graves de informação. (Consulte [Registro de Atividades](/pt-br/activities) para saber mais)

### Excluir Termos

1. Acesse o painel de controle do *WordPress*
2. Na barra lateral esquerda, clique em Tainacan
3. Clique em **Taxonomias**
4. Clique na taxonomia desejada na lista de taxonomias
5. Clique na aba de termos
  1. Na lista de termos, selecione o desejado para exclusão:
  2. Clique no ícone de **Lixeira** à direita para excluir o item
    
  !> Atenção: um aviso será exibido para confirmar esta ação. A exclusão do termo implica também na exclusão deste valor em metadados, itens e coleções que usam esta taxonomia. Esta operação só poderá ser desfeita por administradores. (Consulte [Registro de Atividades](/pt-br/activities) para saber mais). Exclua o termo somente se tiver certeza de que não haverá perdas graves de informação. (Consulte [Registro de Atividades](/pt-br/activities) para saber mais)

<!-- tabs:end -->