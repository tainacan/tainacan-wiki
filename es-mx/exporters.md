<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Exportadores" 
		src="_assets/images/icon_exporters.png"
		width="40"
		height="40">
</div>

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

# Exportadores

Com o Tainacan é possível exportar suas coleções ou suas Taxonomias (Vocabulário Controlado) em um arquivo de planilha CSV.

## Exportar sua coleção para um arquivo CSV

1. Acesse o painel de _Controle do WordPress_:

   ![Acesse o painel de controle](_assets\images\exportador_01.png)

2. Na barra lateral esquerda clique em Tainacan:

   ![Selecione Tainacan](_assets\images\exportador_02.png)

3. Clique em "Exportadores":

   ![Selecione Exportador](_assets\images\exportador_03.png)

4. Escolha a opção "CSV":

   ![Selecione CSV](_assets\images\exportador_04.png)

5. Nesta página você pode configurar os seguintes parâmetros do CSV:

   ![Configurando CSV](_assets\images\exportador_05.png)

   a. **“Delimitador CSV”**: O caractere usado para separar cada coluna no seu “CSV”. (por ex. , ou ;);

   b. **“Delimitador de metadado multi-valorado”**: O caractere utilizado para separar cada valor dentro de uma célula de múltiplos valores (por ex. | |). Note que o “metadado” destino precisa aceitar múltiplos valores;

   c. **“Delimitador de texto”**: O caractere que delimita o conteúdo de cada célula no seu CSV (por ex. ");

   d. **“Coleção de origem”**: a coleção que você deseja importar;

   e. **“Mapeamento”**: o Tainacan permite que você mapeie seus “metadados” para o padrão “Dublin-Core”. Nesta opção você define se os “metadados” mapeados previamente devem vir com os marcadores do padrão;

   f. **“Envie-me um e-mail quando concluído”**: Este processo pode levar algum tempo. Marque esta opção para receber um e-mail quando o processo estiver completo. Você também pode acompanhar o “status do processo” visitando “Atividades Página”.

6. Após realizar as configurações, clique em Executar. Você será redirecionado para a tela de **Atividades do Repositório** onde poderá acompanhar o andamento do _processo de importação_. Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo. Quando o processo for concluído, serão exibidos o **arquivo de registro** e, em caso de erros, o **arquivo de registro de erros**.

   ![Atividades do Repositório](_assets\images\exportador_06.png)

   a. **“Tipo de ação”**: nome da ação em execução ou executado, neste caso "CSV Exportador";

   b. **“Progresso”**: porcentagem concluída da ação;

   c. **“Enfileirado em”**: data em que a ação entrou na fila;

   d. **“Coleção de destino”**: coleção que está sendo exportada;

   e. **“Exportado por”**: usuário responsável pela exportação;

   f. **“Arquivo de registro”**: acesso ao arquivo de registro da exportação;

   g. **“Última atualização”**: data da última atualização do processo de exportação.

   h. **“Download”**: quando o processo chega ao fim, o sistema disponibiliza o arquivo em “csv” para download, bastando clicar no link.

7. No final do processo, clique no link "Download" para baixar o arquivo:

   ![Download](_assets\images\exportador_07.png)

## Exportação de vocabulários controlados

1. Acesse o “painel de controle” do WordPress;

   ![Acesse o painel de controle](_assets\images\exportador_01.png)

2. Na barra lateral esquerda, clique em “Tainacan”;

   ![Selecione Tainacan](_assets\images\exportador_02.png)

3. Clique em "Exportadores";

   ![Selecione Exportador](_assets\images\exportador_03.png)

4. Escolha a opção "Vocabulary CSV";

   ![Selecione Exportador](_assets\images\exportador_116.png)

5. Nesta página você pode configurar os seguintes parâmetros do “CSV”:

   ![Selecione Exportador](_assets\images\exportador_117.png)

   a. **“Delimitador CSV”**: O caractere usado para separar cada coluna no seu “CSV” (por ex. , ou ;);

   b. **“Taxonomia de origem”**: a “Taxonomia” que você deseja exportar;

   c. **“Envie-me um e-mail quando concluído”**: Este processo pode levar algum tempo. Marque esta opção para receber um e-mail quando o “processo” estiver completo. Você também pode acompanhar o “status do processo” visitando as “Atividades do Repositório”.

6. Após realizar a configuração dos parâmetros, clique em "Executar". Você será redirecionado para a tela de “Atividades do Repositório” onde poderá acompanhar o andamento do “processo de importação”. Esta tela exibe todos os “processos de importação” já realizados nesta instalação, do mais recente para o mais antigo. Quando o “processo” for concluído, serão exibidos o “arquivo de registro” e, em caso de erros, o “arquivo de registro de erros”;

   ![Selecione Exportador](_assets\images\exportador_118.png)

   a. **“Tipo de ação”**: nome da ação em execução ou executado, neste caso "Vocabulary CSV Exportador";

   b. **“Progresso"**: porcentagem concluída da ação;

   c. **“Enfileirado em”**: data em que a ação entrou na fila;

   d. **“Taxonomia de destino”**: “Taxonomia” que está sendo exportada;

   e. **“Arquivo de registro”**: acesso ao arquivo de registro da exportação;

   f. **“Última atualização”**: data da última atualização do “processo de exportação”;

   g. **“Download”**: quando o processo chega ao fim, o sistema disponibiliza o arquivo em “csv” para download, bastando clicar no link.

7. No final do processo, clique no link "Download" para baixar o arquivo.

   ![Selecione Exportador](_assets\images\exportador_119.png)
