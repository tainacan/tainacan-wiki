# Frequently Asked Questions

We list and answer the most frequently asked questions by our community:

> To participate in the Tainacan community [register here](https://lists.riseup.net/www/subscribe/tainacan ":ignore")!

Skip to an specific section:

- [About Tainacan](#about-tainacan)
- [Support](#errors-and-support)
- [Instalação e Hospedagem](#instalação-e-hospedagem)
- [Menus, Páginas e Blocos](#menus-páginas-e-blocos)

---

## About Tainacan

### What does Tainacan mean?

The name _Tainacan_ alludes to the Brazilian indigenous legend of the god of constellations, bringing the perception of the dimension of space and its multiple possibilities of connections.

Tainacan as free software is developed from results of scientific research and experience with implementation in partner institutions, being a flexible and powerful tool for WordPress, which allows the management and publication of digital collections with the same ease of publishing posts in blogs, but maintaining all the requirements of a professional platform for repositories.

### Who develops Tainacan?

We are a network of researchers and developers that unites scientific knowledge and the implementation of technological solutions in cultural institutions.

Currently our network gathers researchers from the University of Brasilia (UnB), Federal University of Goiás (UFG) and Brazilian Institute of Information in Science and Technology (IBICT) and also our developers and users from our Tainacan community [(register here)](https://lists.riseup.net/www/subscribe/tainacan).

### Why is Tainacan free software?

Its main goal is to help cultural institutions to organize, publish and spread their collections. It can also be used to build individual or collective repositories, for any purpose, and operates in an integrated way with the WordPress platform.

---

## Errors and Support

### I think I found an error. How should I proceed?

We are always available at [Tainacan's mailing list](https://lists.riseup.net/www/subscribe/tainacan ":ignore"), where conversations can be started and at [the project's github](https://github.com/tainacan/tainacan ":ignore"), where more technical _issues_ can be reported. If you start a conversation on the list, we recommend that you always give as much detail as possible so that you can help identify what is happening. Some suggestions are:

- Describe step by step what is being done, what occurs and what was expected;
- Check and if possible send us the information from [System Diagnosis Page](/optimization#system-check);
- If you have access to the server, send us the Logs - [See how here](#how-do-i-find-the-error-logs-of-my-server);
- Send us network and console information in the browser - [See how here](#how-do-i-see-network-or-browser-console-errors);
- If you have links for testing, even better!

#### How do I find the error logs of my server?

Some errors generated in the database or server-side operations can be identified by accessing your logs. If you have access to the server, sending these logs to the developers can be of help. Their location varies from each installation. On _apache_ servers, it is common to find logs in these paths:

- `/var/log/apache2/error.log`;
- `/var/log/apache/error.log`;

#### How do I see network or browser console errors?

Some errors may be reported in the browser instead of the server. This happens in situations where the screen gets stuck in some infinite loading state, for example. In this situation, it can be useful for developers to know information from their browser's `network` or `console` panel, which are part of the developer panel.

- In Firefox, access the Networks panel with the shortcut <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>E</kbd> and the Console with the shortcut <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>K</kbd>. Another option is to right click on the page, go to the "Inspect" option and from there look for the Network and Console tabs;
- In Google Chrome, access the developer panel with the shortcut <kbd>CTRL</kbd><kbd>SHIFT (&#8679;)</kbd><kbd>I</kbd> or by right clicking on the page and going to "Inspect". From there look for the Network and Console tabs.

In the **console** tabs, errors in general are listed highlighted, in red. In the **network** tab, there will always be a list of several requests. Those that can have problems in general are presented in red or with codes `404`, `401`, `500`, right from the start. Sometimes it may be necessary to click on a request from this list to find out more information, such as its response. Knowing this information can help developers to identify the problem. If possible, take a screenshot showing the content of these screens, including information hidden by scroll. If it is an error that occurs when entering the page or clicking on a button, try repeating the action with this screen open, to make sure it was registered there.

### I'm getting 404 errors or blank pages when accessing my collection on the site...

In some particular situations like when doing a site migration, starting a new installation or updating a plugin, it may arise the need to update the _permalinks_ structure of WordPress. The _permalinks_ are the addresses as specific names that are passed in the URL of your WordPress site to access the content. If when trying to access a collection that already existed, or if some of the [requests made by your site](#how-do-i-see-network-or-browser-console-errors) are returning 404 even with an Internet connection, it's possible that your site needs to rebuild its _permalinks_ list. This error is difficult to detect (so we can't report it well in [System Diagnostics](/optimization#system-check)) but fortunately it's very simple to fix!

Just do the following: Access the WordPress administrative panel and go to the side menu under **"Settings" -> "Permalinks "**. There, make sure that the option selected is **Post Name** or at least **Custom Structure** that has a _/%postname%/_ value. Once you have checked this, click on **Save Changes** (it is important to click even if the settings have not been changed). Reload the site and see if you can access the content in question.

### I'm not able to upload files. What do I do?

Check on the [System Diagnostics Page](/optimization#system-check) if your server's `uploads` folder has write permissions. If not, you must correct this by assigning read and write permissions to the server access user (usually the `www-data`).

If it still doesn't work, contact us on the list for analysis. Can you upload files to WordPress but not to Tainacan? What type of file format are you trying to upload? These are some information that can help us get started.

Other questions can be found [here](/optimization#blindando-o-wordpress).

### Some error occurred in the process of importing or exporting items. What to do?

In general, process errors such as importers and exporters are saved in a log file that can be accessed through Tainacan's own administrative interface. In the Processes list, open the process that gave error and download the log file. Send it to be analyzed by anyone who can help.

### I feel that my installation is taking too long to load the items... can you improve it?

If your collection is small and simple, then it's quite capable that there is some problem occurring and it can be discussed in the mailing list. If your base has thousands of items, with dozens of metadata, then the reasons for slowdowns may have to do with the server or with the current search settings. We suggest a detailed reading [of this page](/optimization) that will guide you through some options regarding performance.

---

## Instalação e Hospedagem

### Qual a diferença entre wp.com e wp.org?

O wp.com ou [wordpress.com](https://br.wordpress.com ":ignore") é uma plataforma de hospedagem, entre as várias existentes que oferecem instalações e servidores prontos com o WordPress. O wp.org, ou [wordpress.org](https://br.wordpress.org ":ignore") é o site oficial do software livre WordPress, de onde se encontram informações de instalação, a documentação, links da comunidade, eventos... e entre estas coisas também opções de hospedagem. Mas seu objetivo principal é fornecer a ferramenta que pode ser usada por qualquer um para construir sites em qualquer serviço de hospedagem.

### Posso usar o Tainacan no meu blog do wordpress.com?

Sim! Mas infelizmente o [plano gratuito](https://br.wordpress.com/pricing/ ":ignore") do _wordpress.com_ não te permitirá instalar plugins. Para isso você precisa usar um plano pago que eles oferecem. Lembre-se que esta não é a única maneira nem opção de se hospedar sites WordPress!

### É possível instalar o Tainacan no meu próprio computador?

Sim. Mas é bom deixar claro, **o Tainacan é um plugin para uma plataforma de sites**. Sua função não é bem a de um programa que você abre e fecha! Instalações _locais_ - como chamamos quando você configura em seu próprio computador - são úteis para desenvolvedores que querem contribuir ou apenas para quem quer fazer testes antes de mandar para um servidor, onde de fato o site ficará hospedado na web e online 24 horas por dia. Para configurar uma instalação do WordPress pronta para o Tainacan, dê uma olhada em [nossos tutoriais de instalação](/pt-br/instalacao)!

### Então, quais opções tenho para hospedar meu repositório?

Boa pergunta! Discutimos isso em mais detalhes na nossa página de [Hospedagem](/pt-br/hosting).

---

## Menus, Páginas e Blocos

### É possível inserir itens do Tainacan em postagens no WordPress?

Sim, é possível! Para adicionar itens do Tainacan em uma postagem do WordPress (a partir da versão 5.0) crie um [bloco Gutenberg do Tainacan](/pt-br/gutenberg-blocks) pelo editor de texto. Ao inserir um bloco, pode-se pesquisar por Tainacan que será possível ver quais tipos de blocos do Tainacan existem.

### Como vejo a lista de coleções no tema?

A lista de coleções é uma das [Páginas Especiais](/pt-br/tainacan-pages) que o Tainacan insere. Basta adicionar `/colecoes` ou `collections` à URL do seu site.

### Como coloco a lista de coleções no menu do meu site?

Basta ir na barra superior em **Personalizar** > **Menus** > **Selecionar o Menu Principal** > **Adicionar Itens**. Dalí, além de outros links customizados, você pode escolher **"Repositório de Coleções"** para mostrar sua lista de coleções ou selecionar qualquer outra coleção ou termo de taxonomia.

### Como posso fazer a página inicial do meu site ser a lista de coleções?

Por padrão, a página inicial do seu site será a lista de posts do seu blog. Para configurar uma página inicial customizada, deve-se ir no menu superior em **Personalizar** > **Configurações da página inicial** > **Uma página estática** e escolher a página. Entretanto, por ser uma [página especial](/pt-br/tainacan-pages) criada pelo plugin, a página padrão da lista de coleções não está listada como opção. A solução é criar uma página e listar as suas coleções nela, usando algum dos [Blocos de Coleções](/pt-br/blocks-collections.md).

> Para participar da comunidade do Tainacan [inscreva-se aqui](https://lists.riseup.net/www/subscribe/tainacan)!
