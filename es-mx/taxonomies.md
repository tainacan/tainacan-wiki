<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Taxonomias" 
		src="_assets/images/icon_taxonomies.png"
		width="42"
		height="42">
</div>

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

# Taxonomias

_“Taxonomias”_ podem ser criadas e usadas para a classificação de _“itens”_. Elas funcionam como _“vocabulários controlados”_ que vão auxiliar tanto na entrada dos dados, quanto na sua recuperação precisa.

> Na linguagem do WordPress, elas são _“taxonomias personalizadas”_. Consulte a[ ](https://codex.wordpress.org/es-mx:Taxonomias)[documentação do WordPress](https://codex.wordpress.org/es-mx:Taxonomias) para saber mais.

Cada _“taxonomia”_ tem um conjunto de _“termos”_. Por exemplo, a _“taxonomia gênero”_ pode ter “_termos”_ como _“drama”_ e _“comédia”_.

Os _“termos”_ podem ter hierarquia, o que significa que quando você procura por _“itens”_ que tem termos com _“termos filhos”_ (por exemplo, “_Samba”_), os resultados incluirão _“itens”_ que tenham qualquer um dos _“termos filhos”_. Por exemplo, “_Samba de Gafieira”_ e “_Samba Maxixe”_.

_“Termos”_ podem ter uma _“descrição”_, um _“ícone”_, ou uma _“imagem”_ que o represente, e também podem ser ligados a um conceito existente em uma ontologia. Os _“termos”_ possuem sua própria _“URL”_ no site, com uma página listando todos os _“itens”_ relacionados a ele, inclusive de diferentes _“coleções”_, dessa forma eles se comportam como se fossem uma _“coleção”_.

> As _“taxonomias”_ podem ser compartilhadas por várias _“coleções”_ no repositório.

> As _“taxonomias”_ devem ser configuradas em um _“metadado”_ para sua inserção nas _“coleções”_. Consulte o tópico[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata?id=criar-metadados)[Criar Metadados](https://tainacan.github.io/tainacan-wiki/#/es-mx/metadata?id=criar-metadados) para saber como.

####

## Criar Taxonomias

1. Acesse o painel de controle do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em Tainacan;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique em _“Taxonomias”;_

   ![Acesse o painel de controle](_assets\images\093.png)

4. Clique em _“Nova Taxonomia”_;

   ![Acesse o painel de controle](_assets\images\094.png)

5. Na aba _“Taxonomia”_ preencha os campos desejados:

   ![Acesse o painel de controle](_assets\images\095.png)

   a) **“Nome”**: nome da _“taxonomia”_;

   b)**“Descrição”**: descrição da _“taxonomia”_;

   c)**“Slug”**: O campo _“slug”_ permite alterar o final da _“URL”_ da _“taxonomia”_. Por padrão, ela é criada a partir do nome da _“taxonomia”_, mas pode ser editada neste campo;

   d)**“Permitir Termos Novos”**: permite que novos termos sejam adicionados à _“taxonomia”_ durante o envio de _“itens”_;

   e)**“Status”**: configuração de _“privacidade da taxonomia”_, nos valores:

   ​ i. **“Publicado”**: A _“taxonomia”_ pode ser visualizada pelos visitantes do repositório;

   ​ ii. **“Privado”**: A _“taxonomia”_ pode ser visualizada somente por editores do repositório;

   ​ iii. **“Rascunho”**: A _“taxonomia”_ pode ser visualizada somente pelo seu autor;

   ​ iv.**“Lixo”**: A _“taxonomia”_, e seus _“termos”_, não serão mais aplicados aos seus _“itens”_ e poderão ser deletados permanentemente;

   ​ v.**“Habilitado para tipos de post”\*\***:\*_ permite habilitar esta _“Taxonomia”\* para outros tipos de Posts no WordPress.

6. Em seguida, clique na aba “Termos” e clique em “Criar Novo Termo”

   ![Acesse o painel de controle](_assets\images\096.png)

### Criar Termos

