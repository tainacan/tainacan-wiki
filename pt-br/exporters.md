<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Exportadores" 
		src="_assets/images/icon_exporters.png"
		width="40"
		height="40">
</div>

# Exportadores

Com o Tainacan é possível exportar suas coleções ou suas Taxonomias (Vocabulário Controlado) em um arquivo de planilha CSV.

## Exportar sua coleção para um arquivo CSV

1. Acesse o painel de *Controle do WordPress*:

   ![Acesse o painel de controle](\_assets\images\exportador_01.png)

   

2. Na barra lateral esquerda clique em Tainacan:

   ![Selecione Tainacan](\_assets\images\exportador_02.png)

   

3. Clique em "Exportadores":

   ![Selecione Exportador](\_assets\images\exportador_03.png)

   

4. Escolha a opção "CSV":

   ![Selecione CSV](\_assets\images\exportador_04.png)

   

5. Nesta página você pode configurar os seguintes parâmetros do CSV:

   ![Configurando CSV](\_assets\images\exportador_05.png)

   

   ### Parâmetros

   

   Delimitador CSV: O caractere usado para separar cada coluna no seu CSV (por ex. , ou ;);

   Delimitador de metadado multi-valorado: O caractere utilizado para separar cada valor dentro de uma célula de múltiplos valores (por ex. | |). Note que o metadado destino precisa aceitar múltiplos valores;

   Delimitador de texto: O caractere que delimita o conteúdo de cada célula no seu CSV (por ex. ");

   Coleção de origem: a coleção que você deseja importar;

   Mapeamento: o tainacan permite que você mapeie seus metadados para o padrão Dublin-core. Nesta opção você define se os metadados mapeados previamente devem vir com os marcadores do padrão;

   Envie-me um e-mail quando concluído: Este processo pode levar algum tempo. Marque esta opção para receber um e-mail quando o processo estiver completo. Você também pode acompanhar o status do processo visitando Atividades Página.

   

6. Após realizar as configurações, clique em Executar. Você será redirecionado para a tela de **Atividades do Repositório** onde poderá acompanhar o andamento do *processo de importação*. Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo. Quando o processo for concluído, serão exibidos o **arquivo de registro** e, em caso de erros, o **arquivo de registro de erros**.

   ![Atividades do Repositório](\_assets\images\exportador_06.png)

   

   ### Processos

   

   Tipo de ação: nome da ação em execução ou executado, neste caso "CSV Exportador";

   Progresso: porcentagem concluída da ação;

   Enfileirado em: data em que a ação entrou na fila;

   Coleção de destino: Coleção que está sendo exportada;

   Exportado por: usuário responsável pela exportação;

   Arquivo de registro: acesso ao arquivo de registro da exportaçãoÚltima atualização: data da última atualização do processo de exportação;

   Download: quando o processo chega ao fim, o sistema disponibiliza o arquivo em csv para download, bastando clicar no link. 

   

7. No final do processo, clique no link "Download" para baixar o arquivo:

   ![Download](\_assets\images\exportador_07.png)

   



