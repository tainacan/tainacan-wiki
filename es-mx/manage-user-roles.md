# Gerenciar Funções de Usuários

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Desde a versão 0.15 do Tainacan, é possível configurar as **funções de usuários** no que diz respeito [às permisssões do Tainacan](/es-mx/capabilities.md). Assim fica fácil limitar o acesso de _Editores do Tainacan_ à algumas configurações ou até mesmo dar para _Autores_ do seu site WordPress algumas permissões de edição no painel administrativo do seu repositório.

Esta função está disponibilizada pelo menu do plugin, que pode ser acessado no menu lateral do painel administrativo do WordPress:

![Tela de Gestão de Funções de Usuários](/_assets/images/manage-user-roles-1.png)

Somente usuários que possuem a permissão de [Gerenciar Permissões de Usuários](/es-mx/capabilities#repositório-em-geral) poderão acessar esta tela.

## Permissões do WordPress vs. Permissões do Tainacan

Note que além das funções de usuários criadas para o Tainacan, são listadas também as funções padrão do WordPress. Você não pode deletar estas funções e o controle das permissões feitas terá relação apenas com o Tainacan. Para gerir outras permissões por função, tal como a de "Editar posts", "Trocar Tema", existem plugins específicos do WordPress. Aqui, tratamos apenas do que afeta o Tainacan.

Com esta divisão, seus usuários que possuírem apenas funções do Tainacan, não terão acesso à outras permissões do site, o que pode ser decidido concedendo ao usuário mais de uma função, ou atribuindo à funções do WordPress permissões do Tainacan.

## Editando uma Função de Usuário

Ao clicar em _Editar_ em qualquer uma das funções acima, a seguinte tela aparecerá:

![Tela de Configuração de uma Função de Usuário, aba Repositório](/_assets/images/manage-user-roles-2.png)

Além do nome, é possível marcar nas caixas qual permissão está atribuida àquela função de usuário. Note que, como explicado na [página sobre permissões](/es-mx/capabilities), algumas permissões afetam outras. A permissão "Gerenciar Tainacan", neste caso, já concede à função todas as outras permissões por padrão.

Na aba "Coleções", podemos gerenciar não apenas permissões que afetam a todas as coleções, mas também especificar para certas coleções se haverá ou não uma permissão para aquela função:

![Tela de Configuração de uma Função de Usuário, aba Coleções](/_assets/images/manage-user-roles-3.png)

Neste caso, qualquer permissão que for marcada para todas as coleções, afetará a permissão de mesmo nome ao se trocar para as coleções específicas.

## Criando funções do zero, ou a partir de outras

<div style="float: right; margin-left: 32px;">

![Criando uma função de usuário a partir de outra](/_assets/images/manage-user-roles-4.png ":size=220")

</div>

Pode ser desável criar uma função de usuário nova, com permisssões bem específicas. Neste caso, basta clicar em "Nova Função" no botão do canto superior esquerdo da tela de Funções do Usuário. Isto criará uma função limpa, sem nenhum permissão algum.

Porém, se o que pretende-se é criar uma função com permissões muito parecidas das de um "Editor", salvas algumas exceções, um caminho mais simples pode ser feito: basta clicar na setinha para usar alguma função existente como _modelo_. A nova função agora terá as mesmas permissões que a modelo escolhida de início.

## Configurando permissões específicas

O processo descrito nesta página te leva por um caminho de configuração no seguinte fluxo:

> Função de Usuário > Permissão > Repositório > Coleção

O que funciona bem para a maioria dos casos. Porém, podem haver situações em que se deseja remover ou adicionar uma permissão para uma função especificamente em uma coleção. Neste caso, um fluxo mais interessante seria:

> Coleção > Permissão > Função de Usuário

Para entender como fazer isso, acesse a documentação de como [Gerenciar Permissões Específicas](/es-mx/manage-specific-capabilities.md)
