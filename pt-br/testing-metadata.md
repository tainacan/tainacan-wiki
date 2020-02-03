# Testando Metadados

## O Básico

1. Crie os diferentes tipos de metadados a **nível de coleção**, em coleções diferentes:
  1. Lembre-se de criar pelo menos um metadado do tipo *relacionamento* e um do tipo *taxonomia*;
  2. Busque marcar opções diferentes entre os metadados em:
    * Status;
    * Exibir na listagem;
    * Opções de Preenchimento (muito importante checar as opções de preenchimento *requerido*, *multiplo* ou *único*);
    * Demais campos de texto;
2. Teste as ações de *exclusão*, *troca de ordem*, *edição de metadados* ou *desabilitar*.
  - [x] Recarregue a página e verifique as mudanças para confirmar que tudo foi salvo;
  - [x] Observe o tempo de carregamento na criação de metadados;
  - [x] Observe o tempo de conclusão ao **salvar** cada metadado;
  - [x] Veja se as **configurações se refletem** na lista de items e nos formulários de criação de itens;
  
  ?> Nota: É diferente um metadado estar "desabilitado" de estar marcado para "Não exibir na listagem". Com o primeiro, não é possível nem mesmo inserir o metadado no item. Com o segundo, ele só muda a visibilidade na lista de itens.

## Nível Repositório

1. Repita os passos descritos acima para alguns metadados nível repositório;
2. Entre na página de metadados de uma coleção;
   - [x] Verifique se os metadados foram herdados e se suas configurações foram respeitas; 
   - [x] Verifique se é possível trocar a ordem dos mesmos no nível da coleção;

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues) ou para o [e-mail da comunidade](tainacan@lists.riseup.net) do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](#acho-que-encontrei-um-erro-como-devo-proceder).