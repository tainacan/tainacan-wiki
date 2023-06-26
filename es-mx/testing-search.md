# Testando a Busca de Itens

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Para testar a busca facetada de itens, é preciso ter uma coleção com uma mínima diversidade de tipos de metadados, filtros e é claro, itens. Sugerimos a criação de Coleções usando o [Importador Teste](/es-mx/importers#importador-teste) para ajudar neste processo. Feito isso, deve-se:

## O Básico

1. Acessar a Coleção ou a lista de Itens Nível Repositório;
2. Aplicar a busca textual simples;
3. Aplicar diferentes combinações de filtros;
4. Trocar a ordenação e modos de visualização da lista (não se esqueça de testar o modo "Tela Cheia", se disponível);
5. Navegar por mais de uma página;
   - [x] Confirme que os filtros e buscas aplicadas estão retornando resultados coerentes;
   - [x] Confirme que as facetas (os números mostrados ao lado de cada valor de filtro) estão corretas;
   - [x] Veja se as tags estão aparecendo ao aplicar um filtro (e se removê-las remove também o filtro aplicado);
   - [x] Selecione a URL da busca aplicada, copie e cole em outra aba do navegador para ver se todos as configurações são mantidas;
6. Repita os passos descritos acima tanto para a lista de itens do Admin quando na lista de itens do tema.

## A Busca Avançada

1. Acessar a Coleção ou a lista de Itens Nível Repositório;
2. Abrir a Avançada;
3. Criar um critério de busca para cada tipo de metadado, com diferentes combinações de operadores;
   - [x] Tente criar buscas que de fato levem a algum resultado específico;
   - [x] Verifique se ao remover cada critério e re-aplicar a busca, novos itens aparecem;
   - [x] Selecione a URL da busca aplicada, copie e cole em outra aba do navegador para ver se todos as configurações são mantidas;
4. Repita os passos descritos acima tanto para a lista de itens do Admin quando na lista de itens do tema.

## Os Expositores

1. Acessar a Coleção ou a lista de Itens Nível Repositório;
2. Repita a aplicação de alguns filtros, como feito no primeiro teste;
3. Clique no botão "Ver como..." para abrir o modal de expositores;
   - [x] Cheque se o link para a lista de itens no site está correto;
   - [x] Verifique se as opções de expositores disponíveis (PDF, HTML, CSV) estão gerando links que refletem a lista de items;
   - [x] Verifique se aplicando o checkbox de "Expor apenas metadados exibidos", os metadados que não foram marcados para exibição são retirados da lista resultante;
4. Repita os passos descritos acima tanto para a lista de itens do Admin quando na lista de itens do tema.

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).
