# Ações em Massa

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

O Tainacan permite a realização de “ações em massa”. É possível criar, editar, importar e deletar itens em massa com poucos cliques.

## Criar Itens em Massa

A criação de “itens em massa” é diferente da “importação de itens” a partir de um arquivo “.csv”. Diferente da última, que ocorre a partir da seção de importadores do Tainacan, a criação em massa é feita diretamente do “painel administrativo da coleção”, mediante o upload dos documentos principais que irão compor a “coleção”.

> Nota: Se você possui uma base de itens estruturada e tratada em um documento de planilha, considere utilizar o “Importador CSV”.

> Nota: O que diferencia a função “Criar Itens em Massa” da Criação da função “Adicionar Um Item” é o processo de definição do documento principal. Para a última função, o preenchimento dos “metadados” independe da existência de um documento vinculado ao “item”. Enquanto que para a primeira função, o preenchimento dos “metadados” se dá a partir do upload do conjunto dos documentos principais.

!>**Atenção**: Por padrão, o Tainacan irá considerar o nome do arquivo como o “Título Principal” do item.

1. Acesse o painel de controle do _WordPress_;

   ![Acesse o painel de controle](_assets\images\Painel_Adm_WordPress.png)

2. Na barra lateral esquerda, clique em Tainacan;

   ![Acesse o painel de controle](_assets\images\Painel_Acesso_Tainacan.png)

3. Selecione a “Coleção” que deseja para a criação dos “itens”;

   ![Acesse o painel de controle](_assets\images\Selecao_Colecao.png)

4. Clique em “Adicionar novo” e selecione a opção “Adicionar itens em massa”;

   ![Acesse o painel de controle](_assets\images\Adicionar_novo_Itens_Massa.png)

5. Clique ou arraste a mídia dos “itens” que deseja criar para o campo de “Envio de documentos”;

   ![Acesse o painel de controle](_assets\images\Itens_em_masas_Envio_arquivos.png)

6. Os arquivos selecionados serão enviados automaticamente e o progresso de upload pode ser acompanhado em tempo real;

   ![Acesse o painel de controle](_assets\images\Itensemmassaconcluidouploadarquivos.png)

   > **Nota**: Novos arquivos de mídia podem ser adicionados a qualquer momento nesta mesma tela durante o processo de envio de documentos;

7. Quando o processo for concluído, será possível:

   a. **“Edição de itens em sequência**” para editar cada mídia individualmente em sequência. Consulte Editar Itens em Sequência;

   b. **“Editar itens em massa”** para editar informações comuns a todos arquivos enviados nessa operação. Consulte Editar Itens em Massa;

   c. **“Cancelar”** para encerrar a operação. Os arquivos de mídia que já estiverem com o upload concluído ficarão disponíveis na “Biblioteca de Mídia” do WordPress.

!>Atenção: Todos os valores inseridos via edição em massa são atribuídos a todos os “itens” criados em massa.

![Acesse o painel de controle](_assets\images\Itensemmassacomandosfinais.png)

### Editar Itens em Massa

1. Selecione a “Coleção” que contém os “itens” que deseja editar;

   ![Acesse o painel de controle](_assets\images\Selecao_Colecao.png)

2. Clique na “caixa de seleção” (localizada à esquerda das miniaturas dos itens) de cada um que deseja editar, ou clique em “Selecionar todos os itens na página”;

   ● Se desejar, também é possível selecionar todos os itens da coleção. Para isso, primeiro clique em “Selecionar todos os itens na página” e então clique em “Selecionar todos”.

   ![Acesse o painel de controle](_assets\images\Acoes_em_Massa_Editar_Itens_selecao.png)

3. À direita, clique em “Ações para seleção”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_Acoes_para_selecao.png)

4. Selecione “Editar itens selecionados em massa”;

   ![Acesse o painel de controle](_assets\images\editaritensselecionadosemmassa.png)

5. Selecione o “metadado” que deseja editar na janela exibida;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_selecionar_metadado.png)

6. Em seguida, com base nas opções e configurações do “metadado”, selecione uma ação:

   ○ **“Adicionar valor”**: Para acrescentar um novo valor a um “metadado” com a configuração “Permitir valores múltiplos” habilitada;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_adicionar_valor.png)

   ○ **“Atribuir novo valor”**: Para adicionar um novo valor ao “metadado”.

   I. Se houver valores para os “itens” selecionados, eles serão substituídos pelo novo valor;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_atribuir_novo_valor.png)

   ○ **“Substituir valor”**: Para alterar um valor já existente por outro;

   I. Será exibido um campo para selecionar o valor a ser substituído e outro campo será exibido para a inserção do novo valor.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_substituir_valor.png)

   ○ **“Remover um valor”**: Para remover um valor específico em um metadado com a configuração “Permitir valores múltiplos" habilitada;

   I. Um campo para selecionar o valor a ser removido será exibido à direita.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_remover_um_valor.png)

   ○ **“Limpar valores”**: Para remover todos os valores de um “metadado”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_limpar_valores.png)

   ○ **“Copiar valor”**: Para fazer uma cópia dos valores a partir de um outro “metadado do item”;

   I. Será exibido um campo para selecionar o “metadado” do qual o valor será copiado. Importante ressaltar que os “tipos dos metadados” de origem e destino devem ser iguais. A tabela seguinte mostra as restrições entre as configurações dos “metadados” para que se possa realizar a cópia.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_copiar_valor.png)

   | Metadado destino                  | Metadado origem                   | É possível copiar |
   | --------------------------------- | --------------------------------- | ----------------- |
   | Simples                           | Simples                           | Sim               |
   | Múltiplo                          | Simples                           | Sim               |
   | Simples                           | Múltiplo                          | Não               |
   | Múltiplo                          | Múltiplo                          | Sim               |
   | Qualquer                          | Composto                          | Não               |
   | Simples                           | Filho Simples (metadado composto) | Sim               |
   | Múltiplo                          | Filho Simples (metadado composto) | Sim               |
   | Filho Simples (metadado composto) | Simples                           | Não               |
   | Filho Simples (metadado composto) | Múltiplo                          | Não               |

