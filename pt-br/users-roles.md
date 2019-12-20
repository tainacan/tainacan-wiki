<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Usuários" 
		src="/_assets/images/icon_users.png"
		width="40"
		height="40">
</div>

# Permissões e Usuários

> Este artigo explica como as **permissões** são tratadas no Tainacan, bem como quais são as **funções dos usuários** disponíveis e o que cada uma delas pode fazer. Para versões anteriores ao Tainacan 0.15, cheque [esta documentação](/pt-br/users).

O Tainacan lida com permissões de usuários de maneira simular ao [WordPress](https://codex.wordpress.org/pt-br:Pap%C3%A9is_e_Capacidades). Se você está acostumado com as funções e permissões do WordPress, você já tem meio caminho andado!

Uma **permissão** é o que é verificado ao se fornecer acesso para um usuário à uma tela, um botão, qualquer função do sistema. Uma **função de usuário** é uma maneira de conceder um conjunto de permissões para um usuário. Atribuir uma ou mais funções a um usuário é algo que já pode ser feito o WordPress por qualquer administrador com permissões de editar usuários. Com o Tainacan, novas funções são disponibilizadas:

* **Tainacan Author** - *Autor no Tainacan*: Pode criar e publicar coleções e itens, mas não pode editar itens publicados e nem editar itens de outros usuários.
* **Tainacan Editor** - *Editor no Tainacan*: Pode criar, publicar e editar itens e coleções, inclusive de outros usuários.
* **Tainacan Administrator** - *Administrador no Tainacan*: Tem poderes administrativos sobre o repositório, seus itens e conteúdos, podendo inclusive configurar novas funções de usuários e alterar suas permissões.

A seguir, detalhamos:

1. As [Permissões do Tainacan](/pt-br/capabilities.md)
2. Como [Gerenciar Funções de Usuários](/pt-br/manage-user-roles.md)
3. Como [Gerenciar Permissões Específicas](/pt-br/manage-specific-capabilities.md) em certas coleções
