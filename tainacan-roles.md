?> _TODO_  This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

# Funções de Usuários do Tainacan

Administradores do WordPress, frequentemente encontram por padrão as seguintes opções de funções de usuários:

* **Administrador** - O "manda chuva" do sistema, que pode além de alterar qualquer conteúdo, gerenciar plugins, temas e outras configurações do site.
* **Editor** - Usuários com acesso e permissão de edição para o conteúdo do site tais como Posts e Comentários. Também podem subir imagens, criar categorias e atividades similares.
* **Autor** - Usuários que podem criar conteúdos e editar seus próprios Posts.
* **Colaborador** - Similar ao Autor, porém não podem publicar o post, isso fica responsável para funções de maior poder. Não podem gerir conteúdos de mídia como imagens nem criar categorias.
* **Assinante** - Usuários sem nenhum poder dentro do painel administrativo do WordPress, apenas enchergam o que é público no site. Servem apenas para se ter controle sobre usuários com login que podem, por exemplo, ler posts exclusivos para assinantes.

Ao instalar o Tainacan, porém, novas funções de usuário surgem. Vejamos a seguir quais são elas:

* **Tainacan Administrator** - *Administrador no Tainacan*: Tem poderes administrativos sobre o repositório, seus itens e conteúdos, podendo inclusive configurar novas funções de usuários e alterar suas permissões.
* **Tainacan Editor** - *Editor no Tainacan*: Pode criar, publicar e editar itens e coleções, inclusive de outros usuários.
* **Tainacan Author** - *Autor no Tainacan*: Pode criar e publicar coleções e itens, mas não pode editar itens publicados e nem editar itens de outros usuários.

Note que **as funções de usuário no Tainacan não garantem nenhum dos privilégios que podem ser necessários para se mexer no restante do conteúdo do WordPress**. Dessa maneira, é possível ter um usuário gestor do seu repositório que não interfira no conteúdo do blog. 

?> O contrário porém, depende do nível. Enquanto o *Administrador no Tainacan* não tem nenhuma permissão sobre o painel administrativo do WordPress por padrão, o  *Administrador do WordPress* tem todas as permissões que o *Administrador no Tainacan*, além das suas próprias. O *Editor do WordPress* também possui todas as permissões que o *Administrador no Tainacan* possui. Por outro lado, o *Autor no Tainacan* tem por padrão o mesmo nível de permissão que um *Assinante do WordPress* no painel administrativo do WordPress.

Vamos compreender algumas situações que podem ser desejáveis e qual o melhor tipo de função que pode ser atribuída para um usuário:

1. Se um usuário deve ter permissões apenas para criar e editar seus itens no Tainacan - sem alterar itens de outros usuários - e sem mexer no conteúdo do blog ou site, sua função adequada provavelmente será a de *Autor no Tainacan*;
2. Se um usuário deve ter permissões para gerenciar por completo um repositório no Tainacan, mas não alterar nada do site WordPress, sua função deverá ser a de *Administrador do Tainacan*;
3. Se um usuário deve poder criar e editar itens no Tainacan, e ao mesmo tempo poder criar e moderar posts no WordPress, sua função mais apropriada seria de *Editor* (do WordPress);
4. Se um usuário deve poder ter controle sobre todo o repositório Tainacan, mas no WordPress deve poder apenas editar seus próprios itens, então este deve ser um *Autor* (do WordPress) e sua função deve ser editada, usando [a página de configuração de funções do Tainacan](/manage-user-roles.md), para lhe conceder as permissões necessárias relacionadas ao Tainacan.

As permissões no Tainacan foram pensadas desta maneira porque não é possível, *por padrão*, alterar quais permissões relacionadas ao WordPress uma função de usuário tem. Porém, isso é totalmente viável com o uso de algum dos diversos plugins de configuração de permissões e funções existentes no WordPress ([vejam alguns aqui](https://wordpress.org/plugins/search/user+roles/ ':ignore')).

A seguir, entenda melhor:

* As [Permissões do Tainacan](/capabilities.md)
* Como [Gerenciar Funções de Usuários](/manage-user-roles.md)
* Como [Gerenciar Permissões Específicas](/manage-specific-capabilities.md) em certas coleções
