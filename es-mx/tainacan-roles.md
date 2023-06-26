# Funções de Usuários do Tainacan

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Administradores do WordPress, frequentemente encontram por padrão as seguintes opções de funções de usuários:

- **Administrador** - O "manda chuva" do sistema, que pode além de alterar qualquer conteúdo, gerenciar plugins, temas e outras configurações do site.
- **Editor** - Usuários com acesso e permissão de edição para o conteúdo do site tais como Posts e Comentários. Também podem subir imagens, criar categorias e atividades similares.
- **Autor** - Usuários que podem criar conteúdos e editar seus próprios Posts.
- **Colaborador** - Similar ao Autor, porém não podem publicar o post, isso fica responsável para funções de maior poder. Não podem gerir conteúdos de mídia como imagens nem criar categorias.
- **Assinante** - Usuários sem nenhum poder dentro do painel administrativo do WordPress, apenas enxergam o que é público no site. Servem apenas para se ter controle sobre usuários com login que podem, por exemplo, ler posts exclusivos para assinantes.

Ao instalar o Tainacan, porém, novas funções de usuário surgem. Vejamos a seguir quais são elas:

- **Tainacan Administrator** - _Administrador no Tainacan_: Tem poderes administrativos sobre o repositório, seus itens e conteúdos, podendo inclusive configurar novas funções de usuários e alterar suas permissões.
- **Tainacan Editor** - _Editor no Tainacan_: Pode criar, publicar e editar itens e coleções, inclusive de outros usuários.
- **Tainacan Author** - _Autor no Tainacan_: Pode criar e publicar coleções e itens, mas não pode editar itens publicados e nem editar itens de outros usuários.

Note que **as funções de usuário no Tainacan não garantem nenhum dos privilégios que podem ser necessários para se mexer no restante do conteúdo do WordPress**. Dessa maneira, é possível ter um usuário gestor do seu repositório que não interfira no conteúdo do blog.

?> O contrário porém, depende do nível. Enquanto o _Administrador no Tainacan_ não tem nenhuma permissão sobre o painel administrativo do WordPress por padrão, o _Administrador do WordPress_ tem todas as permissões que o _Administrador no Tainacan_, além das suas próprias. O _Editor do WordPress_ também possui todas as permissões que o _Administrador no Tainacan_ possui. Por outro lado, o _Autor no Tainacan_ tem por padrão o mesmo nível de permissão que um _Assinante do WordPress_ no painel administrativo do WordPress.

Vamos compreender algumas situações que podem ser desejáveis e qual o melhor tipo de função que pode ser atribuída para um usuário:

1. Se um usuário deve ter permissões apenas para criar e editar seus itens no Tainacan - sem alterar itens de outros usuários - e sem mexer no conteúdo do blog ou site, sua função adequada provavelmente será a de _Autor no Tainacan_;
2. Se um usuário deve ter permissões para gerenciar por completo um repositório no Tainacan, mas não alterar nada do site WordPress, sua função deverá ser a de _Administrador do Tainacan_;
3. Se um usuário deve poder criar e editar itens no Tainacan, e ao mesmo tempo poder criar e moderar posts no WordPress, sua função mais apropriada seria de _Editor_ (do WordPress);
4. Se um usuário deve poder ter controle sobre todo o repositório Tainacan, mas no WordPress deve poder apenas editar seus próprios itens, então este deve ser um _Autor_ (do WordPress) e sua função deve ser editada, usando [a página de configuração de funções do Tainacan](/es-mx/manage-user-roles.md), para lhe conceder as permissões necessárias relacionadas ao Tainacan.

As permissões no Tainacan foram pensadas desta maneira porque não é possível, _por padrão_, alterar quais permissões relacionadas ao WordPress uma função de usuário tem. Porém, isso é totalmente viável com o uso de algum dos diversos plugins de configuração de permissões e funções existentes no WordPress ([vejam alguns aqui](https://wordpress.org/plugins/search/user+roles/ ":ignore")).

A seguir, entenda melhor:

- As [Permissões do Tainacan](/es-mx/capabilities.md)
- Como [Gerenciar Funções de Usuários](/es-mx/manage-user-roles.md)
- Como [Gerenciar Permissões Específicas](/es-mx/manage-specific-capabilities.md) em certas coleções
