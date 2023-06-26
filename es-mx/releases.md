# Versões

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Aqui apresentamos links e detalhes sobre as versões lançadas do plugin Tainacan. Recomendamos, especialmente enquanto estamos em Beta, utilizar sempre a versão mais recente.

## Tainacan Beta 0.19

### Postagem

Post de lançamento: [https://tainacan.org/blog/2022/08/23/tainacan-beta-0-19-secao-de-metadados-bloco-de-galeria-de-midia-do-item-e-muitas-muitas-melhorias/](https://tainacan.org/blog/2022/08/23/tainacan-beta-0-19-secao-de-metadados-bloco-de-galeria-de-midia-do-item-e-muitas-muitas-melhorias/ ":ignore")

### Resumo da Versão

#### Novidades

- [Seção de Metadados](/es-mx/metadata-sections.md);
- [Bloco de Galeria de Mídias do Item](/es-mx/block-item.md#galeria-de-mídias-do-item);

#### Melhorias

- Refatoração da Busca Avançada;
- Reorganização da Tela de Edição do Item;
- Redefinição do Botão de Atualizar e Status;
- Modo de Navegação com Foco nos Metadados;
- Filtro de Metadados Obrigatórios;
- Redistribuição da Tela de Configuração da Coleção;
- Descrição e Placeholders de Metadados;
- Relacionamento entre Itens Rascunho;
- Filtros que Começam Desabilitados;
- Novo Tamanho de Imagem: `tainacan-large-full`;
- Modo de Visualização Masonry com Imagens Maiores;
- Opção de Tamanho da Imagem nos Blocos;
- Atualização das bibliotecas de carrossel e da galeria com zoom;
- Substituição da biblioteca de _tooltips_;
- Atualização da biblioteca que mostra documentos PDFs embutidos;
- Diversas melhorias na responsividade da página de edição do item para telas pequenas;
- Exibição do metadado composto dentro de relacionamentos;
- Mais destaque para o campo de texto alternativo da imagem de miniatura;
- Botão de ordenar na lista de metadados e de filtros;
- Exibição de um rótulo indicando qual dos anexos é o documento;
- Cabeçalho fixo nas listagens de Atividades, Processos e Permissões e
- Várias correções de erros.

#### Para Desenvolvedores

- Novos _hooks_ (filtros) para o [_backend_](/dev/filters.md#backend-filters) e [_frontend_](/dev/filters.md#frontend-filters);
- Novos _template tags_ para a seção de metadados;
- [Configurações](/dev/admin-ui-options.md) para se alterar o Admin;
- Form hook específico por tipos de metadados;
- Form hook no formulário de função de usuário;

### Data de Lançamento

- 23 de Agosto de 2022

---

## Tainacan Beta 0.18

### Postagem

Post de lançamento: [https://tainacan.org/blog/2021/06/07/tainacan-beta-0-18-relatorios-sobre-o-acervo-nova-galeria-de-midias-e-melhorias-na-lista-de-itens/](https://tainacan.org/blog/2021/06/07/tainacan-beta-0-18-relatorios-sobre-o-acervo-nova-galeria-de-midias-e-melhorias-na-lista-de-itens/ ":ignore")

### Resumo da Versão

#### Novidades

- Página de Relatórios do Tainacan, apresentando gráficos e informações estatísticas relativas ao acervo e a gestão do repositório;
- Novo modal de anexos com zoom e opção de mostrar título, descrição e legenda de arquivos (para ser utilizado pelos temas);
- Ícones por tipo de documento para items sem miniatura;
- Carregamento progressivo de imagens com efeito blur;
- Filtragem textual e por tipo na tela de metadados e de filtros;
- Substituir Documento de um item via importador CSV;
- Opção de limpar um item pelo importador CSV;
- Opção de adicionar um link no final do bloco de submissão de itens para o item criado;

#### Melhorias

- Opção de criar todos os metadados na tela de mapeamento do importador;
- Adiciona paginação na busca do input de checkbox, tanto no filtro quanto no metadado tipo taxonomia;
- Diversas melhorias na eficiência do importador e do exportador;
- Melhorias na aparência da tela de metadados e exibição de mais informações relevantes sem a necessidade de se abrir para edição;
- Coleções são criadas com comentários desabilitado, por padrão;
- Melhorias na exibição de embeds (e resolução de conflitos com css do WordPres);
- Melhor rótulo para status de comentários na coleção;

#### Correções de Erros

- Resolvemos diversos conflitos de css com bibliotecas externas;
- Criamos um filtro para se listar páginas onde não se queira carregar o javascript e css relacionados aos blocos do Tainacan;

### Data de Lançamento

- 07 de Junho de 2021

---

## Tainacan Beta 0.17

### Resumo da Versão

#### Novidades

- Fluxo de submissão (depósito) de itens por usuários não logados (Bloco de Submissão de Itens)
- Filtros por tipo de Documento e Miniatura;
- Filtro por Coleções mais inteligente (inclui facetas);
- Modo de Visualização Lista
- Mudar a ordem e título de anexos;
- Tipo de metadado URL embutida (por hora via plugin);
- Popup de aviso de erros em requisições do sistema;
- Botão para começar entrar no modo tela cheia a partir de um item específico;
- Opção de Barra de filtros fixa com scroll na listagem de itens (requer atualização do tema Tainacan Inferface);

#### Melhorias

- Novo input de taxonomias via checkboxes;
- Melhorias na inserção de termos novos e existentes em metadados de taxonomia;
- Melhorias na inserção de novos itens em metadados relacionamento;
- Filtros começam colapsados se não possuem valores para a faceta atual;
- Opção de direcionar links de termos para a lista de itens filtrada por certas coleções (configuração do metadado tipo taxonomia);
- Opção para nunca exibir a miniatura se sua coleção não costuma ter imagens;
- Seleção via SHIFT nas listagens de itens no admin.
- Novas opções de tamanhos das miniaturas nos itens de blocos de carrosséis;
- Temas agora podem implementar navegação item a item em suas páginas baseando-se em queries passadas ao clicar no item da lista;
- Ajustes no modo tela cheia, incluindo modal de instruções para navegação via teclado;
- Paginação nos expositores e exposição apenas de itens selecionados;
- Compatibilidade com o WordPress 5.5 (incluindo algumas adaptações dos blocos aos novos recursos);
- Descrição alternativa de miniaturas para permitir uso de tags alt (acessibilidade na listagem de itens);

#### Correções de Erros

- Fazer com que a permissão `manage_collection_x` permita alterar também as configurações da coleção, não apenas seus metadados, itens, etc;
- Erros na execução de algumas operações em massa;
- Miniaturas de capas de PDFs com transparência agora resultam em imagens de fundo branco ao invés de preto;
- Esconde o botão de "Selecionar todos os itens" quando apenas uma página existe;
- Redirecionamento do bloco de busca não estava funcionando em temas que não suportam o Tainacan;
- Evita a quebra da coleção se um tipo de metadado registrado não está mais presente;
- Metadado numérico estava entendendo o valor 0 como "vazio";
- Metadados herdados de uma coleção raiz estavam sendo criados na ordem reversa a da coleção raiz;
- Inserção de metadados relacionamento via taginput estava limitado a 100 itens e removendo alguns valores quando duplicados;
- Evita o auto-foco do modal de filtros caso este seja um painel lateral;
- Links incorporados como Twittes e Páginas no documento tipo URL estavam com uma margem enorme abaixo deles;
- Filtros de taxonomia herdados fazendo a requisição errada;
- Edição em massa para alterar status gerando erros;

### Data de Lançamento

- Meados de Novembro de 2020.

---

## Tainacan Beta 0.16.1

### Postagem

Post de lançamento: https://tainacan.org/blog/2020/05/28/tainacan-beta-0-16-1/

### Resumo da Versão

#### Melhorias

- O Importador CSV de itens agora obedece a ordem em que os metadados são passados quando usada a opção de criar metadado automaticamente;
- Evita fechar o painel de filtros com 'ESC' caso tenha sido escondido o botão de ocultar/mostrar filtros;
- Carrega o JS e CSS da lista de itens apenas uma vez (devido ao bloco gutenberg busca facetada);

#### Correções

- A edição em massa não estava funcionando opção "Substituir valores" para taxonomias;
- A remoção de valores em metadados multivalorados pela edição em massa removia valores errados quando o metadado era do tipo taxonomia;
- Corretamente desabilita os logs das atividades, para os metadados, ao execucar o importador quando estão sendo incluidos novos itens;
- A listagem de itens do termo não estava exibindo título e descrição nos modos de visualização Tabela e Fichas;
- Erro `wp.primitives is undefined` impedia o ícone dos blocos Tainacan Gutenberg de aparecer;
- Várias correções de tradução ou digitação em strings relacionadas aos novos recursos;
- Ajustes de css para os filtros e cartões que possuiam alinhamento errado no Google Chrome;

### Data de Lançamento

28 de Maio de 2020

---

## Tainacan Beta 0.16

### Postagem

Anúncio da Versão: https://tainacan.org/blog/2020/05/19/tainacan-beta-0-16-metadado-tipo-composto-e-usuario-bloco-da-busca-facetada-suporte-ao-wordpress-5-4/

### Resumo da Versão

#### Novidades

- **Metadados Compostos**;
- **Bloco de Lista de Itens** (a Busca Facetada);
- Tipo de metadado Usuário do WordPress;
- Ação de copiar valores de metadado em massa;
- Compatibilidade com WordPress 5.4;
- Popup de erros no formulário de edição do item;

#### Melhorias

- Mudanças na interface do cabeçalho de coleção: todos os ícones agora tem rótulos e uma nova cor de fundo;
- Melhor acessibilidade: escala de tamanho de fonte agora deverá ser mais proporcional entre todos os elementos: inputs, ícones, rótulos, etc;
- Scroll infinito em todos os autocompletes e entrada de etiquetas;
- Exibir não só o nome da coleção que utiliza a Taxonomia, mas também o Metadado;
- Ao se abrir um formulário de edição de metadado ou termo, a tela automaticamente faz scroll para ele.
- Ao se aproximar o mouse ao canto inferior da tela na lista de itens por um segundo, a barra de paginação aparece. Ao se aproximar do canto superior, caso esteja escondida, a barra de busca aparecerá. Ao se aplicar qualquer mudança na lista, automaticamente o scroll volta ao topo da barra de controle.
- Exibe ícone de cadeado na lista de metadados e filtros quando estes são privados.
- Formulário de Edição de Coleção melhorado: evita a configuração de páginas vazias como principal e oferece uma seleção mais inteligente dos modos de visualização.
- Mostra a data e hora para arquivos exportados.

#### Correções

- Erro com os filtros do nível repositório quando visualizados na pagina de uma coleção (em instalações com múltiplas coleções);
- ~~Metadados criados automaticamente via importador agora seguem a ordem do arquivo fonte;~~
- Blocos Gutenberg que estavam com erros ao se editar seu conteúdo via modal;
- Ao mudar de página na lista de itens e retornar a página anterior, o número da página da busca não era mantido.
- A inserção de novos termos não estava sendo bloqueada caso a configuração na taxonomia não permitisse mas a do metadado sim.
- Correção de problemas ao carregar a lista de anexos quando o documento do item é do tipo Texto ou Link.
- Funções de usuários criadas pelo Tainacan agora sempre começam com as permissões mínimas para se acessar o painel do WordPress.

#### Para Desenvolvedores

- A tão esperada re-organização da estrutura de arquivos do projeto, que agora deve estar mais clara para quem quiser contribuir com o código.
- Diversas parametrizações disponíveis para desenvolvedores de Temas que desejam fazer a Lista de Itens adaptada ao seu tema, incluindo:
  - Variáveis CSS para customização de cores, fontes e tamanhos;
  - Variáveis do template para exibir ou esconder diversos elementos, mudar o comportamento padrão de algumas áreas como o painel de filtros;
- Novo esquema para registrar tipos filtros e metadados terceiros, incluindo componentes vue sem precisar alterar o código core, apenas via plugins.

#### Data de Lançamentos

- 19 de Maio de 2020

---

## Tainacan Beta 0.15.1

### Postagem

[Tainacan Beta 0.15.1 – Importante Correção de Erro na Criação de Taxonomias](https://tainacan.org/blog/2020/02/20/tainacan-beta-0-15-1-importante-correcao-de-erro-na-criacao-de-taxonomias/)

### Resumo da Versão

#### Correção

Correção de erro ao criar uma nova taxonomia, onde os metadados que a usam tinham seus status alterados para “rascunho automático”, o que modificava completamente sua visibilidade e funcionamento em geral.

#### Data de Lançamento

20 de Fevereiro de 2020

---

## Tainacan Beta 0.15

### Postagem

[Tainacan Beta 0.15 – Permissões e Funções de Usuários, Melhor Performance e Edição em Massa Refatorada](https://tainacan.org/blog/2020/02/13/tainacan-beta-0-15-permissoes-e-funcoes-de-usuarios-melhor-performance-e-edicao-em-massa-refatorada/)

### Resumo da Versão

#### Novidades

- Novo esquema de Permissões de Usuários;
- Telas de gestão de funções de usuários e de permissões específicas do repositório ou de coleções;

#### Melhorias

- Edição em Massa executada como processo em Plano de Fundo;
- Maior eficiência nas requisições ao Banco de Dados;
- Adicionadas informações ao arquivo de registro (log) para processos de edição em massa, como o total de itens processados;
- Exibição de apenas campos especiais válidos na lista de mapeamento de metadados do importador CSV;

#### Correções

- Correção da ordem de listagem do bloco de Carrossel de Termos;
- Melhorias na segurança da API, evitando a exibição de metadados e filtros privados para usuários não logados;

#### Data de Lançamento

12 de Fevereiro de 2020
