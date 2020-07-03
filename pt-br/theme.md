# Temas

Uma das razões pelos quais o *WordPress* é tão famoso e versátil é sua diversidade de [temas](https://wordpress.org/themes/ 'ignore'). São milhares de temas que podem atribuir ao seu site estilo e estrutura mais formais, chamativos ou minimalistas. A grande maioria é gratuito e está a um clique de instalação.  

?> **É possível usar o plugin Tainacan com qualquer tema ativado**, porém a experiência pode ser melhor com temas que oferecem compatibilidade para suas páginas.

Nesta página falamos sobre:

* Quais são [os temas que oferecem melhor compatibilidade](#temas-compatíveis-com-o-tainacan) para o Tainacan e,
* [Como instalar e gerenciar temas](#gerir-temas-no-wordpress) no seu *WordPress*.

## Temas compatíveis com o Tainacan

Além de inserir um novo campo no seu painel administrativo do *WordPress*, onde você acessa o painel administrativo do Tainacan em si, o plugin Tainacan também gera [páginas especiais](/pt-br/tainacan-pages.md) no seu site. Se o seu tema foi pensado para apresentar estas páginas, listagens de itens e coleções serão exibidos com todas as funcionalidades de navegação do acervo como a busca de itens, filtros, diferentes formas de exibição, etc. Caso contrário, estas listagens deverão ser muito próximas a maneira como o tema exibe postagens do blog.

Desenvolver um tema compatível não é complicado e também não precisa ser feito do zero, já que muitos podem ser gerados a partir de [temas filhos](https://codex.wordpress.org/pt-br:Temas_Filhos 'ingnore') de outros já existentes. Aqui na Wiki temos [uma sessão inteira](/dev/creating-compatible-themes.md) dedicada a ensinar isto para desenvolvedores.

Atualmente existe um tema desenvolvido pela comunidade do Tainacan e publicado no [repositório oficial do WordPress](https://br.wordpress.org/themes/). Para instalar temas compatíveis com a exibição de itens do Tainacan, acesse o painel de instalação de temas do WordPress e siga os passos na seção abaixo:

### Temas da comunidade Tainacan

* [Tainacan Interface](https://br.wordpress.org/themes/tainacan-interface/): Este é o tema padrão do projeto Tainacan. Use em conjunto com o plugin do Tainacan para gerenciar e publicar facilmente suas coleções digitais com uma bela interface de pesquisa facetada. Este tema é ideal para museus, galerias, bibliotecas e qualquer pessoa que tenha um repositório digital.

Outros temas compatíveis com os modos de visualização e navegação do Tainacan também podem ser desenvolvidos, consulte a documentação para desenvolvimento de [temas compatíveis](/dev/custom-templates). 

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