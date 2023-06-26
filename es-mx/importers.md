<div style="float: right; margin-left: 1rem;">
	<img 
		alt="Ícone de Importadores" 
		src="/_assets/images/icon_importers.png"
		width="40"
		height="40">
</div>

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

# Importadores

Os “importadores” são os recursos que permitem otimizar o processo de criação e atualização de “itens” em “coleções” no Tainacan, ou importar um “vocabulário controlado” existente.

## Importador CSV (Items)

O “Importador CSV” permite que usuários importem “itens” para uma “coleção” diretamente de um arquivo no formato “.csv”.

> Consulte também como importar Taxonomias para criar “vocabulários controlados” ou realizar a “importação de tesauros”.

### Parâmetros do CSV

O arquivo para envio deve ser um “.csv padrão”, em que cada linha abriga a informação de um “item”, e cada coluna abriga os valores para cada “metadado” em específico. Além disso, a primeira linha deve conter os “títulos” das colunas.

**Exemplo:**

| Coluna do Metadado 1 | Coluna do Metadado 2 | Coluna do Metadado 3 |
| -------------------- | -------------------- | -------------------- |
| Valor do Metadado 1  | Valor do Metadado 2  | Valor do Metadado 3  |
| Valor do Metadado 1  | Valor do Metadado 2  | Valor do Metadado 3  |

Quando o usuário inicia o processo de “importação”, deve-se escolher a codificação em que o arquivo “.csv” foi salvo (geralmente está em UTF-8), o caractere de separação das colunas e o caractere de compartimento da célula. Essas opções são configuradas quando o usuário cria o arquivo “.csv”, usando um programa de edição de planilhas (como Microsoft Excel ou LibreOffice Calc, por exemplo).

Nessa seção, o usuário também irá informar o caractere (ou caracteres) usado para separar múltiplos valores dentro de uma única célula (recomenda-se o uso do símbolo dual pipe: “||“).

Depois de configurar o importador e selecionar a “coleção de destino”, o arquivo “.csv” é enviado, e o usuário tem a chance de mapear as colunas presentes no “.csv” para os “metadados” presentes na “coleção de destino”.

Se o “metadado” não foi criado anteriormente na “coleção”, o usuário pode criar e mapear o “metadado” nesta mesma tela, ou escolher a opção “Criar Metadado” no mapeador. Se esta opção é selecionada, o Tainacan irá automaticamente criar o “metadado” quando o importador for executado.

> Veja como criar metadados automaticamente na seção abaixo para aprender como dizer ao Tainacan o tipo e os atributos de metadados a serem criados.

#### Colunas Especiais

Cada coluna do arquivo “.csv” deve ser mapeada para um “metadado” na “coleção de destino”. Entretanto, existem colunas especiais que podem ser usadas para configurar outros aspectos do “item”. Por exemplo, o “status do item” pode ser configurado como “público”, “rascunho” ou “privado”.

As colunas especiais que podem ser usadas são:

a. **“special_item_id”**: Informa o ID do “item” no banco de dados do Tainacan

○ O “special_item_id” de um “item” é gerado automaticamente pelo Tainacan quando o “item” é criado;

○ Cada “special_item_id” no Tainacan é único. Mesmo nos casos de duplicação ou clonagem de “itens”, um novo “special_item_id” é gerado;

○ Não é possível alterar um “special item_id” de um “item”;

○ Para atualizar um “item” existente via importador, esta coluna deve estar no arquivo “.csv” utilizado com o id dos “itens” que desejam ser alterados preenchidos. A opção “Item Repetido”, na tela de importador de arquivos “.csv”, deve estar preenchida com “Atualizar”. Para ignorar um “item” num arquivo “.csv” durante a importação, essa opção deve estar preenchida com “Ignorar”.

b. **“special_item_status”**: Informa o status do “Item”. Os valores possíveis são:

○ **“draft”** (rascunho);

○ **“private”** (privado);

○ **“publish”** (público).

c. **“special_document”**: permite que o usuário informe o documento do item. Consulte Importando arquivos e anexos;

d. **“special_attachments, special_attachments|REPLACE, special_attachments|APPEND”**: permite que o usuário informe os anexos.

> Consulte Importando arquivos e anexos;

e. **“special_comment_status”**: permite que o usuário informe se os “itens” podem receber ou não comentários. Os valores possíveis são:

○ **“open”** (aberto para comentários);

○ **“closed”** (fechado para comentários).

