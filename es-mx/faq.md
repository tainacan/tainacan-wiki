# Perguntas

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Listamos e respondemos as perguntas mais frequentes feitas pela nossa comunidade:

> Para participar da comunidade do Tainacan [inscreva-se aqui](https://tainacan.discourse.group)!

Pule pra alguma sessão específica:

- [O Tainacan](#o-tainacan)
- [Suporte](#erros-e-suporte)
- [Instalação e Hospedagem](#instalação-e-hospedagem)
- [Menus, Páginas e Blocos](#menus-páginas-e-blocos)

---

## O Tainacan

### O que significa Tainacan?

O nome _Tainacan_ faz alusão à lenda indígena do deus das constelações, trazendo a percepção da dimensão do espaço e de suas múltiplas possibilidades de conexões.

O software livre Tainacan é desenvolvido a partir de resultados de pesquisas científicas e da experiência com a implementação em instituições parceiras, sendo uma ferramenta flexível e poderosa para WordPress, que permite a gestão e a publicação de coleções digitais com a mesma facilidade de se publicar posts em blogs, mas mantendo todos os requisitos de uma plataforma profissional para repositórios.

### Quem desenvolve o Tainacan?

Somos uma rede de pesquisadores e desenvolvedores que une o conhecimento científico e a implementação de soluções tecnológicas em instituições culturais.

Atualmente nossa rede reúne pesquisadores da Universidade de Brasília (UnB), Universidade Federal de Goiás (UFG) e Instituto Brasileiro de Informação em Ciência e Tecnologia (IBICT) e também nossa desenvolvedores e usuários da nossa comunidade do Tainacan [(inscreva-se aqui)](https://tainacan.discourse.group).

### Por que o Tainacan é um software livre?

Seu objetivo principal é ajudar instituições culturais a organizarem, publicarem e difundirem suas coleções. Ele também pode ser usado para construção de repositórios individuais ou coletivos, para qualquer finalidade, e opera de forma integrada à plataforma WordPress.

---

## Erros e Suporte

### Acho que encontrei um erro. Como devo proceder?

Estamos sempre a disposição no [fórum de discussão do Tainacan](https://tainacan.discourse.group), onde podem ser iniciadas conversas e no [github do projeto](https://github.com/tainacan/tainacan), onde podem ser reportadas _issues_ mais técnicas. Caso você comece uma conversa na lista, recomendamos dar sempre o máximo de detalhes para que possa ajudar a identificar o que está ocorrendo. Algumas sugestões, são:

- Descrever passo a passo o que está sendo feito, o que ocorre e o que era esperado;
- Verificar e se possível nos mandar as informações da [Página de Diagnóstico do Sistema](/es-mx/optimization?id=diagnóstico-do-sistema);
- Caso possua acesso ao servidor, nos mandar os Logs - [Veja como aqui](#como-acho-os-logs-do-meu-servidor);
- Nos mandar informações de rede e console no navegador - [Veja como aqui](#como-vejo-erros-de-rede-ou-no-console-do-navegador);
- Se possuir links para testes, melhor ainda!

#### Como acho os logs de erro do meu servidor?

Alguns erros gerados no banco de dados ou operações do lado do servidor podem ser identificados acessando seus logs. Se você tem acesso ao servidor, enviar estes logs para os desenvolvedores pode ser de ajuda. A localização deles varia de instalação. Em servidores _apache_, é comum encontrar logs nestes caminhos:

- `/var/log/apache2/error.log`;
- `/var/log/apache/error.log`;

#### Como vejo erros de rede ou no console do navegador?

Alguns erros podem ser reportados no navegador ao invés do servidor. Isso acontece em situações onde a tela fica presa em algum estado de carregamento infinito, por exemplo. Nesta situação, pode ser útil aos desenvolvedores, saber informações do painel de `rede` ou do `console` do seu navegador, que fazem parte do painel desenvolvedor.

- No Firefox, acesse o painel de Redes com o atalho <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>E</kbd> e o Console com o atalho <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>K</kbd>. Outra opção é clicar com o botão direito na página, ir na opção "Inspecionar" e de lá procurar as abas de Rede e de Console;
- No Google Chrome, acesse o painel de desenvolvedor com o atalho <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>I</kbd> ou clicando com o botão direito na página e indo em "Inspecionar". De lá procure as abas de Rede e de Console.

Na **aba de console**, erros em geral são listados com destaque, em vermelho. Na **aba de rede**, haverá sempre uma lista de várias requisições. Aquelas que podem ter problema em geral são apresentadas em vermelho ou com códigos `404`, `401`, `500`, logo de início. Às vezes, pode ser necessário clicar em uma requisição desta lista para se saber mais informações, como a resposta da mesma. Saber destas informações podem ajudar o desenvolvedor a identificar o problema. Se possível, faça uma captura de tela mostrando o conteúdo destas telas, incluindo informações escondidas por scroll. Se é um erro que acontece logo ao se entrar na página ou se clicar em algum botão, tente repetir a ação com esta tela aberta, para se ter certeza de que foi registrada ali.

### Estou recebendo erros 404 ou páginas em branco ao acessar minha coleção no site...

Em algumas situações particulares como ao fazer uma migração de site, iniciar uma instalação nova ou atualizar um plugin, pode surgir a necessidade de se atualizar a estrutura de _permalinks_ (links permanentes) do WordPress. Os _permalinks_ são os endereços como nomes específicos que são passados na URL do seu site WordPress para acessar um conteúdo. Se ao tentar acessar uma coleção que já existia previamente, ou se algumas das [requisições feitas pelo seu site](#como-vejo-erros-de-rede-ou-no-console-do-navegador) estão retornando 404 mesmo com conexão à internet, é possível que seu site precise de remontar a lista de _permalinks_ dele. Este erro é difícil de ser detectado (por isso não conseguimos reportá-lo bem no [Diagnóstico do Sistema](/es-mx/optimization?id=diagnóstico-do-sistema)) mas felizmente é muito simples de ser resolvido!

Basta fazer o seguinte: Acesse o painel administrativo do WordPress e vá para o menu lateral em **"Configurações" -> "Links Permanentes"**. Lá, tenha certeza de que a opção marcada é a de **Nome do Post** ou pelo menos de **Estrutura Customizada** que tenha valor _/%postname%/_. Verificado isso, clique em **Salvar alterações** (é importante clicar mesmo que as configurações não tenham sido alteradas). Recarregue o site e veja se consegue acessar o conteúdo em questão.

### Não estou conseguindo fazer upload de arquivos. O que faço?

Cheque na [Página de Diagnóstico do Sistema](/es-mx/optimization?id=diagnóstico-do-sistema) se a pasta de `uploads` do seu servidor está com permissões de escrita. Caso não esteja, é preciso corrigir isso, atribuindo permissões de leitura e escrita para o usuário de acesso ao servidor (geralmente o `www-data`).

Caso mesmo assim não funcione, entre em contato na lista para analisarmos. Você consegue subir arquivos para o WordPress mas não consegue para o Tainacan? Qual formato do arquivo que está tentando subir? São algumas informações que podem ajudar a começarmos.

Outras questões à respeito podem ser encontradas [aqui](/optimization#blindando-o-wordpress).

### Ocorreu algum erro no processo de importação ou exportação de itens. O que fazer?

Em geral, erros de processos como importadores e exportadores são gravados em um arquivo de log que pode ser acessado pela própria interface administrativa do Tainacan. Na lista de Processos, abra o processo que deu erro e baixe o arquivo de log. Envie este para ser analisado por quem puder ajudar.

### Sinto que minha instalação está demorando muito para carregar os itens... tem como melhorar?

Se sua coleção é pequena e simples, então é bem capaz que há algum problema ocorrendo e pode ser discutido no fórum de suporte. Já se sua base tem milhares de itens, com dezenas de metadados, então as razões para lentidões podem ter relação com o servidor ou com as configurações de busca atuais. Sugerimos uma leitura detalhada [desta página](#/optimization) que vai te guiar por algumas opções em questão de performance.

---

## Instalação e Hospedagem

### Qual a diferença entre wp.com e wp.org?

O wp.com ou [wordpress.com](https://br.wordpress.com ":ignore") é uma plataforma de hospedagem, entre as várias existentes que oferecem instalações e servidores prontos com o WordPress. O wp.org, ou [wordpress.org](https://br.wordpress.org ":ignore") é o site oficial do software livre WordPress, de onde se encontram informações de instalação, a documentação, links da comunidade, eventos... e entre estas coisas também opções de hospedagem. Mas seu objetivo principal é fornecer a ferramenta que pode ser usada por qualquer um para construir sites em qualquer serviço de hospedagem.

### Posso usar o Tainacan no meu blog do wordpress.com?

Sim! Mas infelizmente o [plano gratuito](https://br.wordpress.com/pricing/ ":ignore") do _wordpress.com_ não te permitirá instalar plugins. Para isso você precisa usar um plano pago que eles oferecem. Lembre-se que esta não é a única maneira nem opção de se hospedar sites WordPress!

### É possível instalar o Tainacan no meu próprio computador?

Sim. Mas é bom deixar claro, **o Tainacan é um plugin para uma plataforma de sites**. Sua função não é bem a de um programa que você abre e fecha! Instalações _locais_ - como chamamos quando você configura em seu próprio computador - são úteis para desenvolvedores que querem contribuir ou apenas para quem quer fazer testes antes de mandar para um servidor, onde de fato o site ficará hospedado na web e online 24 horas por dia. Para configurar uma instalação do WordPress pronta para o Tainacan, dê uma olhada em [nossos tutoriais de instalação](/es-mx/instalacao)!

### Então, quais opções tenho para hospedar meu repositório?

Boa pergunta! Discutimos isso em mais detalhes na nossa página de [Hospedagem](/es-mx/hosting).

---

## Menus, Páginas e Blocos

### É possível inserir itens do Tainacan em postagens no WordPress?

Sim, é possível! Para adicionar itens do Tainacan em uma postagem do WordPress (a partir da versão 5.0) crie um [bloco Gutenberg do Tainacan](/es-mx/gutenberg-blocks) pelo editor de texto. Ao inserir um bloco, pode-se pesquisar por Tainacan que será possível ver quais tipos de blocos do Tainacan existem.

### Como vejo a lista de coleções no tema?

A lista de coleções é uma das [Páginas Especiais](/es-mx/tainacan-pages) que o Tainacan insere. Basta adicionar `/colecoes` ou `collections` à URL do seu site.

### Como coloco a lista de coleções no menu do meu site?

Basta ir na barra superior em **Personalizar** > **Menus** > **Selecionar o Menu Principal** > **Adicionar Itens**. Dalí, além de outros links customizados, você pode escolher **"Repositório de Coleções"** para mostrar sua lista de coleções ou selecionar qualquer outra coleção ou termo de taxonomia.

### Como posso fazer a página inicial do meu site ser a lista de coleções?

Por padrão, a página inicial do seu site será a lista de posts do seu blog. Para configurar uma página inicial customizada, deve-se ir no menu superior em **Personalizar** > **Configurações da página inicial** > **Uma página estática** e escolher a página. Entretanto, por ser uma [página especial](/es-mx/tainacan-pages) criada pelo plugin, a página padrão da lista de coleções não está listada como opção. A solução é criar uma página e listar as suas coleções nela, usando algum dos [Blocos de Coleções](/es-mx/blocks-collections.md).

### E se eu quiser que outras pessoas colaborem com meu acervo?

Como administrador do seu site, é possível cadastrar novos usuário com diferentes [papéis e permissões](/es-mx/users-roles) para editar seu acervo. Se no entanto você quer que possam ser inseridos itens sem o cadastro de novos usuários no sistema, pode criar um [Formulário de Submissão de itens](/es-mx/item-submission) público, para receber contribuições externas diretas no seu repositório.

> Para participar da comunidade do Tainacan [inscreva-se aqui](https://tainacan.discourse.group)!
