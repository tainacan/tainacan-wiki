# Testando Permissões

## O Básico

1. Acesse o **painel de controle do WordPress** onde a sua versão de testes do plugin Tainacan está instalada e ativada (geralmente, o endereço do seu site + `/wp-admin`);
2. Na barra lateral esquerda, clique em **Adicionar Novo** na seção **Usuários**;
3. Crie um usuário de teste com os dados que preferir, marcando sua função como `Assinante`;
4. Faça *log-off*, clicando em `Sair` no canto do menu de usuário do canto superior direito;
5. Entre com o usuário criado no painel de controle do Wordpress;
6. Na barra lateral esquerda, clique em **Tainacan** para acessar o painel Admin do Tainacan;
   - [x] Já na página inicial do plugin, verifique se estão inacessíveis:
     * Os links de Metadados e Filtros Nível Repositório;
     * Os links de Metadados, Filtros e Atividades Nível Coleção;
   - [x] Veja por outro lado se estão disponíveis:
     * Os links de Taxonomias, Atividades, Importadores e Exportadores nível repositório;
     * Os links para a Lista de Coleções e para as listas de itens de cada coleção;
7. Acesso a Lista de Itens uma das Coleções do Repositório;
   - [x] Confira se estão inacessíveis:
     * Os items privados;
     * Os links para editar ou deletar os itens;
     * Os links no menu da coleção para Metadados, Atividades, Filtros e Permissões da Coleção;
   - [x] Confirme que estão disponíveis:
     * Os filtros ao lado da lista de itens;
     * As abas de Itens Publicados, Rascunho e Lixeira;
     * As opções de controle da Busca como Ordenação e Modos de Visualização;
8. Clique em um dos Itens para acessar sua página no Admin:
   - [x] Confirme que não há link para editar o item;
   - [x] Veja se todos os dados do item estão visíveis, exceto pelas Atividades, que não devem ser listadas;         

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ':ignore') ou para o [e-mail da comunidade](mailto:tainacan@lists.riseup.net ':ignore') do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/pt-br/faq#acho-que-encontrei-um-erro-como-devo-proceder).