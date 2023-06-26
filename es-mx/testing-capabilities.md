# Testando Permissões

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

As permissões e a gestão de funções de usuários estão entre os recursos mais importantes de se testar no Tainacan, já que envolvem questões sensíveis de segurança para os repositórios. Idealmente, para se realizar estes testes, é preciso ser administrador do seu WordPress, com permissões para criar e alterar diferentes usuários de teste.

## O Básico

1. Acesse o **painel de controle do WordPress** onde a sua versão de testes do plugin Tainacan está instalada e ativada (geralmente, o endereço do seu site + `/wp-admin`);
2. Na barra lateral esquerda, clique em **Adicionar Novo** na seção **Usuários**;
3. Crie um usuário de teste com os dados que preferir, marcando sua função como `Assinante`;
4. Faça _log-off_, clicando em `Sair` no canto do menu de usuário do canto superior direito;
5. Entre com o usuário criado no painel de controle do Wordpress;
6. Na barra lateral esquerda, clique em **Tainacan** para acessar o painel Admin do Tainacan;
   - [x] Já na página inicial do plugin, verifique se estão inacessíveis:
     - Os links de Metadados e Filtros Nível Repositório;
     - Os links de Metadados, Filtros e Atividades Nível Coleção;
   - [x] Veja por outro lado se estão disponíveis:
     - Os links de Taxonomias, Atividades, Importadores e Exportadores nível repositório;
     - Os links para a Lista de Coleções e para as listas de itens de cada coleção;
7. Acesse a Lista de Itens uma das Coleções do Repositório;
   - [x] Confira se estão inacessíveis:
     - O botão de adicionar novo Item;
     - Os items privados;
     - Os links para editar ou deletar os itens;
     - A opção de selecionar e editar itens em massa;
     - Os links no menu da coleção para Metadados, Atividades, Filtros e Permissões da Coleção;
   - [x] Confirme que estão disponíveis:
     - Os filtros ao lado da lista de itens;
     - As abas de Itens Publicados, Rascunho e Lixeira;
     - As opções de controle da Busca como Ordenação e Modos de Visualização;
8. Clique em um dos Itens para acessar sua página no Admin:
   - [x] Confirme que não há link para editar o item;
   - [x] Veja se todos os dados do item estão visíveis, exceto pelas Atividades, que não devem ser listadas;
9. Vá para lista de Coleções, disponível no menu lateral do Repositório;
   - [x] Confira se estão inacessíveis:
     - O botão de adicionar nova Coleção;
     - As coleções privadas;
     - Os links para editar ou deletar as Coleções;
   - [x] Confirme que estão disponíveis:
     - As abas de Coleções Publicadas e Lixeira;
     - As opções de Ordenação e Busca textual;
10. Vá para lista de Taxonomias, disponível no menu lateral do Repositório;

- [x] Confira se estão inacessíveis:
  - O botão de adicionar nova Taxonomia;
  - As taxonomias privadas;
  - Os links para editar ou deletar as Taxonomias;
- [x] Confirme que estão disponíveis:
  - As abas de Taxonomias Publicados, Rascunho e Lixeira;
  - As opções de Ordenação e Busca textual;

11. Escolha uma Taxonomia e clique nela;

- [x] Confirme que a aba onde seria feita a edição da Taxonomia está sem permissão de acesso;
- [x] Cheque se a aba que lista os termos está acessível. Porém não deve ser possível adicionar ou editar termos;

12. Vá para a lista de Atividades do Repositório, disponível no menu lateral do Repositório;

- [x] Confirme que as Atividades não são listadas da aba Atividades;
- [x] Confirme que a aba Processos não contém nenhum processo em execução (não por falta de permissão, mas porque este usuário, recém criado, não possui nenhum processo);

## Adicionando todas as permissões para uma função de usuário

1. Logado como administrador, acesse o **painel de controle do WordPress** onde a sua versão de testes do plugin Tainacan está instalada e ativada (geralmente, o endereço do seu site + `/wp-admin`);
2. Na barra lateral esquerda, clique em **Funções de Usuários** na seção **Tainacan**;
3. Na lista de papéis, procure pelo papel "Assinante", ou qualquer outro que queira atribuir/remover permissões;
4. Passando o mouse em cima do função, selecione a opção "Editar";
5. Na tela de edição da função, marque a opção `Gerenciar Tainacan`;
   - [x] Observe que todas demais permissões foram marcadas e não podem ser alteradas já que estão sobre influência da permissão maior.
