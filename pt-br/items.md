<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Itens" 
		src="/_assets/images/icon_items.png"
		width="42"
		height="42">
</div>

# Itens

Os **itens** são o verdadeiro conteúdo do repositório. A *pintura*, o *filme*, o *livro* e assim por diante. Estes itens são da uma coleção e possuem todos os metadados configurados à **coleção** a qual pertencem.

> Na linguagem do *WordPress*, cada item é um **post** e seu tipo de postagem representa sua **coleção**.

O **Item** é o conjunto de um documento (*mídia*, *texto* ou *URL*), seus metadados e também eventuais documentos em anexo.

Um item sempre pertencerá a uma determinada coleção e, durante seu envio serão preenchidos os metadados herdados pelo repositório ou coleção acima e também os metadados configurados na coleção a qual irá pertencer.

<!-- tabs:start -->

#### ** Criar **
## Criar Itens

### Vídeo Tutorial: Criação de Itens

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/spf9qfmXU3U?start=16"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em Tainacan;
3. Na seção **Coleções**, clique na coleção desejada;
4. Clique em `adicionar novo` no canto superior esquerdo.
  * Clique em `adicionar um item` para enviar apenas um item
  * Ou clique em `adicionar itens em massa` para adicionar itens em lote. (Consulte [Ações em Massa](/pt-br/bulk-edition) para saber mais)
  * Ou clique em `importar itens` para adicionar um grande lote de itens (Consulte [Ações em Massa](/pt-br/bulk-edition) para saber mais)
5. Escolha o tipo de mídia que irá compor o Item:
  * **Arquivo**: faça o upload de arquivos multimídia como *Imagens*, *Áudios*, *Arquivos de Texto*, *Vídeos*, etc. (Consulte [este artigo](https://imasters.com.br/back-end/como-incorporar-arquivos-de-audio-e-video-no-wordpress) sobre a compatibilidade de arquivos do WordPress)
    * Selecione o arquivo da *biblioteca de mídia* ou faça o *Upload* a partir do seu computador;
  * **Texto simples**: Um campo para inserção de texto sem formatação;
  * **URL**: permite a incorporação de links (*embed*) multimídia de vários sites (como *YouTube*, *Vimeo*, etc.);
6. Determine a privacidade do item nas opções de visibilidade:
  * **Visível para todos**: o item será visualizado por todos (A depender dos parâmetros de privacidade da coleção);
  * **Visível apenas para editores**: visível apenas para editores da coleção. (Consulte [Permissões de Usuários](/pt-br/users) para saber mais);
7. Defina uma miniatura para o item;
  1. Clique no ícone **lápis** no quadrado que ilustra a miniatura;
  2. Selecione o arquivo da *biblioteca de mídia* ou faça o *Upload* a partir do seu computador:
    * Alguns tipos de documento como arquivos em *.pdf*, imagens, vídeos, URLs, etc. geram sua própria miniatura automaticamente.
    * Mesmo nestes casos é possível alterar a miniatura normalmente.
8. Defina se o item poderá receber comentários:
  * Os comentários podem ser geridos na seção de comentários do *painel do WordPress* (saiba mais na [documentação do WordPress](https://codex.wordpress.org/pt-br:Painel_Coment%C3%A1rios)).
9. Preencha os campos disponíveis na seção de metadados:
  1. Cada coleção oferecerá um conjunto de metadados para preenchimento de acordo com as configurações de metadados do repositório e da coleção (Consulte [Metadados](/pt-br/metadata) e [Coleções](/pt-br/collections) para saber mais) .
  2. Metadados configurados como **obrigatórios** não permitirão que o item seja salvo como *rascunho* ou *publicado* caso não estejam preenchidos. (Consulte [Metadados](/pt-br/metadata) e [Coleções](/pt-br/collections) para saber mais)
10. Para concluir a criação do item escolha:
  * `Salvar como Rascunho`: O item não será publicado na coleção, mas ficará salvo na coleção como **Rascunho**.
  * `Publicar`: O item será publicado na coleção.
  * `Descartar`: para cancelar a criação do item.

#### ** Editar **
## Editar Itens

1. Acesse o painel de controle do WordPress;
2. Na barra lateral esquerda, clique em Tainacan;
3. Na seção **coleções**, clique na na coleção desejada;
4. Na listagem de **itens** selecione o item que deseja editar;
5. O item será exibido junto com suas respectivas informações:
6. Selecione `Editar Item` para modificar suas informações;
  * Ou selecione `Ver Item` para visualizar o item no tema do seu site;
7. Todos parâmetros do **Item** podem ser alterados, inclusive o tipo de documento que o compõe.
  * Itens **não** podem ser migrados de uma coleção para outra.
8. Para concluir a edição do item escolha:
  * `Enviar para a lixeira`: para excluir o item e suas informações;
  * `Voltar para rascunho`: para transformar o item em um rascunho;
  * `Atualizar`: para salvar as alterações.

#### ** Excluir **
## Excluir Itens

1. Acesse o painel de controle do *WordPress*
2. Na barra lateral esquerda, clique em Tainacan;
3. Na seção de **Coleções**, clique na na coleção desejada;
4. Na listagem de itens clique no ícone de lixeira à direita do item que deseja excluir;    

  !> **Atenção**: a exclusão do item implica também na exclusão do documento, informações nos metadados e anexos. Esta operação só poderá ser desfeita por administradores. (Consulte [Registro de atividades para](/pt-br/activities) para saber mais)

  !> Atenção: Exclua o item somente se tiver certeza de que não haverá perdas graves de informação (Consulte [Registro de atividades para](/pt-br/activities) saber mais).

<!-- tabs:end -->