# Roteiro de Testes

Este artigo descreve o roteiro para testes de integridade na instalação ou atualização do Plugin do Tainacan para WordPress:

## Fluxo para lançamento de versão RC *(Release Candidate)*

Este fluxo pretende estabelecer procedimentos para que novas versões do plugin do Tainacan sejam validadas previamente pela comunidade, evitando o envio do plugin com a presença de bugs para o repositório do WordPress.

1. Divulgar a RC na [comunidade do Tainacan](https://lists.riseup.net/www/subscribe/tainacan) para que sejam realizados os testes de uso;
2. Fazer testes seguindo este Roteiro de Testes;
3. Resolver eventuais problemas encontrados e lançar uma nova versão RC *(Release Candidate)* até os testes não apontarem problemas.
4. A partir disso, seguir os passos para [lançar uma nova versão](/pt-br/dev/release.md) para WordPress.

## Roteiro de Testes do Plugin

Este roteiro é destinado para a realização de testes que verifiquem o funcionamento adequado das funções e a realização de processos pelo Plugin do Tainacan.

> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues) ou para o [e-mail da comunidade](tainacan@lists.riseup.net) do Tainacan.

1. Acesse o endereço onde a versão *RC* do Tainacan está instalada;
2. Acesse o **painel de controle do WordPress**;
3. Verifique os *níveis de permissão do seu usuário* (para os testes, recomenda-se **Administrador** ou **Editor**)
4. Na barra lateral esquerda, clique em **Diagnóstico da Instalação** na seção Tainacan:
  1. Verifique se a instalação está com os requisitos recomendados para o funcionamento do *Plugin do Tainacan*.
  2. Baixe o arquivo de log no botão `Baixar Log` para **anexar estas informações** ao Relatório de Testes.
5. Na barra lateral esquerda, clique em Tainacan:

* Observe o tempo de carregamento da tela inicial;
* Observe se todos elementos da página foram exibidos corretamente;
  * Observe novamente estes aspectos ao concluir os processos a seguir para reportar eventuais alterações substanciais no tempo de carregamento de tela ou exibição incorreta dos elementos.

### Coleções

1. Crie DUAS ou mais coleções
2. Preencha seus campos, incluindo miniatura e imagem da Header;
3. Defina status diferentes para cada uma, como Pública e Privado, ou Pública e Rascunho;
4. Conclua ou clique em `Salve e ir para Metadados`;

* Observe o tempo de carregamento da tela de *Criação de coleção*;
* Observe se todos elementos da página foram exibidos corretamente;
* Observe o tempo de conclusão ao **concluir** ou **salvar** as coleções;

### Taxonomias

1. Crie uma ou mais taxonomias;
2. Crie um ou mais termos em cada taxonomia criada;
  1. Envie uma *Imagem da Header* em pelo menos um item de cada taxonomia;
  2. Busque preencher todos os campos, como **nome**, **descrição**, etc.
  3. Crie pelo menos um nível hierárquico em cada taxonomia;

* Observe o tempo de carregamento da tela de *Criação de Taxonomia*;
* Observe se todos elementos da página foram exibidos corretamente;
* Observe o tempo de conclusão ao **salvar** cada taxonomia;
* Observe o tempo de conclusão ao **salvar** cada termo;

### Metadados

1. Crie os diferentes tipos de metadados a **nível de repositório**:
  1. Lembre-se de criar metadado do tipo *taxonomia*;
  2. Busque marcar opções diferentes entre os metadados em:
    * Status;
    * Exibir na listagem;
    * Opções de Preenchimento;
    * Demais campos de texto;
2. Crie alguns metadados também a **nível de coleção**, em cada coleção:
  1. Lembre-se de criar metadado do tipo *relacionamento*;
  2. Busque marcar opções diferentes entre os metadados em:
    * Status;
    * Exibir na listagem;
    * Opções de Preenchimento;
    * Demais campos de texto;
3. Teste as ações de *exclusão* ou *edição de metadados*.

* Observe o tempo de carregamento na criação de metadados;
* Observe se todos elementos da página foram exibidos corretamente;
* Observe o tempo de conclusão ao **salvar** cada metadado;

### Itens

1. Abra uma coleção;
2. Adicione um Item;
3. Crie itens com diferentes tipos de documento;
4. Edite a miniatura de diferentes itens;
5. Edite e adicione anexos em diferentes itens;
6. Preencha os campos de metadados;
  1. Teste o *não preenchimento* de metadados marcados como obrigatório;
  2. Teste o preenchimento de campos de metadados do tipo taxonomia, e a criação de novos termos;
  3. Após criar itens em uma *primeira coleção*, teste o preenchimento de metadados do tipo relacionamento em *outra coleção*.

* Observe o tempo de carregamento ao abrir as coleções;
* Observe o tempo de carregamento ao criar itens;
* Observe se todos elementos da página da coleção foram exibidos corretamente;
* Observe se todos elementos da página da criação de item foram exibidos corretamente;
* Observe se todos metadados a nível de repositório e da colação foram exibidos corretamente para preenchimento, na página da criação de item;
* Observe se eventuais dicas de preenchimento, configuradas em determinados metadados, estão exibidas corretamente
* Observe se o aviso de **preenchimento de metadados obrigatórios** funciona corretamente, ao **salvar** ou **publicar** cada item;
* Observe o tempo de conclusão ao **salvar** ou **publicar** cada item;

### Importadores

?> _TODO_ Implementar este roteiro de testes

### Processos

?> _TODO_ Implementar este roteiro de testes

### Atividades

?> _TODO_ Implementar este roteiro de testes

> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues) ou para o [e-mail da comunidade](tainacan@lists.riseup.net) do Tainacan.