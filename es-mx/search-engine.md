# Mecanismo de Busca

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Em adição à [busca facetada](faceted-search.md), que permite os usuários filtrar itens por metadados específicos,o Tainacan ainda permite uma busca textual livre.

Por padrão, ao usar a opção de busca textual livre, o WordPress busca somente dentro do Título (post_title) e Descrição (post_content). Essa opção é claramente limitada, dessa forma discutimos aqui a abordagem que o Tainacan utiliza para lidar com essa limitação.

Não existe uma poção mágica para resolver esse problema. Em alguns casos, talvez para repositórios menores, uma simples modificação no modo como o WordPress consulta pelos posts, incluindo a relação entre metadados e taxonomias, pode dar aos usuários os resultados que procuram. Em outros casos, gestores dos repositórios talvez queiram utilizar soluções mais sofisticadas como ElasticSearch ou Solr para habilitar uma busca de texto em todo o conteúdo para seus usuários.

Uma abordagem intermediária pode ser a criação de tabelas índice (index tables) e divisão de termos (tokenizing strings). Isso permitiria até ordenar os resultados baseados em relevância. (Existe ao menos um puglin pago no WordPress que faz isso)

Considerando todas essas opções, noaa abordagem foi filtrar a consulta SQL contruida pelo objeto WordPress WP_Query e incluir as pesquisas nos valores de metadados e taxonomias. Esssa abordagem é a mesma que o plugin "[Search Everything](https://wordpress.org/plugins/search-everything/)" utiliza.

Essa abordagem talvez cause lentidão nas buscas, especialmente no campo livre de busca por palavra-chave.

Se você deseja desabilitar essa mudança para o comportamento padrão do WordPress (Busca somente no título e descrição) você pode fazer isso adicionando a seguinte linha em seu arquivo `wp-config.php`. É recomendado que você faça isso se for usar outro plugin para busca, evitando possíveis conflitos.

```
define('TAINACAN_DISABLE_DEFAULT_SEARCH_ENGINE', true);
```

Nossos esforços nesse momento estão focados em melhorar a compatibilidade com o plugin [ElasticPress](https://wordpress.org/plugins/elasticpress/). Já esta totalmente funcional desde a versão [version 0.9](https://tainacan.org/blog/2019/05/20/tainacan-beta-0-9-elastic-search-new-gutenberg-block-and-importers/)
_Nota: versão suportada do ElasticSearch: elasticsearch 6.1.0+_

Nosso entendimento é que se o repositório ficar muito grande, talvez precise de uma infraestrutura mais robusta e o uso do ElasticSerach é o que recomendamos.

Entretando, como nos preocupamos em desenvolver as coisas do "jeito WordPress", e como a busca no Tainacan usa uma classe "WP_Query" nativa para fazer suas consultas, qualquer plugin que utilize essa classe deve funcionar com Tainacan. Então sinta-se à vontade para tentar outros plugins de busca para o WordPress e por favor nos informe o quão bem funcionou!
