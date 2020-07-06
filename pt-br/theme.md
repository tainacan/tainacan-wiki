# Temas

Uma das razões pelos quais o *WordPress* é tão famoso e versátil é sua diversidade de [temas](https://wordpress.org/themes/ 'ignore'). São milhares de temas que podem atribuir ao seu site estilo e estrutura mais formais, chamativos ou minimalistas. A grande maioria é gratuito e está a um clique de instalação.  

?> **É possível usar o plugin Tainacan com qualquer tema ativado**, porém a experiência pode ser melhor com temas que oferecem compatibilidade para suas páginas.

Nesta página falamos sobre:

* Quais são [os temas que oferecem melhor compatibilidade](#temas-compatíveis-com-o-tainacan) para o Tainacan e,
* [Como instalar e gerenciar temas](#gerir-temas-no-wordpress) no seu *WordPress*.

## Temas compatíveis com o Tainacan

Além de inserir um novo campo no seu painel administrativo do *WordPress*, onde você acessa o painel administrativo do Tainacan em si, o plugin Tainacan também gera [páginas especiais](/pt-br/tainacan-pages.md) no seu site. Se o seu tema foi pensado para apresentar estas páginas, listagens de itens e coleções serão exibidas com todas as funcionalidades de navegação do acervo como a busca de itens, filtros, diferentes formas de exibição, etc. Caso contrário, estas listagens deverão ser muito próximas da maneira como o tema exibe postagens do blog.

Desenvolver um tema compatível não é complicado e também não precisa ser feito do zero, já que muitos podem ser gerados a partir de [temas filhos](https://codex.wordpress.org/pt-br:Temas_Filhos 'ingnore') de outros já existentes. Aqui na Wiki temos [uma sessão inteira](/dev/creating-compatible-themes.md) dedicada a ensinar isto para desenvolvedores.

Atualmente existe um tema desenvolvido pela comunidade do Tainacan e publicado no [repositório oficial do WordPress](https://br.wordpress.org/themes/). Os demais estão disponíveis via GitHub. Para instalar temas, acesse o painel de instalação de temas do WordPress e siga os passos na [seção de instalação](gerir-temas-no-wordpress).

### Tainacan Interface

Este é o tema padrão do projeto Tainacan e está disponível nos repos oficiais do Wordpress [neste link](https://br.wordpress.org/themes/tainacan-interface/). Foi desenvolvido pela mesma equipe de design que elaborou a interface administrativa do Tainacan plugin, por isso deve trazer a mesma formalidade, com uma boa legibilidade e layouts que suportam grandes quantidades de informações exibidas em uma mesma tela. Este tema é ideal para museus, galerias, bibliotecas e qualquer pessoa que tenha um repositório digital. Destacamos suas principais vantagens:

* Templates específicos para as listas de itens do Repositório, da Coleção e do Termo, com várias configurações incluindo:
  * Sobrescrever o modo de visualização padrão para listagens de termos;
  * Esconder diversos elementos de controle da busca;
  * Alterar comportamento da barra de filtros, como seu tamanho ou se aparece escondida de início;
* Template específico para a lista de coleções, com dois modos de visualização, busca textual e ordenação;
* Template específico para a página do item, com diversas opções, entre elas:
  * Alterar a ordem em que anexos, metadados e documento são exibidos;
  * Exibir a lista de metadados em mais de uma coluna;
  * Mostrar os anexos como um carrossel e integrar o documento nesta mesma lista;
  * Exibir um cabeçalho customizado que se assemelha ao da coleção;
  * Botão de download no Documento;
* Atualizações frequentes e em sincronia com novas versões do plugin Tainacan;
* Paleta de cores customizável;
* Cor do cabeçalho de cada coleção customizável dentro do plugin, quando o tema está ativo;
* Novo modo de visualização "Miniatura";
* Botões de compartilhar para Facebook, Twitter, WhatsApp e Telegram na maioria das páginas;
* Blocos Gutenberg padrão estilizados de acordo com a identidade visual do tema;
* Suporte a barra lateral;

![Algumas telas do Tema Tainacan Interface](/_assets/gifs/themes-tainacan-interface.gif)

### Identidade do Governo (IDG-WP)

Este tema WordPress foi desenvolvido por uma equipe de voluntários vinculados ao antigo Ministério da Cultura, com o objetivo de padronizar diversos sites WordPress utilizados pelo governo federal. Um exemplo é o próprio site da [Secretaria de Cultura](http://cultura.gov.br/ 'ignore). O [tema original](https://github.com/culturagovbr/IDG-WP 'ignore') em si não possui suporte ao Tainacan, mas com a demanda de vários museus vinculados ao Ibram para uso do mesmo, foi criado um *fork*, uma variação do tema, em [outro repositório](https://github.com/medialab-ufg/IDG-WP 'ignore'). Infelizmente, este projeto está necessitando de mantenedores. Destacamos suas características:

* Templates específicos para as listas de itens do Repositório, da Coleção e do Termo porém sem imagens de cabeçalhos;
* Template específico para a página do item, incluindo carrossel de anexo;
* Integração padrão com a barra de links e acessibilidade do Governo Federal;
* Suporte à maioria dos blocos gutenberg;
* Dois locais para menu: na barra principal e no painel escondido ao seu lado;
* Carrossel de notícias na página inicial;
* Customização de sessões da página inicial via plugins;

![Algumas telas do Tema IDG-WP](/_assets/gifs/themes-idg-wp.gif)

### Veganos (Tema Filho)

### Rife Free (Tema Filho)

### Twenty Twenty (Tema Filho)

-----

## Gerir Temas no WordPress

### Vídeo Tutorial: Instalação de Temas

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/oEl9bWe_rWI?start=780"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> Veja também como instalar o [plugin do Tainacan](/pt-br/tainacan) para WordPress.

### Atualizar o Tema

1. Acesse o Painel de Controle do *WordPress*;
2. No menu lateral esquerdo, clique em **Aparência**;
3. Selecione o submenu **Tema**;
4. No bloco de cada tema a mensagem "*Nova versão disponível. Atualizar agora*" é exibida sempre que uma nova versão é lançada;
  1. Clique em **Atualizar agora** para receber a última versão estável do Tema.

### Alterar ou Excluir o Tema

1. Acesse o Painel de Controle do *WordPress*;
2. No menu lateral esquerdo, clique em Aparência;
3. Selecione o submenu Tema;
  1. Para alterar o tema atual, ative outro tema de sua preferência.
4. Para excluir o tema clique em Informações do tema no bloco do tema desejado;
  1. No canto inferior direito clique em Excluir.

  !> **Atenção**: Para preservar as configurações e a navegabilidade dos itens e coleções, utilize temas compatíveis com as boas práticas de desenvolvimento de temas para o Tainacan.

  !> **Atenção**: Desativar o tema do Tainacan afeta as configurações de exibição e navegabilidade em itens e coleções no repositório. Esta operação só poderá ser desfeita por administradores.

  !> **Atenção**: por segurança, sempre é recomendado que seja feito o backup da instalação antes de qualquer modificação. Exclua o tema somente se tiver certeza de que não haverá perdas graves de informação. Esta operação só poderá ser revertida com a restauração de backups da instalação.