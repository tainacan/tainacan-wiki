> [!NOTE] This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

# Manage Specific Capabilities

A partir da versão 0.15 do Tainacan, ao acessar o Painel Administrativo do Tainacan, é possível acessar, tanto a nível repositório, quanto a nível de uma coleção, a tela de configuração de Permisssões:

> [!NOTE]
> Inserir captura de tela

Nesta tela, estão listadas todas as permissões que de alguma maneira tem haver com aquele repositório ou com aquela coleção. Pode-se também filtrar a lista por funções de usuário que possuam aquela permissão.

Editando uma permissão, pode-se ver quais funções a possuem. As funções são separadas em dois grupos: 
 * **Funções herdadas** são aquelas que não possuem especificamente esta permissão, porém possuem uma outra permissão, de importância maior, que afeta esta permissão. Por exemplo, Administradores costumam ter a permissão "Gerenciar Tainacan", que os dispensa de te qualquer outra permissão configurada, já que esta permissão garante o acesso de todas as outras. Para remover este tipo de permissão, é preciso desmarcar a permissão de maior peso primeiro, para depois configurar quais específicas devem ter.
 * **Funções associadas** são as que de fato podem ser associadas ou não para esta permissão.

> [!NOTE]
> Inserir captura de tela

Para ter acesso à estas telas, é preciso que o usuário tenha uma função com a permissão [Gerenciar Permissões de Usuários](capabilities#repositório-em-geral) ou [Gerenciar Permissões de Usuários da Coleção](capabilities#coleção)