6. Clique em `Salvar Alterações`;
7. Faça _log-off_, clicando em `Sair` no canto do menu de usuário do canto superior direito;
8. Entre com um usuário de testes criado que possua a função de usuário alterada no painel de controle do Wordpress;
9. Na barra lateral esquerda, clique em **Tainacan** para acessar o painel Admin do Tainacan;
   - [x] Confirme que todos os elementos e funções do Tainacan estão acessíveis desta vez;
10. Volte para o painel de controle do WordPress, clicando na logo do WordPress no canto superior direito;
11. Faça _log-off_, clicando em `Sair` no canto do menu de usuário do canto superior direito;

## Adicionando algumas permissões para uma função de usuário

1. Entre como administrador novamente e acesse mais uma vez a tela de configuração da função de usuário escolhida (_por exemplo, Assinante_);
2. Na tela de edição da função, desmarque a opção `Gerenciar Tainacan`;

- [x] Observe que as permissões foram todas desmarcadas e agora podem ser alteradas.

3. Troque para a aba "Coleções";
4. Com o seletor marcado em `Todas as Coleções`, ative as seguintes permissões:
   1. Gerenciar Metadados;
   2. Deletar Filtros;
   3. Ver Itens Privados;
5. Troque o seletor para alguma coleção específica;

- [x] Note que algumas permissões já estão marcadas e não podem ser alteradas, aquelas marcadas no nível de `Todas as coleções`;

6. Nesta coleção, marque as seguintes permissões:
   1. Editar Itens em Massa;
   2. Editar Itens;
   3. Editar Itens Publicados;
   4. Editar Itens de Outros;
   5. Deletar Itens;
7. Clique em `Salvar Alterações`;
8. Faça _log-off_, clicando em `Sair` no canto do menu de usuário do canto superior direito;
9. Entre com um usuário de testes criado que possua a função de usuário alterada no painel de controle do Wordpress;
10. Na barra lateral esquerda, clique em **Tainacan** para acessar o painel Admin do Tainacan;

- [x] Já na página inicial do plugin, verifique se estão inacessíveis:
  - Os links de Metadados e Filtros Nível Repositório;
  - Os links de Atividades e Filtros Nível Coleção;
- [x] Veja por outro lado se estão disponíveis:
  - Os links de Taxonomias, Atividades, Importadores e Exportadores nível repositório;
  - Os links para a Lista de Coleções e para as Listas de Itens e Metadados de cada coleção;

11. Entre na Coleção definida no passo **5**;

- [x] Confira se estão inacessíveis:
  - Os links para deletar os itens;
  - Os links no menu da coleção para Atividades, Filtros e Permissões da Coleção;
- [x] Confirme que estão disponíveis:
  - O botão de adicionar novo Item;
  - Os links para editar os itens;
  - Os filtros ao lado da lista de itens;
  - As abas de Itens Publicados, Privados, Rascunho e Lixeira;
  - As opções de controle da Busca como Ordenação e Modos de Visualização;
  - A opção de selecionar e editar itens em massa;
  - Os link no menu da coleção para Metadados da Coleção;

12. Entre em algum dos itens desta coleção;

- [x] Confirme que há link para editar o item;
- [x] Veja se todos os dados do item estão visíveis, exceto pelas Atividades, que não devem ser listadas;

13. Clique em "Editar Item";

- [x] Confirme que não há link para deletar o item, já que este item foi criado por outro usuário;

14. Voltando à Lista de Itens, clique em Adicionar Novo para criar um novo Item;
15. Preecha o item como desejar;

- [x] Note que, por não ter a permissão "Publicar Items" você só pode salvar o novo item como rascunho;

16. Ao concluir, volte para a Lista de Itens;

- [x] Veja que o item que você acabou de criar está na aba rascunho e pode, além de ser editado, ser deletado;

17. Por fim, entre na tela de Metadados da Coleção;

- [x] Confirme que é possível ordenar e editar os metados, porém não é possível deletá-los;

?> _TODO_ Continuar a descrever o teste.

## Configurando permissões específicas em uma coleção

1. Entre como administrador no painel de controle do Wordpress;
2. Na barra lateral esquerda, clique em **Tainacan** para acessar o painel Admin do Tainacan;
3. Entre na página da coleção que desejar configurar;
4. Acesse a página de Permissões Relacionadas à Coleção, na barra de menu da coleção;
5. Selecione alguma permissão para alterar, por exemplo "Editar itens em massa";
6. Retire ou adicione esta permissão de alguma função de usuário;
7. Faça _log-off_ e entre com algum usuário da função alterada;

- [x] Verifique se a permissão foi modificada;

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).
