# Testando Taxonomias

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

## O Básico

1. Crie uma ou mais taxonomias;
2. Crie um ou mais termos em cada taxonomia criada;
3. Envie uma _Imagem da Header_ em pelo menos um termo de cada taxonomia;
4. Busque preencher todos os campos, como **nome**, **descrição**, etc.
5. Crie pelo menos um nível hierárquico em cada taxonomia (adicionando termos filhos);
6. Altere o Status de pelo menos uma taxonomia, após a sua criação;
7. Vá para a lista de taxonomias e cheque se as mesmas estão nas abas corretas de acordo com seu status;

- [x] Observe o tempo de carregamento da tela de _Criação de Taxonomia_, _Lista de Termos_ e _Lista de Taxonomias_
- [x] Observe o tempo de conclusão ao **salvar** cada taxonomia;
- [x] Observe o tempo de conclusão ao **salvar** cada termo;

4. Teste excluir uma taxonomia. Veja se há alguma alteração nas outra taxonomias ou metadados de taxonomia;
5. Relacione pelo menos uma taxonomia e um metadado e repita as operações acima com esta taxonomia;
6. Tente relacionar uma mesma taxonomia a dois metadados de uma mesma coleção. Isto não deve ser possível.

## A Visualização do Termo no Tema

1. Abra o formulário de edição de algum termo;
2. Clique em "Ver no Tema";
   - [x] Veja se a lista de itens do termo é renderizada corretamente, incluindo a imagem e descrição passada;
   - [x] Verifique seestão listados os itens que possam ter aquele termo marcado em algum metadado tipo taxonomia.

## A Definição de um novo Termo Pai

1. Abra o formulário de edição de algum termo, ou crie um novo;
2. Habilite a opção "Termo Pai" e busque por termos que podem ser escolhidos como pai;
3. Salve a mudança clicando em `Salvar`;
   - [x] Cheque se dentre os termos oferecidos não foi listado o próprio termo;
   - [x] Se o termo escolhido atual possuir filhos, verifique se a lista será recarregada corretamente ao se mudar sua hierarquia;

## A Permissão para Termos Novos

1. No formulário de configurações de uma taxonomia, desmarque a opção "Permitir Termos Novos";
2. Salve a mudança clicando em `Salvar`;
3. Vá para uma Coleção, na sua tela de Configurar Metadados;
   1. Crie um Metadado do tipo Taxonomia a partir da taxonomia alterada.
   2. Verifique que não existe mais a opção "Permitir Termos Novos";
4. Vá a lista de Itens da Coleção e crie ou edite um item;
   1. Adicione termos existentes ao metadado tipo taxnomia;
   2. Tente adicionar termos novos à taxonomia a partir do formulário de edição do metadado;
   - [x] Confirme que não é possível inserir novos termos na taxonomia, já que a configuração da Taxonomia tem prioridade sobre a do Metadado;
   - [x] Recarregue a página do item para ver se os termos possíveis foram salvos

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).
