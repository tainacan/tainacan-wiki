# Versões

Aqui apresentamos links e detalhes sobre as versões lançadas do plugin Tainacan. Recomendamos, especialmente enquanto estamos em Beta, utilizar sempre a versão mais recente.

## Tainacan Beta 0.16 (em desenvolvimento)

### Postagem

Em desenvolvimento.

### Resumo da Versão (o que é esperado)

#### Novidades

* **Metadados Compostos**;
* **Bloco de Lista de Itens** (a Busca Facetada);
* Tipo de metadado Usuário do WordPress;
* Ação de copiar valores de metadado em massa;
* Compatibilidade com WordPress 5.4 .

#### Melhorias

* Melhor acessibilidade: escala de tamanho de fonte agora deverá ser mais proporcional entre todos os elementos: inputs, ícones, rótulos, etc;
* Scroll infinito em todos os autocompletes e entrada de etiquetas;
* Exibir não só o nome da coleção que utiliza a Taxonomia, mas também o Metadado;
* Ao se abrir um formulário de edição de metadado ou termo, a tela automaticamente faz scroll para ele.
* Ao se aproximar o mouse ao canto inferior da tela na lista de itens por um segundo, a barra de paginação aparece. Ao se aproximar do canto superior, caso esteja escondida, a barra de busca aparecerá. Ao se aplicar qualquer mudança na lista, automaticamente o scroll volta ao topo da barra de controle.
* Exibe ícone de cadeado na lista de metadados e filtros quando estes são privados.
* Formulário de Edição de Coleção melhorado: evita a configuração de páginas vazias como principal e oferece uma seleção mais inteligente dos modos de visualização.
* Mostra a data e hora para arquivos exportados.

#### Correções
* Erro com os filtros do nível repositório quando visualizados na pagina de uma coleção (em instalações com múltiplas coleções); 
* ~~Metadados criados automaticamente via importador agora seguem a ordem do arquivo fonte;~~
* Blocos Gutenberg que estavam com erros ao se editar seu conteúdo via modal;
* Ao mudar de página na lista de itens e retornar a página anterior, o número da página da busca não era mantido.
* A inserção de novos termos não estava sendo bloqueada caso a configuração na taxonomia não permitisse mas a do metadado sim.
* Correção de problemas ao carregar a lista de anexos quando o documento do item é do tipo Texto ou Link.
* Funções de usuários criadas pelo Tainacan agora sempre começam com as permissões mínimas para se acessar o painel do WordPress.

#### Para Desenvolvedores

* A tão esperada re-organização da estrutura de arquivos do projeto, que agora deve estar mais clara para quem quiser contribuir com o código.
* Diversas parametrizações disponíveis para desenvolvedores de Temas que desejam fazer a Lista de Itens adaptada ao seu tema, incluindo:
    * Variáveis CSS para customização de cores, fontes e tamanhos;
    * Variáveis do template para exibir ou esconder diversos elementos, mudar o comportamento padrão de algumas áreas como o painel de filtros;
* Novo esquema para registrar tipos filtros e metadados terceiros, incluindo componentes vue sem precisar alterar o código core, apenas via plugins.

#### Data Prevista

* Final de Abril

----

## Tainacan Beta 0.15.1

### Postagem

[Tainacan Beta 0.15.1 – Importante Correção de Erro na Criação de Taxonomias](https://tainacan.org/blog/2020/02/20/tainacan-beta-0-15-1-importante-correcao-de-erro-na-criacao-de-taxonomias/)

### Resumo da Versão

#### Correção

Correção de erro ao criar uma nova taxonomia, onde os metadados que a usam tinham seus status alterados para “rascunho automático”, o que modificava completamente sua visibilidade e funcionamento em geral.

#### Data de Lançamento

20 de Fevereiro de 2020

----

## Tainacan Beta 0.15

### Postagem

[Tainacan Beta 0.15 – Permissões e Funções de Usuários, Melhor Performance e Edição em Massa Refatorada](https://tainacan.org/blog/2020/02/13/tainacan-beta-0-15-permissoes-e-funcoes-de-usuarios-melhor-performance-e-edicao-em-massa-refatorada/)

### Resumo da Versão

#### Novidades

* Novo esquema de Permissões de Usuários;
* Telas de gestão de funções de usuários e de permissões específicas do repositório ou de coleções;
  
#### Melhorias

* Edição em Massa executada como processo em Plano de Fundo;
* Maior eficiência nas requisições ao Banco de Dados;
* Adicionadas informações ao arquivo de registro (log) para processos de edição em massa, como o total de itens processados;
* Exibição de apenas campos especiais válidos na lista de mapeamento de metadados do importador CSV;

#### Correções

* Correção da ordem de listagem do bloco de Carrossel de Termos;
* Melhorias na segurança da API, evitando a exibição de metadados e filtros privados para usuários não logados;

#### Data de Lançamento

12 de Fevereiro de 2020