> **Nota**: Se nas configurações da “coleção” não estiver habilitada a função “Permitir comentários”, não será possível um usuário fazer comentários num “item”, por mais que ele tenha sido importado utilizando o valor “open” para esta coluna especial.

**Exemplo**:

| special_item_id | Coluna do Metadado 1 | Coluna do Metadado 2 | special_item_status | special_document                  | special_atachments                 |
| --------------- | -------------------- | -------------------- | ------------------- | --------------------------------- | ---------------------------------- |
| 001             | Valor do Metadado 1  | Valor do Metadado 2  | publish             | url:http://exemplo.br/abcd        | file:http://seusite.br/anexo1.frmt |
| 002             | Valor do Metadado 1  | Valor do Metadado 2  | draft               | file:http://seusite.br/item2.frmt | url:http://exemplo.br/abcd         |
| 003             | Valor do Metadado 1  | Valor do Metadado 2  | private             | text:texto de exemplo             | file:http://seusite.br/anexo3.frmt |

#### Importar arquivos e anexos

Se você também tem arquivos para importar que estão relacionados aos “itens” no seu arquivo “.csv”, você pode usar algumas colunas especiais para isso.

Use “special_document”, para definir o documento do seu “item”, e “special_attachments” para adicionar um ou mais anexos.

Os valores para “special_document” podem ser:

a. **“url”;**

b. **“file”;**

c. **“text”.**

**Exemplo**:

```
nome, special_document
Uma imagem,file:http://example.com/image.jpg
Um vídeo do youtube,url:http://youtube.com/?w=123456
Um texto,text:This is a sample text
```

Os valores para “special_attachments” são apenas uma lista de arquivos. Se você deseja adicionar muitos anexos, use o caractere separador que você definiu na opção de “separador de células multivaloradas” do seu arquivo “.csv”. Nos dois casos, você pode apontar um arquivo usando uma “URL”, ou apenas o nome do arquivo. Para apontar o nome do arquivo, você deve configurar essa opção para o Tainacan localizar os arquivos no seu servidor. Você pode enviar eles diretamente (via FTP, por exemplo) e o Tainacan irá adicioná-los aos seus “itens”.

**Exemplo**:

```
nome, special_attachments
Uma imagem,http://example.com/image.jpg
Várias imagens,http://example.com/image.jpg%7C%7Chttp://example.com/image2.jpg%7C%7Chttp://example.com/image3.jpg
Imagens enviadas por FTP,myfolder/image.jpg||myfolder/image2.jpg
```

O “special_attachments” possui duas variações, na presença do campo especial “special_item_id”:

- `special_attachments|REPLACE`: substitui os anexos existentes pela lista de arquivos informados no _.csv_;
- `special_attachments|APPEND`: opção padrão utilizada para adicionar os arquivos aos anexos do item;

---

#### Criar metadados automaticamente

Quando o usuário mapeia as colunas encontradas no arquivo “.csv” aos “metadados” presentes na coleção de destino, é possível selecionar a opção “Criar Metadado”, então o importador irá criar o “metadado” automaticamente durante o processamento do arquivo “.csv”.

Por padrão, o “metadado” criado será do tipo “Texto” e “público”, mas é possível informar ao Tainacan o tipo e outras opções do “metadado” no começo do arquivo “.csv”.

Na primeira linha, onde você define o nome de cada coluna, é possível adicionar algumas informações que serão usadas pelo importador para criar o “metadatum_id”.

Cada informação sobre o “metadado” deve ser separada pelo caractere “|“.

A primeira informação deve ser o “nome do metadado”, e na sequência o “tipo do metadado”.

Os “tipos de metadados” suportados nativamente atualmente são:

- `text` - Texto
- `textarea` - Texto Longo
- `taxonomy` - Taxonomia: quando esse tipo é usado, uma nova taxonomia será criada.
- `date` - Data: os valores devem ser informados no formato YYYY-MM-DD (2018-01-01).
- `numeric` - Numérico
- `selectbox` - Select Box
- `user` - Usuário
- `relationship` - Relacionamento: os valores devem ser a ID do item relacionado.
- `compound([*nome do metadado*|*tipo do metadado*,...])` - Metadado composto: a lista de metadados que compõe o metadado composto deve ser informado entre os parentes utilizando a mesma sintaxe para definir metadados simples

**Por exemplo**:

```
Nome,Assunto|taxonomy,Data de criação|date, "Avaliação|compound(Descrição|text,Pontuação|numeric)
```

