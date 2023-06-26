# Permissões do Tainacan

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

As permissões do Tainacan são separadas em dois níveis: _repositório_ e _coleções_. A principal diferença é que permissões de coleções podem tratar de todas as coleções do repositório ou de cada coleção em específico.

Algumas permissões podem garantir um acesso equivalente ao de outra permissões por serem consideradas "super permissões". Por exemplo, um usuário que possui a permissão "Gerenciar Tainacan" não precisa ter nenhuma outra permissão, já que esta lhe concedo acesso a todos os recursos. Veja suas descrições a seguir:

<!-- tabs:start -->

### ** Nível Repositório **

## Repositório

### Repositório em Geral

| Nome                             | Descrição                                                                 |
| -------------------------------- | ------------------------------------------------------------------------- |
| Gerenciar Tainacan               | Gerenciar todos os recursos do Tainacan e todas as coleções               |
| Gerenciar Permissões de Usuários | [Gerenciar funções de usuários e permissões](/es-mx/manage-user-roles.md) |

### Taxonomias

| Nome                         | Descrição                                               |
| ---------------------------- | ------------------------------------------------------- |
| Editar Taxonomias            | Criar e editar taxonomias e seus termos                 |
| Deletar Taxonomias           | Deletar taxonomias e seus termos                        |
| Editar Taxonomias de Outros  | Editar taxonomias e termos criados por outros usuários  |
| Deletar Taxonomias de Outros | Deletar taxonomias e termos criados por outros usuários |
| Ver Taxonomias Privadas      | Acessar taxonomias privadas e seus termos               |

### Metadados

| Nome                   | Descrição                                       |
| ---------------------- | ----------------------------------------------- |
| Editar Metadados       | Criar e editar metadados nível repositório      |
| Deletar Metadados      | Deletar metadados nível repositório             |
| Ver Metadados Privados | Acessar metadados privados no nível repositório |

### Filtros

| Nome                 | Descrição                                     |
| -------------------- | --------------------------------------------- |
| Editar Filtros       | Criar e editar filtros nível repositório      |
| Deletar Filtros      | Deletar filtros nível repositório             |
| Ver Filtros Privados | Acessar filtros privados no nível repositório |

### Atividades

| Nome           | Descrição                                                                                                                                     |
| -------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| Ver Atividades | Acessar registros de atividades e eventos do sistema. Note que atividades podem contrer informações de coleções, itens e taxonomias privadas. |

#### ** Nível de Coleções **

## Coleções

Permissões nível coleção existem em duas instâncias: a **geral**, que afeta todas as coleções e a **específica**, que afeta apenas uma coleção em si. Desta maneira, é possível configurar funções de usuários que possuem acesso à todas as coleções ou a apenas a algumas. Portando, todas as permisssões a seguir podem variar nestas instâncias:

### Coleção

| Nome                             | Descrição                                                                                                                                                                              |
| -------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Gerenciar Coleção                | Configurar a coleção, além de gerenciar todos os seus itens, metadados e filtros                                                                                                       |
| Gerenciar Permissões de Usuários | Gerenciar funções de usuários e permissões no que diz respeito à esta coleção                                                                                                          |
| Editar Itens em Massa            | Realizar operações de edição ou adição em massa em itens desta coleção. Note que sem outras permissões como "Editar item" ou "Editar Itens de Outros", esta permissão não terá efeito. |

### Metadados

| Nome                   | Descrição                                   |
| ---------------------- | ------------------------------------------- |
| Editar Metadados       | Criar e editar metadados nesta coleção      |
| Deletar Metadados      | Deletar metadados nesta coleção             |
| Ver Metadados Privados | Acessar metadados privados no nesta coleção |

### Filtros

| Nome                 | Descrição                              |
| -------------------- | -------------------------------------- |
| Editar Filtros       | Criar e editar filtros nesta coleção   |
| Deletar Filtros      | Deletar filtros nesta coleção          |
| Ver Filtros Privados | Acessar filtros privados nesta coleção |

### Itens

| Nome                     | Descrição                                               |
| ------------------------ | ------------------------------------------------------- |
| Editar Itens             | Criar e editar itens nesta coleção                      |
| Deletar Itens            | Deletar itens nesta coleção                             |
| Editar Itens de Outros   | Editar itens criados por outros usuários nesta coleção  |
| Editar Itens Publicados  | Editar itens publicados nesta coleção                   |
| Deletar Itens de Outros  | Deletar itens criados por outros usuários nesta coleção |
| Deletar Itens Publicados | Deletar itens publicados nesta coleção                  |
| Ver Itens Privadas       | Acessar itens privadas nesta coleção                    |

<!-- tabs:end -->

Estas são as permissões relacionadas ao Tainacan. Veja [aqui](/es-mx/manage-user-roles.md) como editar as funções de usuários para que eles possam ter mais ou menos destas, e [aqui](/es-mx/manage-specific-capabilities.md) como retirar ou adicionar exceções em certas coleções.
