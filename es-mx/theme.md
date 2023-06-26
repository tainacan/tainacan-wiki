# Temas

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Uma das razões pelos quais o _WordPress_ é tão famoso e versátil é sua diversidade de [temas](https://wordpress.org/themes/ ":ignore"). São milhares de temas que podem atribuir ao seu site estilo e estrutura mais formais, chamativos ou minimalistas. A grande maioria é gratuito e está a um clique de instalação.

?> **É possível usar o plugin Tainacan com qualquer tema ativado**, porém a experiência pode ser melhor com temas que oferecem compatibilidade para suas páginas.

Nesta página falamos sobre:

- Quais são [os temas que oferecem melhor compatibilidade](#temas-compatíveis-com-o-tainacan) para o Tainacan e,
- [Como instalar e gerenciar temas](#gerir-temas-no-wordpress) no seu _WordPress_.

## Temas compatíveis com o Tainacan

Além de inserir um novo campo no seu painel administrativo do _WordPress_, onde você acessa o painel administrativo do Tainacan em si, o plugin Tainacan também gera [páginas especiais](/es-mx/tainacan-pages.md) no seu site. Se o seu tema foi pensado para apresentar estas páginas, listagens de itens e coleções serão exibidas com todas as funcionalidades de navegação do acervo como a busca de itens, filtros, diferentes formas de exibição, etc. Caso contrário, estas listagens deverão ser muito próximas da maneira como o tema exibe postagens do blog.

Desenvolver um tema compatível não é complicado e também não precisa ser feito do zero, já que muitos podem ser gerados a partir de [temas filhos](https://codex.wordpress.org/es-mx:Temas_Filhos "ingnore") de outros já existentes. Aqui na Wiki temos [uma sessão inteira](/dev/creating-compatible-themes.md) dedicada a ensinar isto para desenvolvedores.

Atualmente existe um tema desenvolvido pela comunidade do Tainacan e publicado no [repositório oficial do WordPress](https://br.wordpress.org/themes/). Os demais estão disponíveis via GitHub. Para instalar temas, acesse o painel de instalação de temas do WordPress e siga os passos na [seção de instalação](gerir-temas-no-wordpress).

### Tainacan Interface

Este é o tema padrão do projeto Tainacan e está disponível nos repos oficiais do Wordpress [neste link](https://br.wordpress.org/themes/tainacan-interface/). Foi desenvolvido pela mesma equipe de design que elaborou a interface administrativa do Tainacan plugin, por isso deve trazer a mesma formalidade, com uma boa legibilidade e layouts que suportam grandes quantidades de informações exibidas em uma mesma tela. Este tema é ideal para museus, galerias, bibliotecas e qualquer pessoa que tenha um repositório digital. Destacamos suas principais vantagens:

- Templates específicos para as listas de itens do Repositório, da Coleção e do Termo, com várias configurações incluindo:
  - Sobrescrever o modo de visualização padrão para listagens de termos;
  - Esconder diversos elementos de controle da busca;
  - Alterar comportamento da barra de filtros, como seu tamanho ou se aparece escondida de início;
- Template específico para a lista de coleções, com dois modos de visualização, busca textual e ordenação;
- Template específico para a página do item, com diversas opções, entre elas:
  - Alterar a ordem em que anexos, metadados e documento são exibidos;
  - Exibir a lista de metadados em mais de uma coluna;
  - Mostrar os anexos como um carrossel e integrar o documento nesta mesma lista;
  - Exibir um cabeçalho customizado que se assemelha ao da coleção;
  - Botão de download no Documento;
  - Exibir uma sessão de "Itens relacionados a este";
- Atualizações frequentes e em sincronia com novas versões do plugin Tainacan;
- Paleta de cores customizável;
- Cor do cabeçalho de cada coleção customizável dentro do plugin, quando o tema está ativo;
- Novo modo de visualização "Miniatura";
- Botões de compartilhar para Facebook, Twitter, WhatsApp e Telegram na maioria das páginas;
- Blocos Gutenberg padrão estilizados de acordo com a identidade visual do tema;
- Suporte a barra lateral;

![Algumas telas do Tema Tainacan Interface](/_assets/gifs/themes-tainacan-interface.gif)

### Blocksy

O segundo tema mais recomendado que mencionamos aqui não é um tema filho, mas um popular [tema disponível no repositório WordPress](https://br.wordpress.org/themes/blocksy/ ":ignore"). Sua integração com o Tainacan é possível via um plugin, também disponibilizado no [repositório do WordPress](https://br.wordpress.org/plugins/tainacan-blocksy/ ":ignore"). Tendo ambos o plugin e o tema (ou um tema filho deste) ativado, você terá a acesso a uma série de configurações disponíveis no menu Personalizar. Nós cobrimos estas opções em mais detalhes no [post de lançamento do plugin](https://tainacan.org/blog/2021/06/14/integrando-o-tema-blocksy-com-o-tainacan/ ":ignore") e vale a pena dar uma olhada na [página oficial do tema](https://creativethemes.com/blocksy/ ":ignore"). Para mencionar alguns dos seus recursos:

- Templates específicos para as listas de itens do Repositório, de Termos e configurações separadas _para cada coleção_, incluindo diversas opções como:
  - Escolher diferentes paletas de cores;
  - Esconder vários elementos da barra de controle da busca;
  - Mudar o comportamento do painel de filtros, como seu tamanho e se ele começa escondido;
  - Algumas opções extras para o layout do cabeçalho da lista;
- Template específico para a página do item, com diversas opções, dentre elas:
  - Mudar a orden em que Anexos, Documento e metadados são exibidos, incluindo a possibilidade de usar duas colunas: uma para documentos e anexos, outra para os metadados, ao lado;
  - Exibir lista de metadados em mais de uma coluna;
  - Exibir rótulo dos metadados ao lado do seus valores;
  - Mostrar anexos como um carrossel integrados ao documento na mesma lista;
  - Mostrar um cabeçalho customizado que usa a imagem de miniatura como banner;
  - Botão de download no documento;
  - Navegação de itens (próximo e anterior);
  - Sessão de Itens Relacionados baseado em uma taxonomia de escolha ou nos "Itens relacionados a este" via metadado de relacionamento;
  - Caixa de compartilhamento personalizável;
- Paleta de cor muito customizável;
- Botão de "Mais" no menu do cabeçalho quando o nuḿero de itens não cabe na tela;
- Várias outras opções de personalização do layout disponíveis pelo tema;

![Algumas telas do tema Blocksy](/_assets/gifs/themes-blocksy.gif)

### Identidade do Governo (IDG-WP)

Este tema WordPress foi desenvolvido por uma equipe de voluntários vinculados ao antigo Ministério da Cultura, com o objetivo de padronizar diversos sites WordPress utilizados pelo governo federal. Um exemplo é o próprio site da [Secretaria de Cultura](http://cultura.gov.br/ 'ignore). O [tema original](https://github.com/culturagovbr/IDG-WP ":ignore") em si não possui suporte ao Tainacan, mas com a demanda de vários museus vinculados ao Ibram para uso do mesmo, foi criado uma _fork_, uma variação do tema, em [outro repositório](https://github.com/medialab-ufg/IDG-WP ":ignore"). Infelizmente, este projeto está necessitando de mantenedores e pode apresentar alguns problemas. Destacamos suas características:

- Templates específicos para as listas de itens do Repositório, da Coleção e do Termo porém sem imagens de cabeçalhos;
- Template específico para a página do item, incluindo carrossel de anexo;
- Integração padrão com a barra de links e acessibilidade do Governo Federal;
- Suporte à maioria dos blocos gutenberg;
- Dois locais para menu: na barra principal e no painel escondido ao seu lado;
- Carrossel de notícias na página inicial;
- Customização de sessões da página inicial via plugins;

![Algumas telas do Tema IDG-WP](/_assets/gifs/themes-idg-wp.gif)

### Veganos (Tema Filho)

Criado para o projeto [Covid-19 - UnB em Ação](http://repositoriocovid19.unb.br/ ":ignore"), este é um tema filho do tema [Veganos](https://wordpress.org/themes/veganos/ ":ignore"), portanto, além de baixá-lo do seu [repositório](https://github.com/tainacan/tainacan-unb-covid-19 ":ignore") é preciso também instalar o tema pai. Sua característica mais notável é o formato "ondulado" das imagens de cabeçalho, dentre outras:

- Templates específicos para as listas de itens do Repositório, da Coleção e do Termo incluindo imagens de cabeçalho e estilizados com algumas bordas e sombras;
- Template específico para a página do item, com metadados listados antes do Documento e anexos;
- Listagem de posts em formado de blocos, em uma lista de duas colunas;
- Botões estilizados com efeito ondulado;
- Paleta de cores customizável
- Integração padrão com abarra de links e acessibilidade do Governo Federal;
- Integração com a barra de menus da UnB (caso não queira usar ela, basta puxar da [branch 'not-unb'](https://github.com/tainacan/tainacan-unb-covid-19/tree/not-unb ":ignore") do GitHub);

![Algumas telas do Tema Veganos](/_assets/gifs/themes-veganos.gif)

### Rife Free (Tema Filho)

Este é um [tema filho](https://github.com/tainacan/rife-free-child ":ignore") do popular tema [Rife Free](https://wordpress.org/themes/rife-free/ ":ignore"). Ele tem uma dependência de um plugin instalado, o [Apollo13 Framework extensions](https://apollo13themes.com/rife/free ":ignore"), mas em compensação, traz muitas opções de customização, deste o formato de páginas e posts até comportamento do cabeçalho. Outros destaques são:

- Templates específicos para as listas de itens do Repositório, da Coleção e do Termo incluindo imagens de cabeçalho;
- Template específico para a página do item, incluindo botões de próximo e anterior, que mostra a miniatura dos mesmos;
- Botão de scroll para o topo;
- Paleta de cores diversa e customizável;
- Animações e efeitos de transição;
- Listagem de posts em formado de blocos, opcionalmente em uma lista de três colunas;

![Algumas telas do Tema Rife Free](/_assets/gifs/themes-rife-free.gif)

### Twenty Twenty (Tema Filho)

Todo ano o WordPress lança um "tema oficial", que vem ativado por padrão em suas instalações e que costuma ter um design popular, com boa aplicação dos blocos gutenberg além de testes de acessibilidade e responsibidade. Criamos, para validar nossos testes com o plugin, um tema filho do [TwentyTweny](https://wordpress.org/themes/twentytwenty/ ":ignore"), disponível [neste link](https://github.com/tainacan/TwentyTwentyChild ":ignore").

![Algumas telas do Tema Twenty Twenty](/_assets/gifs/themes-twentytwenty.gif)

---

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

> Veja também como instalar o [plugin do Tainacan](/es-mx/tainacan) para WordPress.

### Atualizar o Tema

1. Acesse o Painel de Controle do _WordPress_;
2. No menu lateral esquerdo, clique em **Aparência**;
3. Selecione o submenu **Tema**;
4. No bloco de cada tema a mensagem "_Nova versão disponível. Atualizar agora_" é exibida sempre que uma nova versão é lançada;
5. Clique em **Atualizar agora** para receber a última versão estável do Tema.

### Alterar ou Excluir o Tema

1. Acesse o Painel de Controle do _WordPress_;
2. No menu lateral esquerdo, clique em Aparência;
3. Selecione o submenu Tema;
4. Para alterar o tema atual, ative outro tema de sua preferência.
5. Para excluir o tema clique em Informações do tema no bloco do tema desejado;
6. No canto inferior direito clique em Excluir.

!> **Atenção**: Para preservar as configurações e a navegabilidade dos itens e coleções, utilize temas compatíveis com as boas práticas de desenvolvimento de temas para o Tainacan.

!> **Atenção**: Desativar o tema do Tainacan afeta as configurações de exibição e navegabilidade em itens e coleções no repositório. Esta operação só poderá ser desfeita por administradores.

!> **Atenção**: por segurança, sempre é recomendado que seja feito o backup da instalação antes de qualquer modificação. Exclua o tema somente se tiver certeza de que não haverá perdas graves de informação. Esta operação só poderá ser revertida com a restauração de backups da instalação.