#### Informações sobre o metadado de Taxonomia

Se uma das colunas do seu CSV tem valores para um “metadado de taxonomia” e esta “taxonomia” possui hierarquia, você pode informar essa hierarquia utilizando o sinal de >>.

**Por exemplo**:

```
nome, Categoria
Nome do item,Categoria Pai>>Categoria Filha>>Categoria Neta
```

> Lembrando que esta notação só irá funcionar se esta coluna for mapeada para um “metadado de Taxonomia”, ou se você estiver usando a técnica de “Criar metadados automaticamente” explicada acima, e marcando esta coluna como um “metadado de Taxonomia”.

Também é possível utilizar o “Importador de vocabulários” e, em uma segunda etapa, importar os “itens”. Caso siga esse caminho, a hierarquia já estará montada, e no seu “.csv” de itens não será necessário representá-la completamente. Basta inserir o “Termo” do último nível. Neste caso, o exemplo acima ficaria apenas:

```
nome, Categoria
Nome do item,Categoria Neta
```

#### Instruções para Metadados

Depois do “tipo de metadado”, você também pode informar outras instruções:

- `multiple` - Múltiplo: para metadados que permitem múltiplos valores
- `required` - Obrigatório: para metadados obrigatórios
- `display_yes` - Exibir na lista: habilitar metadado na visualização.
- `display_no` - Não exibir na lista: ocultar metadado na visualização.
- `display_never` - Nunca exibir metadado na visualização.
- `status_public` - Status público: metadado visível para todos
- `status_private` - Status privado: metadado visível apenas para editores
- `collection_key_yes` - Configurar valores deste metadado como único: os valores desse metadado não se repetem em itens nessa coleção.

**Exemplo de várias instruções combinadas**:

```
Nome,Assunto|taxonomy|multiple|required,Número de Registro|numeric|required|collection_key_yes|status_private
```

### Importar CSV para o Tainacan

1. Acesse o painel de controle do _WordPress_;

   ![Acesse o painel de controle](_assets\images\Painel_Adm_WordPress.png)

2. Na barra lateral esquerda, clique em Tainacan;

   ![Acesse o painel de controle](_assets\images\Painel_Acesso_Tainacan.png)

3. Acesse a seção “Importadores”;

   ![Acesse o painel de controle](_assets\images\Acesso_Importadores.png)

4. Na seção “Importadores Disponíveis”, selecione “CSV”;

   ![Acesse o painel de controle](_assets\images\Acesso_Importador_CSV.png)

5. Faça o upload do arquivo “.csv” no campo “Arquivo Fonte”;

   ![Acesse o painel de controle](_assets\images\Importador_Seleção_Arquivo_CSV.png)

6. Selecione ou crie uma “Coleção Destino” para indicar onde os “itens” serão criados;

   \*.Selecionando criar uma nova coleção em branco, ao concluir a “coleção”, você será redirecionado para o “Importador” novamente.

   ![Acesse o painel de controle](_assets\images\Importador_Seleção_Colecao.png)

7. Configure os campos a seguir de acordo com as configurações realizadas no seu arquivo “.csv”:

   a. **“Delimitador csv”**: caractere que separa valores;

   b. **“Delimitador de metadado multi-valorado”**: caractere que separa valores dentro de uma mesma célula;

   c. **“Delimitador de texto”**: caractere que delimita todos os valores dentro de uma mesma célula;

   d. **“Codificação do arquivo”**: parâmetro que determina a codificação dos valores de texto do arquivo (geralmente UTF-8, garanta que o arquivo “.csv” esteja codificado conforme as opções disponíveis no importador);

   e. **“Valor vazio”**: expressão utilizada no arquivo “.csv” para representar “metadados” que serão limpos durante atualização de “itens” já existentes numa “coleção”. A expressão padrão é [empty value].

   ![Acesse o painel de controle](_assets\images\Importador_Parametros_Importacao.png)

8. Configure estes campos de acordo com suas preferências para importação:

   a. **“Item repetido”**: Determina o comportamento do Tainacan ao identificar “itens” idênticos no processo de importação. Selecione Atualizar para que o “item” receba os valores do arquivo “.csv” ou selecione “Ignorar” para que o “item” já existente na “coleção” não seja modificado;

   b. **“Caminho para o servidor”**: O Importador permite que vários “itens” sejam inseridos em uma “coleção” diretamente de um arquivo “.csv”. Consulte Importador-csv#Importando arquivos e anexos para saber como configurar seu arquivo “.csv” corretamente.

   I. De acordo com a documentação, aponte a URL no campo caminho para o servidor.

   ![Acesse o painel de controle](_assets\images\Importador_Parametros_Importacao.png)

