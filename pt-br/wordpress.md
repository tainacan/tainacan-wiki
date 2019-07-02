# Como instalar o wordpress no windows #

## Baixando ##

Para iniciar, vamos até o link https://br.wordpress.org/download/ e vamos baixar o **wordpress** para **windows**.

![](/_assets/images/wordpress_01.png)

Na figura acima, clique em **Baixar o WordPress 5.2.1** para fazer o download. Ao concluir o processo, vamos iniciar a instalação descompactando o arquivo baixado.

<br><br>

![](/_assets/images/wordpress_02.png)
**Descompactando**

No arquivo compactado, clique com o botão direito e depois em **Extrair tudo…**. Aguarde a descompactação terminar.

<br><br>

![](/_assets/images/wordpress_03.png)

Abra a pasta descompactada, clique com o botão direito na pasta **wordpress** e depois em **Copiar**.

<br><br>

![](/_assets/images/wordpress_04.png)

Agora vá para `C:/xampp/htdocs`, clique com o botão direito dentro da pasta e depois clique em **Colar**.

<br><br>

![](/_assets/images/wordpress_05.png)

Veja na imagem acima a pasta, já com o processo de transferência concluído.

<br><br>

![](/_assets/images/wordpress_06.png)

Agora, para este projeto, nós iremos mudar o nome da pasta **wordpress** para **projeto_teste**. Fique à vontade para colocar o nome que achar melhor nesta pasta, de preferência o nome do projeto que você está criando.

<br><br>

## Criando um novo banco de dados ##

![](/_assets/images/wordpress_07.png)

Pronto. O **wordpress** já foi renomeado e está no local certo. Agora é preciso configurá-lo. Para isso, precisamos criar um banco de dados que será utilizado por ele. Para isso, abra uma nova aba no seu navegador e digite `localhost/phpmyadmin``.

<br><br>

![](/_assets/images/wordpress_08.png)

Essa é a tela do **phpmyadmin**. Aqui é possível alterar os bancos de dados utilizados nos projetos contidos no **XAMPP**. Muito cuidado para não causar estragos aqui. Para criar um novo banco, clique no botão **New** (**Novo**), na lista da esquerda.

<br><br>

![](/_assets/images/wordpress_09.png)

Nesta tela, vamos digitar o nome do banco de dados no campo **Nome da base de dados**. Para este exemplo, vamos colocar o nome **banco_teste**, mas você pode colocar o nome que quiser aqui, de preferência o nome do projeto que você está criando. Ao terminar de digitar, clique no botão **Criar**.

<br><br>

![](/_assets/images/wordpress_10.png)

Esta tela mostra que o banco foi criado e está vazio. Repare o nome do mesmo na lista da esquerda.

<br><br>

## Conectando o banco ao projeto ##

![](/_assets/images/wordpress_11.png)

Agora abriremos uma nova aba, no seguinte endereço: `localhost/projeto_teste`
Como é a primeira vez que abriremos o site, ele irá realizar as últimas configurações.

<br><br>

![](/_assets/images/wordpress_12.png)

Como já criamos o banco de dados, nós podemos clicar em **Vamos lá!** Para dar continuidade à instalação.

<br><br>

![](/_assets/images/wordpress_13.png)

Nesta tela, você deve inserir as seguintes informações:
1. O nome do **banco** que você acabou de criar;
2. O **nome de usuário** utilizado para acessar o banco. O **Xampp** normalmente utiliza o nome de usuário **root**.
3. A **senha** utilizada para acessar o banco. O **Xampp** normalmente deixa a senha em branco.
4. **Servidor do banco de dados** e **Prefixo da tabela** não precisam ser alterados.

<br><br>

![](/_assets/images/wordpress_14.png)

No nosso caso, os dados ficaram como se vê na imagem acima. Ao final, clique no botão **Enviar**, no final da página.

<br><br>

![](/_assets/images/wordpress_15.png)

Essa tela informa que esta parte da instalação foi concluída. Clique no botão **Instalar**, conforme imagem acima.

<br><br>

## Últimas informações ##

![](/_assets/images/wordpress_16.png)

Se tudo der certo, esta tela surgirá. Aqui você irá definir dados como **Título do site**, **Nome de usuário** e **Senha** que serão utilizados para acessar o **Painel de Controle** (**admin**), **e-mail** do administrador do site e opção de **visibilidade** em sites como o **google**. Digite todos os campos da forma que achar melhor e em seguida, clique em **Instalar Wordpress**, no final da página.

<br><br>

![](/_assets/images/wordpress_17.png)

Tudo pronto. Agora o **Wordpress** está instalado. Clique em **Acessar** para visualizar o site.

<br><br>

## O admin ##

![](/_assets/images/wordpress_18.png)

A tela de login do **Painel de Controle** surgirá, como na imagem acima. Digite o **Nome de usuário** que escolheu e a **Senha** para poder acessar.

<br><br>

![](/_assets/images/wordpress_19.png)

Este é o **Painel de Controle** do **Wordpress**. Tudo o que há no site pode ser alterado nas opções deste painel. Para visualizar o site, clique no título escolhido, no topo, à esquerda, conforme marcado na imagem acima.

<br><br>

![](/_assets/images/wordpress_20.png)
**A home do wordpress**

Pronto. Nas próximas vezes, caso prefira acessar diretamente o site, basta visitar o endereço `localhost/projeto_teste` (ou o nome escolhido).
Para acessar diretamente o **Painel de Controle**, basta visitar o endereço `localhost/projeto_teste/wp-admin` (ou o nome escolhido no lugar de **projeto_teste**)

A seguir, começaremos a instalar o plugin do [Tainacan](/pt-br/tainacan#como-instalar-o-plugin-tainacan-no-wordpress).

<br><br>