> [!NOTE]
> [!NOTE]
This page is in _Brazilian Portuguese_ only so far. **If you can, please help us translate it to _English_.**

# Roteiro de Testes

Este artigo descreve o roteiro para testes de integridade na instalação ou atualização do Plugin do Tainacan para WordPress:

## Fluxo para lançamento de versão RC _(Release Candidate)_

Este fluxo pretende estabelecer procedimentos para que novas versões do plugin do Tainacan sejam validadas previamente pela comunidade, evitando o envio do plugin com a presença de bugs para o repositório do WordPress.

1. Divulgar a RC na [comunidade do Tainacan](https://tainacan.discourse.group) para que sejam realizados os testes de uso;
2. Fazer testes seguindo este Roteiro de Testes;
3. Resolver eventuais problemas encontrados e lançar uma nova versão RC _(Release Candidate)_ até os testes não apontarem problemas.
4. A partir disso, seguir os passos para [lançar uma nova versão](/pt-br/dev/release.md) para WordPress.

## Roteiro de Testes do Plugin

Este roteiro é destinado para a realização de testes que verifiquem o funcionamento adequado das funções e a realização de processos pelo Plugin do Tainacan.

> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues) ou para o [fórum da comunidade](https://tainacan.discourse.group) do Tainacan.

1. Acesse o endereço onde a versão _RC_ do Tainacan está instalada;
2. Acesse o **painel de controle do WordPress**;
3. Verifique os _níveis de permissão do seu usuário_ (para os testes, recomenda-se **Administrador** ou **Editor**)
4. Na barra lateral esquerda, clique em **Diagnóstico da Instalação** na seção Tainacan:
5. Verifique se a instalação está com os requisitos recomendados para o funcionamento do _Plugin do Tainacan_.
6. Baixe o arquivo de log no botão `Baixar Log` para **anexar estas informações** ao Relatório de Testes.
7. Na barra lateral esquerda, clique em Tainacan:

- Observe o tempo de carregamento da tela inicial;
- Observe se todos elementos da página foram exibidos corretamente;
  - Observe novamente estes aspectos ao concluir os processos a seguir para reportar eventuais alterações substanciais no tempo de carregamento de tela ou exibição incorreta dos elementos.

### Coleções <!-- {docsify-ignore} -->

1. Crie DUAS ou mais coleções
2. Preencha seus campos, incluindo miniatura e imagem da Header;
3. Defina status diferentes para cada uma, como Pública e Privado, ou Pública e Rascunho;
4. Conclua ou clique em `Salve e ir para Metadados`;

- Observe o tempo de carregamento da tela de _Criação de coleção_;
- Observe se todos elementos da página foram exibidos corretamente;
- Observe o tempo de conclusão ao **concluir** ou **salvar** as coleções;

### Taxonomias <!-- {docsify-ignore} -->

1. Crie uma ou mais taxonomias;
2. Crie um ou mais termos em cada taxonomia criada;
3. Envie uma _Imagem da Header_ em pelo menos um item de cada taxonomia;
4. Busque preencher todos os campos, como **nome**, **descrição**, etc.
5. Crie pelo menos um nível hierárquico em cada taxonomia;

- Observe o tempo de carregamento da tela de _Criação de Taxonomia_;
- Observe se todos elementos da página foram exibidos corretamente;
- Observe o tempo de conclusão ao **salvar** cada taxonomia;
- Observe o tempo de conclusão ao **salvar** cada termo;

### Metadados <!-- {docsify-ignore} -->

1. Crie os diferentes tipos de metadados a **nível de repositório**:
1. Lembre-se de criar metadado do tipo _taxonomia_;
1. Busque marcar opções diferentes entre os metadados em:

   - Status;
   - Exibir na listagem;
   - Opções de Preenchimento;
   - Demais campos de texto;

1. Crie alguns metadados também a **nível de coleção**, em cada coleção:
1. Lembre-se de criar metadado do tipo _relacionamento_;
1. Busque marcar opções diferentes entre os metadados em:

   - Status;
   - Exibir na listagem;
   - Opções de Preenchimento;
   - Demais campos de texto;

1. Teste as ações de _exclusão_ ou _edição de metadados_.

- Observe o tempo de carregamento na criação de metadados;
- Observe se todos elementos da página foram exibidos corretamente;
- Observe o tempo de conclusão ao **salvar** cada metadado;

### Itens <!-- {docsify-ignore} -->

1. Abra uma coleção;
2. Adicione um Item;
3. Crie itens com diferentes tipos de documento;
4. Edite a miniatura de diferentes itens;
5. Edite e adicione anexos em diferentes itens;
6. Preencha os campos de metadados;
7. Teste o _não preenchimento_ de metadados marcados como obrigatório;
8. Teste o preenchimento de campos de metadados do tipo taxonomia, e a criação de novos termos;
9. Após criar itens em uma _primeira coleção_, teste o preenchimento de metadados do tipo relacionamento em _outra coleção_.

- Observe o tempo de carregamento ao abrir as coleções;
- Observe o tempo de carregamento ao criar itens;
- Observe se todos elementos da página da coleção foram exibidos corretamente;
- Observe se todos elementos da página da criação de item foram exibidos corretamente;
- Observe se todos metadados a nível de repositório e da colação foram exibidos corretamente para preenchimento, na página da criação de item;
- Observe se eventuais dicas de preenchimento, configuradas em determinados metadados, estão exibidas corretamente
- Observe se o aviso de **preenchimento de metadados obrigatórios** funciona corretamente, ao **salvar** ou **publicar** cada item;
- Observe o tempo de conclusão ao **salvar** ou **publicar** cada item;

### Importadores <!-- {docsify-ignore} -->

> [!NOTE]
> Implementar este roteiro de testes

### Processos <!-- {docsify-ignore} -->

> [!NOTE]
> Implementar este roteiro de testes

### Atividades <!-- {docsify-ignore} -->

> [!NOTE]
> Implementar este roteiro de testes

> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues) ou para o [fórum da comunidade](https://tainacan.discourse.group) do Tainacan.