1.Clique em “Criar Novo Termo”;

![Acesse o painel de controle](_assets\images\097.png)

2.Preencha os campos a seguir de acordo com cada “termo” a ser criado:

![Acesse o painel de controle](_assets\images\098.png)

a. **“Imagem da Header”**: É possível adicionar uma imagem que aparece na visualização do “termo” de uma “taxonomia”, dependendo das configurações e do tema adotado. O tema padrão do Tainacan exibe a imagem da Header na página do “termo da taxonomia”;

b. **“Nome”**: nome do “termo” que fará parte da “taxonomia”;

c. **“Descrição”**: descrição do “termo” que fará parte da “taxonomia”;

d. **“Termo pai”**: determina o nível hierárquico do “termo” em relação aos demais desta mesma “taxonomia”.

3.Clique em “Salvar” para concluir a criação do “termo”.

Repita a ação para “adicionar novos termos”, clicando novamente em “Criar Novo Termo”. “Taxonomias” também podem ser criadas a partir do “importador de vocabulário”. Consulte Importador de Vocabulário para saber mais.

## Editar taxonomias

1. Acesse o “painel de controle” do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em “Tainacan”;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique em “Taxonomias”;

   ![Acesse o painel de controle](_assets\images\093.png)

4. Clique na “taxonomia” desejada na “lista de taxonomias”:

​ a. Altere os campos desejados na “aba taxonomia”;

​ b. Na “aba termos” é possível “adicionar”, “editar” ou “excluir” termos desta “taxonomia”.

### Editar termos

1.Acesse o “painel de controle” do WordPress;

![Acesse o painel de controle](_assets\images\050.png)

2.Na barra lateral esquerda, clique em “Tainacan”;

![Acesse o painel de controle](_assets\images\051.png)

3.Clique em “Taxonomias”;

![Acesse o painel de controle](_assets\images\093.png)

4.Clique na “taxonomia” desejada na “lista de taxonomias”;

5.Clique na aba “Termos”;

![Acesse o painel de controle](_assets\images\096.png)

6.Na “lista de termos”, selecione o desejado para edição e clique no “ícone de Lápis” à direita para abrir os campos de edição deste “termo”;

![Acesse o painel de controle](_assets\images\099.png)

7.Altere os campos desejados;

![Acesse o painel de controle](_assets\images\099.png)

8.Clique em:

​ a. “Cancelar”, para cancelar a edição do “termo”;

​ b. “Visualizar termo”, para visualizar o “termo” no tema;

​ c. “Salvar” para concluir a edição do termo.

## Excluir taxonomias

1. Acesse o “painel de controle” do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em “Tainacan”;

   ![Acesse o painel de controle](_assets\images\051.png)

3. Clique em “Taxonomias”;

   ![Acesse o painel de controle](_assets\images\093.png)

4. Clique no “ícone lixeira” à direita na “taxonomia” que você deseja apagar;

![Acesse o painel de controle](_assets\images\102.png)

!>**Atenção**: um aviso será exibido para confirmar esta ação. A “exclusão da taxonomia” implica, também, na “exclusão das informações” em “metadados”, “itens” e “coleções” que usam esta “taxonomia”. Exclua a “taxonomia” somente se tiver certeza de que não haverá perdas graves de informação. Consulte Registro de Atividades para saber mais.

### Excluir termos

1.Acesse o “painel de controle” do WordPress;

![Acesse o painel de controle](_assets\images\050.png)

2.Na barra lateral esquerda, clique em “Tainacan”;

![Acesse o painel de controle](_assets\images\051.png)

3.Clique em “Taxonomias”;

![Acesse o painel de controle](_assets\images\093.png)

4.Clique no “ícone lixeira” à direita no “termo” que você deseja apagar;

![Acesse o painel de controle](_assets\images\101.png)

!>Atenção: um aviso será exibido para confirmar esta ação. A “exclusão do termo” implica também na “exclusão deste valor” em “metadados”, “itens” e “coleções” que usam esta “taxonomia”.
