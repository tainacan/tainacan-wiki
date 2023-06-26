# Testando Blocos Gutenberg

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Há vários blocos gutenberg oferecidos pelo Tainacan, os quais estão documentados mais em detalhes [aqui](es-mx/../gutenberg-blocks.md). O teste à seguir deve ser feito para cada bloco exitente, seguindo esta documentação como recomendação do que se esperar. Recomendamos testar não só adicionar novos blocos como abrir páginas que já possuiam blocos antes da atualização, para verificar se de uma versão para a outra, nada foi quebrado.

## O Básico

1. Vá para a painel administrativo do WordPress;
2. Crie um post ou página nova, acessando o editor de blocos WordPress;
3. Neste post, insira algum dos blocos Gutenberg do Tainacan;
4. Escolha a fonte de informações do bloco, em geral é o botão que aparece ao centro do bloco;
5. Aplique diferentes configurações disponíveis na documentação do bloco;
6. Se possível, troque as opções de alinhamento do bloco (alinhamento completo, amplo, centralizado...);
7. Se permitido, insira mais de um bloco do mesmo tipo, com diferentes configurações;
8. Visualize estas alterações na página publicada;
9. Volte para o editor e troque a fonte de informações ou configurações. Salve, publique e veja os resultados.

## Dados Dinâmicos em Blocos

A maioria dos blocos Gutenberg são "dinâmicos", o que significa que suas informações são atualizadas via API. A exceção são os três primeiros blocos criados (Lista de Itens, Lista de Coleções, Lista de Termos). Uma maneira de se testar isso é, além de usar o bloco como descrito acima, atualizar os dados no Tainacan e verificar se estão sendo refletidos no bloco. Por exemplo:

1. Crie um bloco de Lista de Itens da Coleção;
2. Configure a busca aplicando filtros;
3. Publique o post;
4. Vá para o Tainacan, altere a lista de itens de maneira que a busca configurada anteriormente resulte em algo diferente;
5. Acesse novamente o post publicado, verifique se a mudança está refletida no bloco;

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).