9. Clique em “Próximo”;

   ![Acesse o painel de controle](_assets\images\Importador_CSV_Proximo.png)

10. Na tela “Mapeamento de Metadados” é possível realizar o processo de-para entre os “metadados” previamente configurados no “.csv”;

    ![Acesse o painel de controle](_assets\images\Importador_CSV_Tela_Mapeamento.png)

11. Selecione “metadados” identificados no “.csv” (à esquerda) e seu correspondente da “coleção destino” (à direita) no Tainacan;

    <iframe
        width="560"
        height="513" 
        src="https://www.youtube.com/embed/201a_2snaVQ" title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen>
    </iframe>

    ● Caso algum “metadado” ainda não exista na “coleção”, selecione “Criar metadado”.

    ○ Ou se você desejar criar todos de uma vez, clique em “Marcar todos os metadados para serem criados”.

    ![Acesse o painel de controle](_assets\images\Marcar_todos_os_metadados_para_serem_criados.png)

12. Para criar novos “metadados” na “coleção”, selecione “Adicionar mais metadados”. Consulte Metadados para saber mais sobre a criação e os “tipos de metadados” existentes;

    !>**Atenção**: Neste processo, “metadados” do arquivo “.csv” não serão criados se não tiverem um “metadado” apontado na coleção destino.

    !>**Atenção**: As informações de cada “metadado” em cada “item” dependem da criação de seu respectivo “metadado” neste processo.

    !>**Atenção**: Uma vez criado, não é possível alterar o “tipo do Metadado”. Por exemplo, alterar um “metadado” do tipo “Texto” para “Texto Longo”, ou “Numérico” para “Data”.

    § Consulte Características gerais de metadados para saber mais.

13. Ao concluir, clique em “Executar” para iniciar o “processo de importação”;

    ![Acesse o painel de controle](_assets\images\Importador_CSV_Mapeamento_Executar_Importacao.png)

14. Você será redirecionado para a tela de “Atividades do Repositório” onde poderá acompanhar o andamento do “processo de importação”. Esta tela exibe todos os processos de importação já realizados nesta instalação, do mais recente para o mais antigo. Quando o processo for concluído, serão exibidos o “arquivo de registro” e, em caso de erros, o “arquivo de registro de erros”;

    ![Acesse o painel de controle](_assets\images\Importador_CSV_Atividades_Processos.png)

15. Uma vez terminado com sucesso o “processo de importação”, vá para a “coleção” destino da importação e revise se os “metadados”, “itens” e “valores” estão de acordo com o esperado.

### Importar CSV de vocabulários (Taxonomias)

Este importador permite que usuários adicionem termos a uma “taxonomia”. Essa ferramenta é útil para a importação de “vocabulários controlados” para uma instalação do Tainacan.

---

#### Como configurar o CSV

O formato de arquivo para a “importação de vocabulários” é o “.csv - comma separated values” (valores separados por vírgula).

Para cada “termo” você pode informar o nome do termo e sua definição, por exemplo:

Termo 1,Definição do termo 1

Termo 2,Definição do termo 2

Termo 3,Definição do termo 3

Também é possível informar a hierarquia. Para isso, deixe as células à esquerda vazias, indicando o nível de hierarquia entre estes “termos”.

A planilha deve ficar parecida com este exemplo:

|         |                      |                       |                                |
| ------- | -------------------- | --------------------- | ------------------------------ |
| Termo 1 | Definição do Termo 1 |                       |                                |
| Termo 2 | Definição do Termo 2 |                       |                                |
|         | 1 Filho do Termo 2   | Definição desse termo |                                |
|         | 2 Filho do Termo 2   | Definição desse termo |                                |
|         |                      | 1 Neto do Filho 2     | Definição do 1 Neto do Filho 2 |
| Termo 3 | Definição do Termo 3 |                       |                                |
| Termo 4 | Definição do Termo 4 |                       |                                |

Essa mesma planilha, quando salva no formato “.csv”, deve se parecer com este exemplo:

```
Term 1,Definition of term 1,,

Term 2,Definition of term 2,,

,1st Child of term 2,Definition of this term,

,2nd Child of term 2,Definition of this term,

,,Gran child,Definition of grand child

Term 3,Definition of term 3,,

Term 4,Definition of term 4,,
```