7. Ao concluir a configuração das alterações desejadas, clique no botão de “play” à direita para executar a ação;

   ● Ou clique no “ícone de cancelar” para cancelar a ação;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_botao_play.png)

8. Clique em “Concluir” quando concluir as ações desejadas.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_botao_concluir.png)

   > **Nota**: Além dos “metadados”, na “edição em massa” é possível alterar as seguintes configurações de cada item:
   >
   > **“Status”**: É possível alterar essa configuração para os valores: “Publicado”, “Privado”, “Rascunho” e “Lixo”;
   >
   > **“Permitir comentários”**: É possível alterar essa configuração para os valores: “Aberto” e “Fechado”.

###

---

## Excluir Itens em Massa

1. Selecione a “Coleção” que contém os “itens” que deseja excluir;

   ![Acesse o painel de controle](_assets\images\Selecao_Colecao.png)

2. Clique na “caixa de seleção” (localizada à esquerda das miniaturas dos itens) de cada um que deseja excluir ou clique em “Selecionar todos os itens na página”;

   ● Se desejar, também é possível selecionar todos os “itens da coleção”. Para isso, primeiro clique em “Selecionar todos os itens na página” e então clique em “Selecionar todos”.

   ![Acesse o painel de controle](_assets\images\Acoes_em_Massa_Editar_Itens_selecao.png)

3. À direita, clique em “Ações para seleção”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_Acoes_para_selecao.png)

4. Selecione “Enviar para lixeira” para excluir os “itens” selecionados;

   ○ Uma janela de confirmação será exibida, clique em “Continuar” para confirmar a operação.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_enviar_lixeira.png)

### Excluir Permanentemente ou restaurar Itens em Massa da Lixeira

1. Os arquivos enviados para a lixeira estão disponíveis na aba “Lixo” da “coleção”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_itens_no_lixo.png)

2. Clique na “caixa de seleção” (localizada à esquerda das miniaturas dos itens) de cada um que deseja deletar permanentemente ou clique em “Selecionar todos os itens na página”;

   ○ Se desejar, também é possível selecionar todos os “itens” que estão na lixeira. Para isso, primeiro clique em “Selecionar todos os itens na página” e então clique em “Selecionar todos”.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_selecao_itens_lixeira.png)

3. À direita, clique em “Ações para seleção”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_Lixeira_Acoes_para_selecao.png)

4. Clique em “Deletar permanentemente” para excluir os “itens” de forma irreversível;

   !>**Atenção**: Uma vez deletado permanentemente um “item”, não é possível o recuperar.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_Deletar_permanentemente.png)

5. Ou clique em “Restaurar do Lixo”, para restaurar os “itens” selecionados para a coleção.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_Restaurar_do_Lixo.png)

---

## Editar Itens em Sequencia

1. Selecione a “Coleção” que deseja para a edição dos “itens”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_itens_no_lixo.png)

2. Clique na “caixa de seleção” (localizada à esquerda das miniaturas dos “itens”) de cada um que deseja editar ou clique em “Selecionar todos os itens na página”;

   ● Se desejar, também é possível selecionar todos os “itens da coleção”. Para isso, primeiro clique em “Selecionar todos os itens na página” e então clique em “Selecionar todos”.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_selecao_itens.png)

3. À direita, clique em “Ações para seleção”;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_Acoes_para_selecao.png)

4. Selecione “Editar itens selecionados em sequência”;

   ![Acesse o painel de controle](_assets\images\editaritensselecionadosemmassa.png)

5. Edite os campos desejados;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_editar_metadados.png)

6. No “rodapé da página” é exibida uma barra de progresso com as informações:

   ○ “Item” atual e total de “itens”;

   ○ Última vez que as alterações realizadas foram salvas;

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_barra_progresso.png)

7. Ao concluir as alterações no “item” exibido, selecione:

   ○ **“Atualizar”**: As alterações realizadas no “item” serão salvas e o próximo “item” é exibido para edição;

   ○ **“Salvar como rascunho”**: O “item” tem seu “status” alterado para rascunho.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_concluir_alteracoes.png)

8. Quando chegar no último “item” clique em “Atualizar” e depois “Concluir”.

   ![Acesse o painel de controle](_assets\images\Acoes_em_massa_atualizar_concluir.png)

   > Nota: Por padrão, ao iniciar a edição em sequência, os “metadados do item” aparecem colapsados. Para expandir os “metadados” e visualizar os valores preenchidos de cada “item” existem dois caminhos: clicar em “Expandir todos” ou “clicar em um metadado por vez”.

## Importar itens

Importe vários “itens” com “metadados pré-configurados” e valores preenchidos com o [Importador .csv](https://tainacan.github.io/tainacan-wiki/#/es-mx/importers?id=importador-csv-items).

---

## Importar Taxonomias

Crie taxonomias com “vocabulários controlados” e “valores hierárquicos” utilizando o [Importador de Vocabulário](https://tainacan.github.io/tainacan-wiki/#/es-mx/importers?id=importador-csv-de-vocabulários-taxonomias).
