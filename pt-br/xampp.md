# Instalando o Tainacan em uma máquina windows local (sem servidor) #

<br>

O **Tainacan** é um plugin de **wordpress**. Para utilizá-lo, caso não tenha nada preparado, você precisará realizar três instalações bem simples:
1. Um servidor web na sua máquina. Aqui ensinamos [como instalar o XAMPP no windows](#baixando).
2. O **wordpress**. Aqui ensinamos [como instalar o wordpress num servidor XAMPP (windows)](/pt-br/wordpress#como-instalar-o-wordpress-no-windows).
3. O plugin do **Tainacan**. Ensinamos [como instalar o Tainacan no wordpress](/pt-br/tainacan#como-instalar-o-plugin-tainacan-no-wordpress).

Se preferir, você pode assistir os mesmos tutoriais em vídeo:
* [XAMPP](https://www.youtube.com/watch?v=rznX0EZhWG4)
* [Wordpress](https://www.youtube.com/watch?v=7v6qNHmqm0I)
* [Tainacan](https://www.youtube.com/watch?v=qRtoNRUlVkk)

## Baixando ##

Para iniciar, vamos até o link https://www.apachefriends.org/pt_br/index.html e vamos baixar o **XAMPP** para **windows**.

![](/_assets/images/xampp_01.png)

Na figura acima, clique no botão **XAMPP para Windows 7.3.6 (PHP 7.3.6)** para fazer o download. Ao concluir o processo, vamos iniciar a instalação executando o arquivo baixado.

<br><br>

## A instalação ##

![](/_assets/images/xampp_02.png)

Esta é a tela inicial da instalação. Clique no botão **Next** (**Próximo**).

<br><br>

![](/_assets/images/xampp_03.png)

Esta é a tela de seleção de componentes a serem instalados. Não é preciso alterar nada. Clique em **Next** (**Próximo**) novamente.

<br><br>

![](/_assets/images/xampp_04.png)

Nesta tela, o programa solicita o local da instalação. Novamente, não é necessário alterar nada. Clique em **Next** (**Próximo**).

<br><br>

![](/_assets/images/xampp_05.png)

Nesta tela, é apresentado o Bitnami, que é uma biblioteca de instaladores. Mais uma vez, não é necessário alterar nada. Clique em **Next** (**Próximo**).

<br><br>

![](/_assets/images/xampp_06.png)

Aqui é apenas uma mensagem de aviso. A instalação está pronta para começar. Clique em **Next** (**Próximo**) para iniciar o processo.

<br><br>

![](/_assets/images/xampp_07.png)

Agora o processo de instalação está em execução. Aguarde a barra ser totalmente preenchida.

<br><br>

## Abrindo o Painel de Controle ##

![](/_assets/images/xampp_08.png)

O processo foi concluído e a instalação foi terminada. Deixe a caixa de seleção marcada e clique em **Finish** (**Finalizar**). Assim, a tela atual será fechada e o box do painel de controle irá ser exibido logo em seguida.

<br><br>

![](/_assets/images/xampp_09.png)

É exibido o box de escolha de idioma. Escolha a primeira opção, inglês. Depois clique em **Save** (**Salvar**).

<br><br>

![](/_assets/images/xampp_10.png)

O box do painel de controle é exibido como na imagem acima. Para fazer o **XAMPP** funcionar, é necessário clicar no botão **Start** (**Iniciar**) dos serviços **Apache** e **MySQL**.
OBS: Esses dois serviços devem ser ativados sempre que o servidor for utilizado.

<br><br>

![](/_assets/images/xampp_11.png)

Se tudo der certo, ambos os serviços ficarão verdes, como na imagem acima. Agora clique no botão Admin. O seu navegador principal (**Google Chrome**, **Firefox**, **Internet Explorer**... o que você tiver instalado na sua máquina) irá se abrir, com o endereço `localhost/dashboard` já digitado.

<br><br>

## Testando ##

![](/_assets/images/xampp_12.png)

Se a instalação tiver corrido sem problemas, a tela acima aparecerá. Agora que vimos o servidor funcionando corretamente, vamos até a pasta onde os arquivos devem ser armazenados para aparecerem no navegador.

<br><br>

![](/_assets/images/xampp_13.png)

Na imagem acima, é possível ver o endereço da pasta: `C:/xampp/htdocs`
É lá que ficam os arquivos que serão visualizados no navegador.
Pronto. Já temos um servidor **XAMPP** rodando no **windows**.

<br><br>

Agora é hora de começar a instalar o [Wordpress](/pt-br/wordpress#como-instalar-o-wordpress-no-windows) no seu servidor **XAMPP**.

<br><br>