#### Enviar o CSV para o Tainacan

Uma vez terminada a criação do seu arquivo “.csv” com os termos desejados, siga estes passos:

1. Acesse o painel de controle do _WordPress_;

   ![Acesse o painel de controle](_assets\images\Painel_Adm_WordPress.png)

2. Na barra lateral esquerda, clique em Tainacan;

   ![Acesse o painel de controle](_assets\images\Painel_Acesso_Tainacan.png)

3. Acesse a seção “Importadores”;

   ![Acesse o painel de controle](_assets\images\Acesso_Importadores.png)

4. Na seção “Importadores Disponíveis”, selecione “Vocabulário CSV”;

   ![Acesse o painel de controle](_assets\images\Acesso_Importador_Vocabulario_CSV.png)

5. Configure o campo “Delimitador CSV” de acordo com o caractere delimitador do seu arquivo “.csv”;

   ![Acesse o painel de controle](_assets\images\Importador_Vocabulario_CSV_parametros.png)

6. Selecione o arquivo “.csv” para upload;

   ![Acesse o painel de controle](_assets\images\Importador_Vocabulario_CSV_selecao_arquivo.png)

7. Crie ou escolha a “Taxonomia” de destino. Consulte Taxonomias para saber mais;

   ![Acesse o painel de controle](_assets\images\Importador_Vocabulario_CSV_selecao_taxonomia_destino.png)

8. Clique em “Executar”;

   ![Acesse o painel de controle](_assets\images\Importador_Vocabulario_CSV_Executar.png)

9. Você será redirecionado para a tela de “Atividades do Repositório”, onde poderá acompanhar o andamento do “processo de importação”. Esta tela exibe todos os “processos de importação” já realizados nesta instalação, do mais recente para o mais antigo. Quando o processo for concluído, serão exibidos o “arquivo de registro” e, em caso de erros, o “arquivo de registro de erros;

10. Uma vez terminado com sucesso o “processo de importação do vocabulário”, vá para a seção de “Taxonomias” e revise se a “Taxonomia” e os “Termos” foram importados como o esperado.

### Importador teste

O “Importador teste” é uma ferramenta útil para usuários que desejam testar funcionalidades do Tainacan, seja para conhecer melhor do que ela é capaz, seja para seguir um roteiro de testes pré-lançamento. Com ele, podemos “criar coleções” com “itens”, “metadados” e “filtros” genéricos de maneira rápida.

Ao contrário dos importadores de CSV, não estamos realmente “importando” dados de uma fonte externa, mas sim deixando por conta do Tainacan que crie tudo isso. Portanto, as configurações são bem simples:

1. Acesse o painel de controle do _WordPress_;

   ![Acesse o painel de controle](_assets\images\Painel_Adm_WordPress.png)

2. Na barra lateral esquerda, clique em Tainacan;

   ![Acesse o painel de controle](_assets\images\Painel_Acesso_Tainacan.png)

3. Acesse a seção “Importadores”;

   ![Acesse o painel de controle](_assets\images\Acesso_Importadores.png)

4. Na seção “Importadores disponíveis”, selecione “Teste”;

   ![Acesse o painel de controle](_assets\images\Acesso_Importador_Teste.png)

5. Preencha os primeiros campos como desejar. Se for criada uma segunda “coleção”, “metadados de relacionamento” poderão linkar seus “itens”;

   ![Acesse o painel de controle](_assets\images\Importador_Teste_Parametros.png)

6. Se deseja importar imagens do LoremFlickr para os seus “itens”, é possível configurar dimensões específicas (“altura” x “largura”) ou deixar 0 para que elas sejam aleatórias. Você também pode definir um “termo” de busca para “filtrar” o conteúdo da imagem.

   a. Embora diversas, as imagens fornecidas pelo LoremFlickr possuem tamanho bem reduzido. Isso significa que mesmo não passando parâmetros elas podem vir pequenas e se comportar de maneira inesperada em alguns “modos de visualização”, caso estes esperem recortes maiores que o mínimo criado pelo “importador”

   ![Acesse o painel de controle](_assets\images\Importador_Teste_Parametros_LoremFLickr.png)

7. Realize a importação clicando em “Executar”;

   ![Acesse o painel de controle](_assets\images\Importador_Teste_Executar_Importacao.png)

8. Uma vez terminado com sucesso o “processo de importação”, vá para as “coleções” criadas e revise se os “metadados”, “itens” e “valores” estão de acordo com o esperado.
