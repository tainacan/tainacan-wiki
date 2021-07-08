# Otimização

## Orientações para otimização do Tainacan

Esta página reúne dicas e configurações para **otimizar a performance** do Tainacan em seu servidor.

Algumas coisas podem ser feitas diretamente pelo painel administrativo do **WordPress**, e outras ações podem envolver edição de _arquivos de configuração e acesso a configurações no seu servidor_, também pode ser necessário conhecimento técnico mais avançado ou contato com o administrador do servidor da instalação.

---

## Diagnóstico do Sistema

A partir da versão [0.8](https://wordpress.org/plugins/tainacan/%7C) do plugin do Tainacan para _WordPress_ foi implementada uma seção para a realização automática de um _diagnóstico_ da sua instalação.

1. Acesse o _painel administrativo_ do WordPress;
2. No menu lateral esquerdo, **passe** o _mouse_ sobre Tainacan;
3. Selecione o submenu **Diagnóstico do Sistema**;

Esta tela exibe as seguintes informações:

- **Versão do WordPress**: Retorna informações sobre a sua versão _instalada_ do **WordPress** em comparação com a versão mais recente disponível.
- **Versão PHP**: Retorna informações sobre a sua versão _instalada_ do **PHP** em comparação com a versão mais recente disponível.
- **Versão da base de dados**: Retorna informações sobre a sua versão _instalada_ do **Banco de Dados** em comparação com a versão mais recente disponível.
- **Módulos PHP**: Retorna informações sobre os módulos obrigatórios e recomendados para o funcionamento adequado do Tainacan.
- **Tempo máximo de execução do PHP**: Retorna o _valor atual_ e o _recomendado_ para a execução de processos.
- **Estrutura de Links Permanentes**: Retorna se a estrutura de _Links Permanentes_ está **habilitada** ou não.
- **Pasta de Upload**: Retorna se a _pasta para envio de mídia_ está **gravável** ou não.
- **Tamanho máximo do upload de arquivos**: Retorna o **tamanho máximo** de arquivos permitido para _upload_ na instalação.
- **Cron**: Retorna a **existência** ou _ausência_ de **tarefas agendadas** de _backup_ da instalação.

Os resultados são acompanhados de um pequeno retorno visual (▇) à esquerda em que as cores indicam:

- <span style="color: #a23939">▇</span> - Parâmetro **incorreto** para funcionamento adequado;
- <span style="color: #e69810">▇</span> - Parâmetro **parcialmente suficiente**, com ajustes possíveis;
- <span style="color: #25a189">▇</span> - Parâmetro **adequado**!

Em caso de dúvidas ou sugestões inscreva-se na [comunidade do Tainacan](https://tainacan.discourse.group)!

### Permissões do Módulo Imagick (Não está gerando miniaturas a partir de arquivos PDF)

O módulo Imagick é utilizado para extrair a primeira página de arquivos PDFs enviados ao servidor para gerar miniaturas automáticas. Se ele não estiver presente, o Diagnóstico de Sistema irá avisar.

Contudo, devido a mudanças recentes no pacote Imagick, em alguns casos ele vem configurado para não ter permissão para abrir e ler arquivos PDF.

Para resolver isso é preciso:

No arquivo `/etc/ImageMagick-6/policy.xml` (ou `/etc/ImageMagick/policy.xml`) Encontre a seguinte linja:

```
<policy domain="coder" rights="none" pattern="PDF" />
```

E mude para ficar assim:

```
<policy domain="coder" rights="read|write" pattern="PDF" />
```

Em seguida, reinicie seu servidor web.

---

## Orientações para performance

### Reduza o número de metadados exibidos por padrão na listagem

Se a sua listagem de itens estiver lenta, especialmente na visão “tabela”, reduza o número de metadados exibidos por padrão na listagem. Quanto menos metadados forem exibidos na listagem, mais rápida ela será.

Para fazer isso, acesse a página de configuração dos metadados de sua coleção, edite os metadados, procure a opção “Exibir na listagem” e marque “não exibir por padrão”. Esta opção ainda permitirá que os usuários escolham visualizar este metadado na listagem, se quiserem, mas removerá ele da listagem por padrão, acelerando o carregamento para os visitantes.

### Limite o número máximo de itens em uma listagem

Por padrão, o Tainacan tem um limite de 96 itens por página em qualquer listagem ou requisição à API. Faça alguns testes e verifique se esse número é adequado para o seu servidor.

Caso este número seja muito alto e as requisições forem muito lentas, você pode diminuí-lo para garantir uma boa experiência de uso.

Da mesma forma, caso seu servidor seja mais potente, você pode aumentar esse número e oferecer listagens mais completas. Isto é especialmente útil para os links que são gerados para visitantes acessarem a coleção em outros formatos, como CSV. Quanto maior o número de itens por páginas, menos páginas eles terão que acessar para recuperar todos os itens de uma coleção.

Para mudar essa configuração, adicione a seguinte linha no seu arquivo `wp-config.php`:

```php
define(‘TAINACAN_API_MAX_ITEMS_PER_PAGE’, 96);
```

Substituindo 96 pelo número de sua preferência.

### Melhorando a velocidade da busca textual

Para coleções pequenas, as configurações padrão do tainacan devem funcionar bem e a busca geral por palavras chave pode ser eficiente. No entanto, para coleções um pouco maiores, esta busca, que procura por um termo em todos os metadados de um item, pode ser bastante ineficiente.

Para este gargalo há uma solução ideal e uma paliativa.

A solução ideal é integrar o WordPress a um servidor de buscas, chamado Elastic Search. A instalação e configuração do Elastic Search está fora do escopo, pelo menos por enquanto, desta documentação, mas, uma vez que você tenha um servidor desses rodando, basta instalar o plugin ElasticPress. (Esta integração ainda está em fase experimental mas com excelentes resultados. Assim que estiver mais madura escreveremos uma documentação específica. Enquanto isso, seria muito bom receber relatos das tentativas).

A solução paliativa é restringir a busca ao funcionamento padrão do WordPress, que procura os termos apenas no título e descrição dos itens. Apesar de muito menos abrangente, ela é muito mais rápida.

Para fazer isso, adicione a seguinte linha no seu arquivo `wp-config.php`:

```php
define('TAINACAN_DISABLE_DEFAULT_SEARCH_ENGINE', true);
```

Mais informações na documentação para desenvolvedores da [engine de busca](/dev/search-engine).

### Ajustando facetas

Por padrão, os valores carregados para as facetas irão sempre considerar a busca atual que você está fazendo. Isso significa que, a medida que filtros forem selecionados, as facetas serão recarregadas e trarão apenas os valores que ainda irão trazer itens nos resultados. Dessa maneira, a medida em que o usuário vai fazendo filtros, as opções nas facetas vão reduzindo, criando um “funil” de busca.

Caso este comportamento não seja adequado para você, é possível configurar o tainacan para sempre exibir todos os valores possíveis em uma faceta, desconsiderando a busca atual. (em alguns casos, isto também pode melhorar a performance).

Para fazer isso, adicione a seguinte linha no seu arquivo `wp-config.php`:

```php
define('TAINACAN_FACETS_DISABLE_FILTER_ITEMS', true);
```

### Melhorando a velocidade de carregamento das facetas

Muitas facetas, ou filtros, também podem piorar a experiência de uso de seu site dependendo do tamanho da sua coleção e da capacidade do seu servidor.

Se o carregamento das suas facetas estiver lento, o mais adequado é olhar as orientações da seção “Ajustes nas configurações do servidor” desta página.

Caso você não tenha acesso ou condições de modificar as configurações do servidor, aqui vão algumas alternativas:

1. Considere diminuir o número de facetas, mantendo apenas as essenciais. Caso algumas facetas sejam essenciais para o trabalho de gestão, mas dispensáveis para a navegação do público em geral, marque estas como “visível apenas por editores”. Desta maneira, você irá melhorar a experiência do seu visitante.
2. Desative a contagem de itens por faceta. Para fazer isso, adicione a seguinte linha no seu arquivo `wp-config.php`:

```php
define('TAINACAN_FACETS_DISABLE_COUNT_ITEMS', true);
```

Mais informações sobre facetas na documentação para desenvolvedores [da busca facetada](/dev/faceted-search).

---

## Ajustes nas configurações do servidor

Os ajustes presentes nesta seção dizem respeito a configuração do seu servidor Apache. O modo de acesso e a forma de fazer estas configurações podem variar bastante dependendo do servidor ou serviço de hospedagem utilizado. Em alguns serviços de hospedagem, possivelmente você não terá acesso a todas essas opções.

Para saber exatamente como fazer cada uma dessas configurações, consulte a documentação do servidor utilizado, o administrador de sistemas responsável ou o suporte técnico de sua hospedagem. As diretivas recomendadas aqui tomam como base um servidor com as seguintes configurações:

- Processador: Intel(R) Xeon(R) CPU E5-2609 0 @ 2.40GHz, 4 cores;
- Sistema operacional: Ubuntu Linux 16.04.1;
- Memória real e virtual: 16 GB e 2 GB;
- Kernel e CPU: Linux 4.4.0-72-generic on x86_64
- Versão do Apache: 2.4

### Aumente o _timeout_ do seu servidor

Por padrão, grande parte dos servidores está configurado com um timeout de `30 segundos`. Isso significa que qualquer requisição que demore mais do que 30 segundos para concluir será cancelada.

No geral, este tempo é suficiente, porém ele pode ser um gargalo em algumas operações específicas, como algumas de exportação e importação e de edição em massa de itens.

Por segurança, aumente este valor para algo em torno de `200` a `300 segundos`.

### Configure o _KeepAlive_

Esta diretiva se definida como `on`, permite conexões persistentes ao apache. Para um melhor desempenho, é recomendado definir esta opção como `on` e permitir que mais de uma solicitação por conexão.

MaxKeepAliveRequests: Esta diretiva é usada para definir o número de solicitações permitido por conexão quando a opção KeepAlive acima é definido como `on`. Defina esta opção como `0` para indicar um número ilimitado.

KeepAliveTimeout: Esta diretiva é usada para definir quanto tempo, em segundos, o apache irá esperar por um posterior pedido antes de fechar a conexão. O valor `10` é uma boa média a ser utilizada.

### Configure o _MPM Prefork_

Em algumas páginas do Tainacan, especialmente na listagem de itens, são realizadas muitas requisições simultâneas ao servidor. Para melhorar o desempenho nessas situações, é recomendável que você configure o módulo MPM Prefork do servidor Apache.

Para a conceitualização de cada diretiva de configuração apresentada abaixo recomenda-se a leitura do artigo [1](https://elias.praciano.com/2015/12/como-configurar-o-modulo-mpm-prefork-para-melhorar-a-performance-do-servidor-web-apache/) que explica todos os aspectos envolidos e para a determinação da configuração mais adequada para o seu ambiente recomenda-se a leitura do artigo [2](https://www.woktron.com/secure/knowledgebase/133/How-to-optimize-Apache-performance.html) que traz uma abordagem simples e objetiva para a determinação dessas configurações.

Segue abaixo as configurações recomendadas que devem ser realizadas no arquivo `/etc/apache2/mods-availave/mpm_prefork.conf`:

- **StartServers**: definir o valor para `4`.
- **MaxClients**: definir o valor para `256`.
- **MinSpareServers**: definir o valor para `15`.
- **MaxSpareServer**: definir o valor para `30`.
- **MaxRequestsPerChild**: definir o valor para `5`.
- **MaxRequestWorkers**: definir o valor para `250`.

Realizadas tais configurações outro aspecto importante é blindar a instalação Wordpress na qual o plugin e tema do Tainacan serão executados. A próxima seção trata desse aspecto.

---

## Blindando o Wordpress

O primeiro passo é configurar as permissões dos arquivos e diretórios da instalação corretamente. Isso pode feito por meio dos seguintes comandos que:

Para diretórios:

```shell
find /caminho/para/a/pasta/do/wordpress/ -type d -exec chmod 755 {} \;
```

Para arquivos:

```shell
find /caminho/para/a/pasta/do/wordpress/ -type f -exec chmod 644 {} \;
```

Uma outra medida de proteção que pode ser adicionada nas partes onde os scripts geralmente não devem ser acessados por nenhum usuário. Uma forma de fazer isso é usar `mod_rewrite` para bloquear os scripts no arquivo `.htaccess`.

```directive
RewriteEngine On
RewriteBase /
RewriteRule ^wp-admin/includes/ - [F,L]
RewriteRule !^wp-includes/ - [S=3]
RewriteRule ^wp-includes/[^/]+\.php$ - [F,L]
RewriteRule ^wp-includes/js/tinymce/langs/.+\.php - [F,L]
RewriteRule ^wp-includes/theme-compat/ - [F,L]
```

O bloqueio do acesso ao arquivo `wp-config.php` por meio do `.htaccess` é outra medida interessante. Para isso basta inserir o seguinte código no arquivo `.htaccess` da instalação Wordpress:

```php
<files wp-config.php>

order allow,deny

deny from all

</files>
```

Desabilitar a listagem de arquivos e o acesso direto a arquivos _.php_ no diretório de uploads. Isso pode ser feito pela inclusão de um arquivo `.htaccess` dentro do diretório `/wp-content/uploads` da instalação Wordpress com o seguinte conteúdo:

```php
Options -Indexes

<Files *.php>

Require all denied

</Files>
```

### Wordfence

Fechando as recomendações de segurança recomenda-se a instalação, ativação e configuração do plugin [Wordfence](https://wordpress.org/plugins/wordfence/) que possui uma gama de recursos que objetivam proteger a instalação Wordpress do mais diversos tipos de ataques e exploração de vulnerabildades.

O plugin e a sua documentação podem ser acessados [aqui](https://wordpress.org/plugins/wordfence/).

## Cache

Existem diversos plugins de cache para o WordPress que podem acelerar bastante o carregamento das páginas para seus visitantes.

Existe um cuidado que precisa ser tomado quando for utilizar um plugin de cache. Como o Tainacan utiliza "nonces", que são códigos de segurança para verificar a intenção do usuário de realizar determinadas ações, é preciso configurar o cache para não durar mais do que 12 horas. Esses códigos duram esse tempo e, se o cache durar mais do que 12 horas, possivelmente você irá visitar o site com um código expirado e terá problemas de permissão.

Se quiser mais detalhes sobre isso, veja [estes](https://medium.com/myatus/wordpress-caching-and-nonce-lifespan-bb357d984da9) [artigos](https://joshpress.net/wordpress-nonces-and-wordpress-caching/).
