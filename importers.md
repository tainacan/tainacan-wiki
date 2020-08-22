?> _TODO_  This page is in *Brazilian Portuguese* only so far. **If you can, please help us translate it to *English*.**

<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Importadores" 
		src="_assets/images/icon_importers.png"
		width="40"
		height="40">
</div>

# Importadores

?> _TODO_ Fazer introdução para o assunto importadores antes de listar eles


<!-- tabs:start -->

#### ** Importador CSV **

## Importador CSV (Items)

O **Importador CSV** permite que usuários importem itens para uma coleção diretamente de um arquivo *.csv*. 

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=199"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

> Consulte também como [importar Taxonomias](#importador-csv-de-vocabulários-taxonomias) para criar vocabulários controlados ou realizar a importação de tesauros.

### *.csv* Parameters

The file to be uploaded must be a standard .csv, where each row contains the information for an item, and each column the values for each specific metadata. In addition, the first row contains the column headings. 

Example:

| Item Column  | Metadata Column 1 | Metadata Column 2 |
|-------------------|----------------------|----------------------|
| Item 1 | Value of Metadata 1  | Value of Metadata 2  |
| Item 2 | Value of Metadata 1  | Value of Metadata 2  |

When you start the import process, you must choose the encoding in which the *.csv* file was saved (usually in UTF-8), the column separator character, and the cell compartment character. These options are set when the user creates the *.csv* file, using a spreadsheet editing program (such as *Microsoft Excel* or *LibreOffice Calc*, for example).

In this section the user will also enter the character (or characters) used to separate multiple values within a single cell (it is recommended to use the pipe symbol: "`|`").

After configuring the importer and selecting the destination collection, the *.csv* file is uploaded and the user has the chance to map the columns present in the *.csv* to the metadata present in the destination collection. 

If the metadata was not previously created in the collection, the user can create and map the metadata in this same screen, or choose the option `Create Metadata` in Mapper. If this option is selected, Tainacan will automatically create the metadata when the importer runs.

> (See [how to automatically create metadata](#criar-metadados-automaticamente) in the section below to learn how to tell Tainacan the type and attributes of metadata to create).

#### Special Columns

Each column of the *.csv* file must be mapped to a metadata in the target collection. However, there are special columns that can be used to configure other aspects of the item. For example, the item status can be set to public, draft, or private for editors.

The special columns that can be used are:

* `special_item_status` - Informs about the status of the item. Possible values are:
  * `draft`
  * `private`
  * `publish`
* `special_item_id` - The **item ID** in the Tainacan database. This function is useful for re-importing items and allowing you to decide whether to update existing items or ignore them and add new items.
* `special_document` - allows you to enter the item document. See [importing files and attachments](#importar-arquivos-e-anexos).
* `special_attachments` - allows you to enter attachments. See [importing files and attachments](#importar-arquivos-e-anexos).
* `special_comment_status` - allows the user to inform if the items can receive comments or not, the options are: "open" or "closed" (default).

Exemplo:

| Item column 	| Metadata Column 1 | Metadata Column 2 |	special_item_status | special_item_id |	special_document 	              | special_atachments                 |
|-------------------|----------------------|----------------------|---------------------|-----------------|-----------------------------------|------------------------------------|
| Item 1 | Value of Metadata 1  | Value of Metadata 2  |	publish 	        | 01 	          | url:http://exemplo.br/abcd 	      | file:http://seusite.br/anexo1.frmt |
| Item 2 | Value of Metadata 1  | Value of Metadata 2  |	draft 	            | 02 	          | file:http://seusite.br/item2.frmt |	url:http://exemplo.br/abcd         |
| Item 3 | Value of Metadata 1  | Value of Metadata 2  |	private 	        | 03 	          | text:texto de exemplo             | file:http://seusite.br/anexo3.frmt |

#### Import files and attachments

If you have files to import that are related to the items in your *.csv* file, you can use some special columns for that.

Use `special_document`, to define the document for your item, and `special_attachments` to add one or more attachments.

The values for `special_document` can be:

* url
* file
* text

Example:

```
name, special_document
an image,file:http://example.com/image.jpg
a youtube video,url:http://youtube.com/?w=123456
a text,text:This is a sample text
```

Os valores para `special_attachments` são apenas uma lista de arquivos. Se você deseja adicionar muitos anexos, use o caractere separador que você definiu na opção de *separador de células multivaloradas* do seu arquivo *.csv*. Nos dois casos você pode apontar um arquivo usando uma URL, ou apenas o nome do arquivo. Para apontar o nome do arquivo, você deve configurar essa opção para o Tainacan localizar os arquivos no seu servidor. Você pode enviar eles diretamente (via FTP, por exemplo) e o Tainacan irá adicionar eles aos seus itens.

Exemplo:

```
nome, special_attachments
Uma imagem,http://example.com/image.jpg
Várias imagens,http://example.com/image.jpg%7C%7Chttp://example.com/image2.jpg%7C%7Chttp://example.com/image3.jpg
Imagens enviadas por FTP,myfolder/image.jpg||myfolder/image2.jpg
```

#### Vídeo Tutorial: Importar arquivos e anexos

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=451"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

-----

#### Criar metadados automaticamente

Quando o usuário mapeia as colunas encontradas no arquivo .csv aos metadados presentes na coleção de destino, é possível selecionar a opção `Criar Metadado`, então o importador irá criar o metadado automaticamente durante o processamento do arquivo *.csv*.

Por padrão, o metadado criado será do tipo Texto e público, mas é possível informar ao Tainacan o tipo e outras opções do metadado no começo do arquivo *.csv*.

Na primeira linha, onde você define o nome de cada coluna, é possível adicionar algumas informações que serão usadas pelo importador para criar o `metadatum_id`.

Cada informação sobre o metadado deve ser separada pelo caractere "`|`".

A primeira informação deve ser o *nome do metadado*, e na sequência o *tipo do metadado*,

Os tipos de metadados suportados nativamente atualmente são:

* `text` - Texto
* `textarea` - Texto Longo
* `taxonomy` - Taxonomia: quando esse tipo é usado, uma nova taxonomia será criada.
* `date` - Data: os valores devem ser informados no formato YYYY-MM-DD (2018-01-01).
* `numeric` - Numérico
* `relationship` - Relacionamento: os valores devem ser a ID do item relacionado.

Por exemplo:

```
Nome,Assunto|taxonomy,Data de criação|date
```

#### Informações sobre o metadado de Taxonomia

Se uma das colunas do seu CSV tem valores para um **metadado de taxonomia** e esta taxonomia possui hierarquia, você pode informar essa hierarquia utilizando o sinal de `>>`.

Por exemplo:

```
nome, Categoria
Nome do item,Categoria Pai>>Categoria Filha>>Categoria Neta
```

> Lembrando que esta notação só irá funcionar se esta coluna for mapeada para um **metadado de Taxonomia**, ou se você estiver usando a técnica de **Criar metadados automaticamente** explicada acima, e marcando esta coluna como um **metadado de Taxonomia**.

Também é possível utilizar o Importador de vocabulários e, em uma segunda etapa, importar os itens. Caso siga esse caminho, a hierarquia já estará montada, e no seu *.csv* de itens não será necessário representá-la completamente. Basta inserir o Termo do último nível. *Neste caso, o exemplo acima ficaria apenas*:

```
nome, Categoria
Nome do item,Categoria Neta
```

#### Instruções para Metadados

Depois do tipo de metadado, você também pode informar outras instruções:

* `multiple` - Múltiplo: para metadados que permitem múltiplos valores
* `required` - Obrigatório: para metadados obrigatórios
* `display_yes` - Exibir na lista: habilitar metadado na visualização.
* `display_no` - Não exibir na lista: ocultar metadado na visualização.
* `display_never` - Nunca exibir metadado na visualização.
* `status_public` - Status público: metadado visível para todos
* `status_private` - Status privado: metadado visível apenas para editores
* `collection_key_yes` - Configurar valores deste metadado como único: os valores desse metadado não se repetem em itens nessa coleção.

Exemplo de várias instruções combinadas:

```
Nome,Assunto|taxonomy|multiple|required,Número de Registro|numeric|required|collection_key_yes|status_private
```

### Importar .csv para o Tainacan

1. Acesse o painel de controle do *WordPress*;
2. Na barra lateral esquerda, clique em Tainacan;
3. Acesse a seção **Importadores**;
4. Na seção **Importadores Disponíveis**, selecione `CSV`;
5. Configure os campos a seguir de acordo com as configurações realizadas no seu aquivo *.csv*:
  * **Delimitador csv**: caractere que separa valores;
  * **Delimitador de metadado multi-valorado**: caractere que separa valores dentro de uma mesma célula;
  * **Delimitador de texto**: caractere que delimita todos os valores dentro de uma mesma célula
  * **Codificação do arquivo**: parâmetro que determina a codificação dos valores de texto do aquivo. (Geralmente **UTF-8**, garanta que o arquivo *.csv* esteja codificado conforme as opções disponíveis no importador).
6. Configure estes campos de acordo com suas preferências para importação:
  * **Item repetido**: Determina o comportamento do Tainacan ao identificar itens idênticos no processo de importação. Selecione Atualizar para que o item receba os  valores do arquivo .csv ou seleciona Ignorar para que o item já existente na coleção não seja modificado.
  * **Importando Anexos**: O Importador permite que vários itens sejam inseridos em uma coleção diretamente de um arquivo .csv. Consulte Importador-csv#Importando  arquivos e anexos para saber como configurar seu arquivo .csv corretamente.
    1. De acordo com a documentação, aponte a URL no campo caminho para o servidor.
7. Selecione ou crie uma **Coleção Destino** para indicar onde os itens serão criados;
   *. Selecionando criar uma nova coleção em branco, ao `Concluir` a coleção, você será redirecionado para o **Importador** novamente.
8. Faça o upload do arquivo *.csv* no campo **Arquivo Fonte**.
9. Clique em `Próximo`;
10. Na tela Mapeamento de Metadados é possível realizar o processo de-para entre os metadados previamente configurados no *.csv*;
  1. Selecione metadados identificados no *.csv* (à esquerda) e seu correspondente da *coleção destino* (à direita) no Tainacan.
  2. Caso o metadado ainda não exista na coleção, selecione **"Criar metadado"**.
  3. Para criar novos metadados na coleção, selecione `Adicionar mais metadados`; (Consulte [Metadados](/pt-br/metadata) para saber mais sobre a criação e os tipos de metadados  existentes)
  
  !> **Atenção**: Neste processo, metadados do arquivo *.csv* não serão criados se não tiverem um metadado apontado na coleção destino.
  
  !> **Atenção**: As informações de cada metadado em cada item dependem da criação de seu respectivo metadado neste processo.
  
  !> **Atenção**: Uma vez criado, não é possível alterar o tipo do Metadado. (Por exemplo, alterar um metadado do tipo Texto para Texto Longo, ou Numérico para Data).
    * Consulte [Características gerais de metadados](/pt-br/metadata#características-gerais-de-metadados) para saber mais.
11. Ao concluir, clique em `Executar` para iniciar o **processo de importação**;
12. Você será redirecionado para a tela de **Atividades do Repositório** onde poderá acompanhar o andamento do *processo de importação*.
     Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo.
     Quando o processo for concluído serão exibidos o **arquivo de registro** e, em caso de erros, o **arquivo de registro de erros**.
13. Uma vez terminado com sucesso o processo de importação, vá para a coleção destino da importação e revise se os **metadados**, **itens** e **valores** estão de acordo com  esperado.

#### ** Importador Vocabulários **

## Importador CSV de Vocabulários (Taxonomias)

Este importador permite que usuários adicionem termos a uma taxonomia. Essa ferramenta é útil para a importação de vocabulários controlados para uma instalação do Tainacan.

#### Vídeo Tutorial: Importação de Termos e Taxonomias

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/B76ENqOEZfw?start=83"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

-----

### Como configurar o .csv

O formato de arquivo para a importação de vocabulários é o *.csv* - *comma separated values* (valores separados por vírgula).

Para cada termo você pode informar o nome do termo e sua definição, por exemplo:

```
Termo 1,Definição do termo 1
Termo 2,Definição do termo 2
Termo 3,Definição do termo 3
```

Também é possível informar a hierarquia. Para isso, deixe as células à esquerda vazias, indicando o nível de hierarquia entre estes termos.

A planilha deve ficar parecida com este exemplo:

|           |                       |                           |                                |
|-----------|-----------------------|---------------------------|--------------------------------|
| Termo 1 	| Definição do Termo 1 	|                           | 	                             |
| Termo 2 	| Definição do Termo 2 	| 	                        |                                |
| 	        | 1 Filho do Termo 2 	| Definição desse termo     |                                |
| 	        | 2 Filho do Termo 2 	| Definição desse termo 	|                                |
| 		    |                       | 1 Neto do Filho 2 	    | Definição do 1 Neto do Filho 2 |
| Termo 3 	| Definição do Termo 3 	| 	                        |                                |
| Termo 4 	| Definição do Termo 4 	| 	                        |                                |

Essa mesma planilha, quando salva no formato .csv, deve se parecer com este exemplo:
```
Term 1,Definition of term 1,,
Term 2,Definition of term 2,,
,1st Child of term 2,Definition of this term,
,2nd Child of term 2,Definition of this term,
,,Gran child,Definition of grand child
Term 3,Definition of term 3,,
Term 4,Definition of term 4,,
```

----

### Enviar o .csv para o Tainacan

Uma vez terminada a criação do seu arquivo *.csv* com os termos desejados, siga estes passos:

1. Acesse o painel de controle do WordPress
2. Na barra lateral esquerda, clique em Tainacan
3. Acesse a seção *Importadores*;
4. Na seção **Importadores Disponíveis**, selecione `Vocabulário CSV`;
5. Configure o campo **Delimitador csv** de acordo com as caractere delimitador do seu arquivo .csv:
6. Selecione o arquivo *.csv* para upload;
7. Crie ou escolha a *Taxonomia* de destino (Consulte [Taxonomias](/pt-br/taxonomies) para saber mais);
8. Clique em `Executar`;
9. Você será redirecionado para a tela de **Atividades do Repositório** onde poderá acompanhar o andamento do *processo de importação*.
  1. Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo.
  2. Quando o processo for concluído serão exibidos o **arquivo de registro** e, em caso de erros, o **arquivo de registro de erros**.
10. Uma vez terminado com sucesso o processo de importação do vocabulário, vá para a seção de **Taxonomias** e revise se a *Taxonomia* e os *Termos* foram importados como o esperado.

<!-- tabs:end -->
