# Roteiro de Testes

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Esta sessão descreve o roteiro para testes de integridade na instalação ou atualização do Plugin do Tainacan para WordPress:

## Fluxo para lançamento de versão RC _(Release Candidate)_

Estes são os procedimentos para que novas versões do plugin do Tainacan sejam validadas previamente pela comunidade, evitando o envio do plugin com a presença de bugs para o repositório do WordPress:

1. Divulgar a RC na [comunidade do Tainacan](https://tainacan.discourse.group) para que sejam realizados os testes de uso;
2. Fazer testes seguindo este [Roteiro de Testes](#roteiro-de-testes-do-plugin) a seguir;
3. Resolver eventuais problemas encontrados e lançar uma nova versão RC _(Release Candidate)_ até os testes não apontarem problemas.
4. A partir disso, seguir os passos para [lançar uma nova versão](/dev/release.md) para WordPress.

## Roteiro de Testes do Plugin

Este roteiro é destinado para a realização de testes que verifiquem o funcionamento adequado das funções e a realização de processos pelo Plugin do Tainacan.

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).

Há vários tipos de testes que podem ser feitos para cobrir o máximo de funcionalidades possíveis. Todos começam com as seguintes etapas básicas:

<div style="float: right; margin-left: 32px;">

![Menu de Admin do Tainacan](/_assets/images/release-testing-1.png)

</div>

1. Acesse o **painel de controle do WordPress** onde a sua versão de testes do plugin Tainacan está instalada e ativada (geralmente, o endereço do seu site + `/wp-admin`);
2. Na barra lateral esquerda, clique em **Diagnóstico da Instalação** na seção Tainacan:
3. Verifique se a instalação está com os requisitos recomendados para o funcionamento do _Plugin do Tainacan_.
4. Baixe o arquivo de log no botão `Baixar Log` para **anexar estas informações** ao Relatório de Testes.
5. Na barra lateral esquerda, clique em Tainacan:

- [x] Observe o tempo de carregamento da tela inicial;
- [x] Observe se todos elementos da página foram exibidos corretamente;
- [x] Observe novamente estes aspectos ao concluir os processos a seguir para reportar eventuais alterações substanciais no tempo de carregamento de tela ou exibição incorreta dos elementos.

Feito isto, escolha um tópico que deseja testar mais a fundo:

<div style="column-count: 2; column-width: 250px;">

- [Coleções](/es-mx/testing-collections.md)
- [Taxonomias](/es-mx/testing-taxonomies.md)
- [Metadados](/es-mx/testing-metadata.md)
- [Filtros](/es-mx/testing-filters.md)
- [Itens](/es-mx/testing-items.md)
- [Busca Facetada](/es-mx/testing-search.md)
- [Importadores](/es-mx/testing-importers.md)
- [Exportadores](/es-mx/testing-exporters.md)
- [Permissões](/es-mx/testing-capabilities.md)
- [Blocos Gutenberg](/es-mx/testing-gutenberg-blocks.md)
- [Submissão de Itens](/es-mx/testing-item-submission.md)

</div>
