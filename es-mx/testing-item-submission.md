# Testando a Submissão de Itens

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

A partir da versão 0.17 o Tainacan permite a submissão de itens em páginas públicas por usuários não logados no site. Para uma explicação detalhada sobre esta funcionalidade, leia a página [Submissão de Itens](/es-mx/item-submission.md).

## O Básico

1. Abra uma coleção;
2. Nas configurações da mesma, habilite a opção "Permitir a submissão de itens";
3. Deixe as demais configurações, como o status padrão, como estão;
4. Salve as configurações;
5. No painel administrativo do WordPress, crie uma nova página;
6. Nesta página, insira o bloco "Formulário de Submissão de Itens";
7. Configure a coleção para onde será enviada a submissão, escolhendo a coleção usada nos passos anteriores;
8. Feito isso, certifique que:
   - [x] No modal de escolha de coleções, nenhuma outra estava listada, já que apenas aquelas configuradas para "Permitir a submissão dos itens" devem estar presentes;
   - [x] Ao escolher sua coleção, todos os metadados dela devem estar listados na barra lateral do bloco, onde é possível desabilitar ou habilitar alguns , exceto pelos que são obrigatórios;
9. Publique a página e veja se o formulário foi carregado do lado público, para iniciar os testes seguintes.

## Preenchendo o formulário

1. Acesse a página do formulário publicado;
2. Preencha os campos de metadados;
3. Teste a submissão de diferentes tipos de documentos;
4. Teste opção de gerar ou não thumbnail automaticamente;
5. Teste a submissão de diferentes tipos de anexos;
   - [x] Teste aqui também a submissão de um formato de anexo inválido (por exemplo, .SVG costumam não ser aceitos por padrão) para verificar a ocorrência de erros na submissão.
6. Teste o preenchimento de campos de metadados do tipo taxonomia;
7. Teste o preenchimento inválido de campos de metadados tipo numérico ou data;
8. Teste o preenchimento de metadados do tipo relacionamento com _outra coleção_.

   - [x] Observe se todos metadados a nível de repositório e da colação foram exibidos corretamente para preenchimento;
   - [x] Observe se eventuais dicas de preenchimento, configuradas em determinados metadados, estão exibidas corretamente;
   - [x] Observe se o aviso de **preenchimento de metadados obrigatórios** funciona corretamente, ao **salvar** o item (a menos que tenha sido configurado para ser rascunho por padrão);

9. Teste o preenchimento de _metadados compostos_ que aceitam valores múltiplos. De início, o campo virá vazio, apenas com o botão de adicionar valor. Ao adicionar, surgirá o primeiro grupo de inputs com os metadados filhos

   - [x] Observe se metadados filhos marcados como obrigatórios estão gerando erros na lista de erros do formulário;
   - [x] Observe se a ordem em que os filhos aparecem é aquela que foi configurada na tela de configurações do metadado.

10. Teste a funcionalidade de _Definir o item do autor como padrão_ para metadados tipo _Usuário_. Ao se criar o item este campo deve vir preenchido.
11. Concluída a submissão, entre no painel administrativo e veja se o item foi criado no status configurado como padrão para a coleção.

## Testando outras configurações de submissão

1. Acesse novamente a página de configurações da coleção;
2. Configure o status padrão para os itens submetidos;
3. Habilite a opção de "Permitir a submissão por usuários anônimos";
4. Saia do WordPress e faça logoff do seu usuário, certificando-se de que não está logado de maneira alguma;
5. Repita o teste de preenchimento do formulário;
6. Ao logar novamente, chegue se os itens estão submetidos com o status correto;

## Testando a proteção _reCAPTCHA_

1. Nas configurações da coleção, habilite a opção "Usar verificação _reCAPTCHA_ no formulário de submissão";
2. No painel administrativo do WordPress, acesse o submenu do plugin Tainacan chamado "Submissão de Itens";
3. Insira nesta página os campos de "Chave do Site" e "Chave Secreta", gerados no formulário de [_reCAPTCHA_ da Google](https://www.google.com/recaptcha/admin/create ":ignore");
4. Salve as configurações;
5. Insira um novo bloco de submissão (apague um já existente, se for o caso), lembrando-se de selecionar como destino uma coleção cuja configuração de _reCAPTCHA_ tenha sido habilitada;
6. Preencha o formulário. No final da página deve haver uma caixa verificadora do _reCAPTCHA_. Tente submeter sem preenchê-la e depois preenchendo-a.

## Testando as configurações do bloco

1. Experimente alterar as demais opções do bloco, localizadas na barra lateral:
   1. Editar a mensagem que aparece quando a submissão é feita com sucesso;
   2. Editar os rótulos das sessões do formulário;
      - [x] Note que ao se deixar um rótulo em branco, ele simplesmente não aparece;
   3. Esconda alguns metadados não obrigatórios;
   4. Esconda alguns elementos do formulário:
      - [x] Experimente em particular a opção de não exibir os collapses;
      - [x] Observe que, se escondida mais de uma opção de tipo de documento (arquivo, texto ou url), os botões de escolher documento somem e aparece somente o input do único tipo de documento restante;
   5. Experimente alterar algumas cores e tamanho da fonte;
2. Publique a página e verifique os efeitos no bloco do formulário;

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).
