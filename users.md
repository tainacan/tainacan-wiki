> [!NOTE] This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

# Usuários

## Permissões de Usuários no Tainacan

Este artigo explica como as permissões são tratadas no Tainacan, bem como quais são as funções dos usuários disponíveis e o que cada uma delas pode fazer.

O Tainacan lida com permissões de usuários da mesma forma que o [WordPress](https://codex.wordpress.org/pt-br:Pap%C3%A9is_e_Capacidades). Se você está acostumado com as funções e permissões do WordPress, você já tem meio caminho andado!

As funções padrão do WordPress são atribuídas com novos recursos para trabalhar com coleções, itens e outras operações específicas do Tainacan. Além disso, o Tainacan cria novas funções, relativas às funções do WordPress, que possuem os mesmos recursos específicos do Tainacan mas que não têm acesso ao restante do **painel administrativo do WordPress**.

> Por exemplo: o *Editor no WordPress* pode gerenciar tudo dentro do Tainacan, eles também podem criar e publicas páginas no site; por outro lado, os *editores do Tainacan* não podem fazer isso no site.

Se você quiser alterar as permissões para **funções** ou usuários específicos, ou até mesmo criar novas funções, você pode usar plugins dedicados a isso disponíveis para WordPress.

Resumidamente estas são as funções e suas principais características. Uma descrição detalhada pode ser encontrada na [próxima seção](/pt-br/users#funções-e-permissões).

* **Subscriber** - *Assinante*: Não pode realizar ações dentro do Tainacan.
* **Colaborator** - *Colaborador*: Pode criar coleções e itens mas não pode publicar.
* **Author / Tainacan Author** - *Autor / Autor no Tainacan*: Pode criar e publicar coleções e itens, mas não pode editar itens publicados e nem editar itens de outros usuários.
* **Editor / Tainacan Editor** - *Editor / Editor no Tainacan*: Pode criar, publicar e editar itens e coleções, inclusive de outros usuários.
* **Administrator** - *Administrador* - Tem poderes administrativos sobre o site, o repositório, seus itens e conteúdos, podendo inclusive habilitar e desabilitar plug-ins como o Tainacan.

-----

## Funções e Permissões

Aqui você encontra a documentação detalhada de cada função e suas permissões em cada parte do Tainacan.

<!-- tabs:start -->

#### ** Coleções **

### Coleções

> Nota sobre moderadores de Coleções: **Moderadores de coleções** tem as mesmas permissões que um **editor**, mas apenas nas coleções específicas atribuídas a este usuário. Mesmo se o usuário for um **assinante**, caso seja atribuído como um **editor** de uma coleção, ele passará a ter permissões de **editor** nela.

|                            | Administrador | Editor |	Autor |	Colaborador |
|----------------------------|---------------|--------|-------|-------------|
| Editar Coleções 	         | x 	         | x 	  |  x    |             |
| Deletar Coleções 	         | x 	         | x 	  |  x    |             |
| Publicar Coleções 	     | x 	         | x 	  |  x    |             |
| Editar Coleções publicadas | x 	         | x 	  |  x    |             |
| Editar outras Coleções 	 | x 	         | x 	  |	      |             |
| Deletar outras Coleções 	 | x 	         | x 	  |	      |             |
| Acessar Coleções privadas  | x 	         | x 	  |	      |             |
| Editar Coleções privadas 	 | x 	         | x 	  |	      |             |
| Deletar Coleções privadas  | x 	         | x 	  |	      |             |

#### Publicar Coleções

Permite publicar sua própria coleção.

| Nome da permissão              | Quem pode fazer                                                                   |
|--------------------------------|-----------------------------------------------------------------------------------|
| `publish_tainacan-collections` | *Administradores, Editores, Editores no Tainacan, Autores e Autores no Tainacan*  |

#### Editar Coleções

Permite criar e editar detalhes da sua própria coleção, mas não permite a sua publicação.

| Nome da permissão           | Quem pode fazer                           |
|-----------------------------|-------------------------------------------|
| `edit_tainacan-collections` | *Todos, menos Assinantes e Colaboradores* |         

#### Editar outras Coleções

Permite editar detalhes de coleções de outros usuários

| Nome da permissão                  | Quem pode fazer                                    |
|------------------------------------|----------------------------------------------------|
| `edit_others_tainacan-collections` | *Administradores, Editores e Editores no Tainacan* | 

#### Editar Coleções publicadas

Permite editar detalhes de coleções depois de publicadas

| Nome da permissão                     | Quem pode fazer                                    |
|---------------------------------------|----------------------------------------------------|
| `edit_published_tainacan-collections` | *Administradores, Editores e Editores no Tainacan* |

#### Editar Coleções privadas

Permite editar detalhes de coleções marcadas como privadas.

| Nome da permissão                     | Quem pode fazer                                    |
|---------------------------------------|----------------------------------------------------|
| `edit_private_tainacan-collections`   | *Administradores, Editores e Editores no Tainacan* |

#### Deletar Coleções

Permite deletar suas próprias coleções.

| Nome da permissão             | Quem pode fazer                           |
|-------------------------------|-------------------------------------------|
| `delete_tainacan-collections` | *Todos, menos Assinantes e Colaboradores* |

#### Deletar outras Coleções

Permite deletar coleções de outros usuários

| Nome da permissão                     | Quem pode fazer                                    |
|---------------------------------------|----------------------------------------------------|
| `delete_others_tainacan-collections`r | *Administradores, Editores e Editores no Tainacan* | 

#### Deletar Coleções publicadas

Permite deletar coleções depois de publicadas:

| Nome da permissão                       | Quem pode fazer                                    |
|-----------------------------------------|----------------------------------------------------|
| `delete_published_tainacan-collections` | *Administradores, Editores e Editores no Tainacan* | 

#### Acessar Coleções privadas

Permite acessar coleções marcadas como privadas:

| Nome da permissão                     | Quem pode fazer                                    |
|---------------------------------------|----------------------------------------------------|
| `read_private_tainacan-collections`   | *Administradores, Editores e Editores no Tainacan* | 

#### Deletar Coleções privadas

Permite deletar coleções marcadas como privadas

| Nome da permissão                     | Quem pode fazer                                    |
|---------------------------------------|----------------------------------------------------|
| `delete_private_tainacan-collections` | *Administradores, Editores e Editores no Tainacan* |

#### ** Itens **

### Itens

Esta seção explica as permissões relacionadas à gestão de itens no repositório.

Para cada usuário no Tainacan estão atribuídas um conjunto de permissões para cada coleção no repositório, de acordo com sua [Função](/pt-br/users#funções-e-permissões).

As permissões são independentes para cada coleção. Portanto, dependendo do caso, um usuário pode ser Editor em uma coleção mas não ter essas mesmas permissões em uma outra coleção.

Permissões para um coleção em específico podem ser atribuídas adicionando este usuário como um moderador na coleção desejada. Neste caso, o usuário terá os mesmos direitos de um Editor, mas apenas nesta coleção especificada.

> Também é possível usar um Plug-in para WordPress e passar a controlar de forma modular as permissões de cada usuário em cada coleção.

Na descrição a seguir você encontra as características de cada permissão aplicadas para cada coleção. Cada usuário e função tem um conjunto de 10 permissões em cada coleção. 

|                         | Administrador | Editor | Autor | Colaborador |
|-------------------------|---------------|--------|-------|-------------|
| Editar Itens	          | x 	          | x      |  x    | x           |
| Deletar Itens	          | x 	          | x      |  x    | x           |
| Publicar Itens	      | x 	          | x      |  x    |             |
| Editar Itens publicados | x 	          | x      |  x    |             |
| Editar outros Itens	  | x 	          | x      |	   |             |
| Deletar outros Itens	  | x 	          | x      |	   |             |
| Acessar Itens privados  | x 	          | x      |	   |             |
| Editar Itens privados   | x 	          | x      |	   |             |
| Deletar Itens privados  | x 	          | x      |	   |             |

#### Publicar Itens

Permite a publicação dos próprios itens.

| Nome da permissão               | Quem pode fazer                                                                 |
|---------------------------------|---------------------------------------------------------------------------------|
| `publish_%collection_id%_items` | *Administradores, Editores, Editores no Tainacan Autores e Autores no Tainacan* |

#### Editar Itens

Permite a criação e a edição dos próprios itens, mas não permite a publicação deles.

| Nome da permissão            | Quem pode fazer                           |
|------------------------------|-------------------------------------------|
| `edit_%collection_id%_items` | *Todos, menos assinantes*                 |

#### Editar outros Itens

Permite a edição de Itens de outros usuários

| Nome da permissão                  | Quem pode fazer                                   |
|------------------------------------|---------------------------------------------------|
| `edit_others_%collection_id%_items | *Administradores, Editores, Editores no Tainacan* | 

#### Editar Itens publicados

Permite a edição de itens depois de publicados

| Nome da permissão                      | Quem pode fazer                                   |
|----------------------------------------|---------------------------------------------------|
| `edit_published_%collection_id%_items` | *Administradores, Editores, Editores no Tainacan* |

#### Editar Itens privados

Permite a edição de itens marcados como privados

| Nome da permissão                     | Quem pode fazer                                 |
|---------------------------------------|-------------------------------------------------|
| `edit_private_%collection_id%_items`  | Administradores, Editores, Editores no Tainacan |

#### Deletar Itens

Permite deletar os próprios itens:

| Nome da permissão              | Quem pode fazer           |
|--------------------------------|---------------------------|
| `delete_%collection_id%_items` | *Todos, menos assinantes* | 

#### Deletar outros Itens

Permite deletar itens de outros usuários.

| Nome da permissão                      | Quem pode fazer                                   |
|----------------------------------------|---------------------------------------------------|
| `delete_others_%collection_id%_items`  | *Administradores, Editores, Editores no Tainacan* | 

#### Deletar Itens publicados

Permite deletar itens depois de publicados

| Nome da permissão                        | Quem pode fazer                                   |
|------------------------------------------|---------------------------------------------------|
| `delete_published_%collection_id%_items` | *Administradores, Editores, Editores no Tainacan* | 

#### Acessar Itens privados

Permite acessar itens marcados como privado

| Nome da permissão                    | Quem pode fazer                                   |
|--------------------------------------|---------------------------------------------------|
| `read_private_%collection_id%_items` | *Administradores, Editores, Editores no Tainacan* | 

#### Deletar Itens privados

Permite deletar itens marcados como privado

| Nome da permissão                      | Quem pode fazer                                   |
|----------------------------------------|---------------------------------------------------|
| `delete_private_%collection_id%_items` | *Administradores, Editores, Editores no Tainacan* |

#### ** Taxonomias **

### Taxonomias

> [!NOTE]
> Documentar permissões de taxonomias

#### ** Metadados **

### Metadados

> [!NOTE]
> Documentar permissões de metadados

#### ** Filtros **

### Filtros

> [!NOTE]
> Documentar permissões de filtros

<!-- tabs:end -->