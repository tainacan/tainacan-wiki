# Colabore com esta Wiki

Se você chegou a esta página, provavelmente está pensando em contribuir com a nossa Wiki :smile: . Isto é ótimo! Como projeto de Software Livre, o Tainacan está calcado nos princípios da colaboração em diversos níveis: na **pesquisa**, no **código**, na **tradução** e também na **documentação**. Como usuário, você pode trazer contribuições valorosas para deixar nosso material mais claro e acessível. 

Para colaborar, entretanto, é preciso se familiarizar um pouco com nossas ferramentas de documentação. Não se preocupe - aqui te daremos o auxílio necessário para que você possa fazer contribuições de qualidade sem dificuldades! Nesta página você vai ver:

* [Como editar arquivos online via GitHub](#editando-arquivos-diretamente-no-github)
* [Como funciona a sintaxe dos artigos da Wiki](#familiarizando-se-com-a-formatação-markdown)
* [Como testar e fazer contribuições avançadas na Wiki](#contribuição-avançada-com-a-docsify)
* [Como funciona a estrutura de arquivos da Wiki](#entendendo-a-estrutura-da-wiki)

## Editando arquivos diretamente no GitHub

Nossa Wiki está hospedada inteiramente no GitHub no seguinte repositório: https://github.com/tainacan/tainacan-wiki. Não é necessário ter muita experiência com Git para realizar contribuições pontuais, a própria plataforma já simplifica grande parte do processo. Por exemplo, se você viu algum erro de ortografia em um artigo, clique no botão **Edit on github** que aparece no canto superior direito da página. Você será redirecionado para o "código fonte" desta página:
 
![Captura de Tela da página de edição de conteúdo no Github, onde está em destaque o botão editar, formado por uma caneta.](/_assets/images/contributing.png)

Clicando no botão de editar, em formato de pincel, você poderá fazer as alterações desejadas, e ao final do formulário, explicar quais mudanças estão sendo propostas. Ao submeter uma proposta de mudança, o GitHub está, por trás dos panos, criando uma *Fork* para você e aplicando uma *Pull-Request*.

Para contribuições mais complexas, que envolvam criar páginas, inserção de imagens, abas, vídeos, ou mesmo alterações na estrutura de navegação da Wiki, sugerimos seguir nossas [instruções para rodar a Docsify](#contribuição-avançada-com-a-docsify).

## Familiarizando-se com a formatação markdown

Vários sistemas colaborativos adotam determinadas convenções de formatação para tornar o trabalho dos editores mais fácil. Em nossa wiki, utilizamos a linguagem **`markdown`** para tal, mas também utlizamos alguns recursos extras. Esse sistema consiste em sintaxes e palavras-chave específicas para comunicar ao software como determinado texto deve ser exibido.

### Funcionam em qualquer lugar do texto:

| O que é 	                                  |  O que você escreve 	                                  | O que você vê                         |
|---------------------------------------------|-----------------------------------------------------------|---------------------------------------|
| Texto em itálico, negrito ou ambos 	      | `*itálico*, **negrito** ou ***ambos***` 	              | *itálico*, **negrito** ou ***ambos*** |
| Texto pré-formatado                	      | ``Aqui vai o nome de uma função``        	              | `Aqui vai o nome de uma função`       |
| Links para páginas da wiki 	              | `[Página principal](/pt-br/README.md)`                    | [Página principal](/pt-br/README.md)  |
| Links para uma seção 	                      | `[Editando Coleções](/pt-br/collections#criar-coleções)`  | [Editando Coleções](/pt-br/collections#criar-coleções) |
| Referência a um endereço de um website 	  | `https://tainacan.org`                                    | https://tainacan.org                                   |
| Referência a um link com nome personalizado |	`[Site Oficial do Tainacan](https://www.wikipedia.org/)`  | [Site Oficial do Tainacan](https://www.wikipedia.org/) |
| Comentários em texto 	                      | `<!--Este comentário não será exibido na página, somente em seu código-fonte-->` | <!--Este comentário não será exibido na página, somente em seu código-fonte-->  |

### Funcionam apenas no início das linhas:

| O que é 	              |  O que você escreve 	               | O que você vê                                                     |
|-------------------------|----------------------------------------|-------------------------------------------------------------------|
| Cabeçalho de Seção      | `## Nível 2`                           | <h2>Nível 2</h2>                                                  |
| Cabeçalho de Seção      | `### Nível 3`                          | <h3>Nível 3</h3>                                                  |
| Cabeçalho de Seção      | `#### Nível 4`                         | <h4>Nível 4</h4>                                                  |
| Cabeçalho de Seção      | `##### Nível 5`                        | <h5>Nível 5</h5>                                                  |
| Cabeçalho de Seção      | `###### Nível 6`                       | <h6>Nível 6</h6>                                                  |
| Listas com marcadores   | `* Este é um ponto`<br>`* Este é outro ponto`<br>&nbsp;&nbsp;`* Ponto dentro de um ponto` | <ul><li>Este é um ponto</li><li>Este é outro  ponto<ul><li>Ponto dentro de um ponto</li></ul></li></ul> |
| Listas enumeradas       | `1. Este é um ponto`<br>`2. Este é outro ponto`<br>&nbsp;&nbsp;`1. Ponto dentro de um ponto` | <ol><li>Este é um ponto</li><li>Este é outro  ponto<ol><li>Ponto dentro de um ponto</li></ol></li></ol> |
| Lista de checks         | `- [ ] Este é um ponto`<br>`- [x] Este é outro ponto`<br>&nbsp;&nbsp;`- [ ] Ponto dentro de um ponto` | <ul class="task-list"><li class="task-list-item"><label><input disabled="" type="checkbox">Este é um ponto</label></li><li class="task-list-item"><label><input checked disabled="" type="checkbox">Este é outro ponto</label><ul class="task-list"><li class="task-list-item"><label><input disabled="" type="checkbox">Ponto dentro de um ponto</label></li></ul></li></ul> |
| Destaques               | `> Esta é uma observação importante.`  | <blockquote><p>Esta é uma observação importante.</p></blockquote> |
| Alertas                 | `!> Esta é uma observação sensivível.` | <p class="tip">Esta é uma observação sensivível.</p>              |
| Notas                   | `?> Esta é uma observação secundária.` | <p class="warn">Esta é uma observação secundária.</p>             |

### Linhas

Para simples separação de sessões com uma linha, use:

```
------
```

Que será renderizado como:

------

> Obs: deixe pelo menos uma linha em branco entre este símbolo e qualquer outro texto, caso contrário será entendido como cabeçalho.

### Imagens
| O que é 	              |  O que você escreve 	               | O que você vê                                                     |
|-------------------------|----------------------------------------|-------------------------------------------------------------------|
| Imagem e descrição      | `![Logo do Tainacan](../_assets/images/logo_tainacan.png)` | ![Logo do Tainacan](../_assets/images/logo_tainacan.png) |
| Imagem e descrição, redimensionada | `![Logo do Tainacan](../_assets/images/logo_tainacan.png ':size=50')` | ![Logo do Tainacan](../_assets/images/logo_tainacan.png ':size=50') |

### Vídeos

Usamos um `iframe` para incorporar mídia, que é a alternativa padrão para a maioria das plataformas online de vídeo. Por exemplo, para incorporar um vídeo do YouTube:

```html
<iframe 
    width="560" 
    height="513" 
    src="https://www.youtube.com/embed/gFJfyHRKaE0?start=18"
    frameborder="0" allow="accelerometer; 
    autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
```
> Note que estão configurados a largura (560px), a altura (513px) e também o tempo de início do vídeo (18s).

O resultado será como abaixo:

<iframe width="560" height="513" src="https://www.youtube.com/embed/gFJfyHRKaE0?start=18" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Trechos de código

Para mostrar trechos de código pré-formatado, o próprio `markdown` já possibilita isso, mas também podemos acrescentar diretivas para dar destaque a algumas linguagens, basta envolver o código desejado com três crases ` ``` ` antes e depois de seu conteúdo. Se for um código em `php`, por exemplo, basta começar com ` ```php `. O resultado será como abaixo:

```php
<?php
function foo($arg_1, $arg_2, /* ..., */ $arg_n)
{
    echo "Example function.\n";
    return $retval;
}
?>
```

### Abas 

Uma das coisas extras que nossa Wiki consegue fazer para além do `markdown` renderizar abas. Elas podem ser úteis para segmentar conteúdos em seções dentro de uma mesma página. Por exemplo, o código abaixo:

```markdown
<!-- tabs:start -->

#### ** Aba 1 **

Conteúdo da Aba 1

#### ** Aba 2 **

Conteúdo da Aba 2

#### ** Aba 3 **

Conteúdo da Aba 3

<!-- tabs:end -->

```

Será renderizado como:
<!-- tabs:start -->

#### ** Aba 1 **

Conteúdo da Aba 1

#### ** Aba 2 **

Conteúdo da Aba 2

#### ** Aba 3 **

Conteúdo da Aba 3

<!-- tabs:end -->

### Collapses 

Para esconder alguns conteúdos extensos em regiões collpsáveis, usamos a tag `HTML` `<details></details>` e `<summary></summary>`. Por exemplo:

```
<details>
<summary>Um collapse (Clique para expandir)</summary>

- Conteúdo markdown aqui dentro
- E o que mais for preciso

</details>
```

Resultará em:
<details>
<summary>Um collapse (Clique para expandir)</summary>

- Conteúdo markdown aqui dentro
- E o que mais for preciso

</details>

> Note que há uma linha de espaço entre o que é código `HTML` e o que é `markdown`.

### Tabelas

A maneira de se criar tabelas é um pouco limitada em `markdown`. Segue um exemplo:

```
| Cabeçalho 1   | Cabeçalho 2   |
|---------------|---------------|
| Dados 1       | Dados 2       |
| Dados 3       | Dados 4       |
```

Que gera a seguinte tabela:

| Cabeçalho 1   | Cabeçalho 2   |
|---------------|---------------|
| Dados 1       | Dados 2       |
| Dados 3       | Dados 4       |

Para inserir quebras de linha dentro de tabelas `markdown`, usamos a tag `HTML` `<br>`:

```
| Cabeçalho 1   | Cabeçalho 2        |
|---------------|--------------------|
| Dados 1       | Dados 2            |
| Dados 3       | Dados 4<br>Dados 5 |
```

Que resulta na seguinte tabela:

| Cabeçalho 1   | Cabeçalho 2        |
|---------------|--------------------|
| Dados 1       | Dados 2            |
| Dados 3       | Dados 4<br>Dados 5 |

## Contribuição Avançada com a Docsify

Tudo o que foi mostrado até o momento pode ser [editado diretamente via GitHub](#editando-arquivos-diretamente-no-github), porém fica difícil prever como irão ficar alguns recursos mais avançados, como as imagens ou as abas, que só podem ser visualizadas mesmo quando já submetidas para a Wiki. Para essas e outras contribuções mais avançadas, como mecher na estrutura de navegação, sugerimos o teste do conteúdo em sua máquina local, o que vai requerer alguns conhecimentos extras. 

### Preparando o ambiente

Em sua máquina ter, é preciso ter instalados:

* Git
* NodeJS

Primeiramente, faça uma *Fork* do nosso repositório no GitHub:

![Captura de Tela da página da Wiki no Github, onde está em destaque o botão de criar Fork.](/_assets/images/contributing_2.png)

Clone e acesse sua cópia local. Nós assumimos aqui que você já tenha realizado as [configurações inicias do Git](https://git-scm.com/book/pt-br/v1/Primeiros-passos-Configura%C3%A7%C3%A3o-Inicial-do-Git), usando uma conta criada no GitHub:

```
git clone https://github.com/SEU_NOME_DE_USUARIO/tainacan-wiki
cd tainacan-wiki
```

O proximo comando garante que a sua *Fork* possa ser sincronizada futuramente com atualizações vindas do repositório original da Wiki:

```
git remote add upstream https://github.com/tainacan/tainacan-wiki.git
```

Agora instale globalmente a `CLI` da Docsify, nossa framework que auxilia na criação da Wiki:

```
npm i docsify-cli -g
```

Tenha certeza de que está no diretório do respositóio (`cd tainacan-wiki`, ou qualquer caminho necessário) e inicie o servidor da Docsify:

```
docsify serve
```

Isso instanciará um servidor local de testes, geralmente na porta `http://localhost:3000`. Ao acessar este endereço no seu navegador, você terá uma prévia de como ficará a Wiki após as edições feitas na sua cópia local. Qualquer mudança em algum arquivo dentro do repositório será refletida automaticamente neste endereço, assim que o arquivo for salvo.

### Fazendo sua primeira contribuição via Pull-Request

O procedimento acima, exceto pelo último comando, só precisa ser executado uma vez. A seguir detalhamos como propor uma mudança para algum arquivo da Wiki. Suponha que você deseja acrescentar mais informações sobre [Hospedagem](/pt-br/hosting). Este arquivo, em português, se encontra em `/pt-br/hosting.md`, como pode ser visto pelo endereço na barra do navegador.

Uma boa prática é começar atualizando seu repositório local com as mudanças que podem ter sido feitas no repositório oficial da wiki:

```
git fetch upstream
git merge upstream/master
```

Faça então as alterações que você deseja e salve o arquivo. Atualize o seu *Fork*:

```
git add .
git commit -m "Atualiza o conteúdo da página de hospedagem com mais opções."
git push
```

Você deve poder ver as alterações no seu repositório no GitHub. Vá então para o [repositório oficial da Wiki](https://github.com/tainacan/tainacan-wiki) e clique na opção "Criar Pull Request":

![Captura de Tela da página da Wiki no Github, onde está em destaque o botão de criar Pull Request](/_assets/images/contributing_3.png)

Você escolherá seu *Fork* como origem para a *Pull Request* e poderá escrever uma descrição resumindo suas alterações. 

![Captura de Tela da página da Wiki no Github, mostrando a opção de escolher a branch de origem da Fork](/_assets/images/contributing_4.png)

Criada a requisição, é só aguardar a revisão da equipe!

## Entendendo a estrutura da Wiki

Agora que você já está capaz de colaborar e testar mudanças na nossa Wiki, está na hora de entender um pouco melhor como funciona a Docsify, responsável por transformar os arquivos `markdown` existentes em nosso repositório no site que você vê hospedado em https://tainacan.github.io/tainacan-wiki/#/pt-br/.

Observando a estrutura de arquivos do repositório, temos as seguintes páginas e arquivos, entre outros:

```
/_assets
/dev
    README.md
    _sidebar.md
/pt-br
    /_assets
    /dev
        README.md
        _sidebar.md
    CONTRIBUTING.md
    README.md
    _coverpage.md
    _navbar.md
    _sidebar.md
    collections.md
CONTRIBUTING.md
README.md
_coverpage.md
_navbar.md
_sidebar.md
collections.md
index.html
style.css
```
Vamos comentar sobre alguns:

* **/_assets**: é a pasta onde guardamos imagens e demais arquivos de mídia. Ela existirá em níveis mais internos da Wiki para guardar arquivos relativos àquele escopo;
* **/dev**: é a pasta que guarda a parte da Wiki relativa a documentação para desenvolvedores. Esta separação ajuda a organizar um pouco o conteúdo extenso da Wiki. No futuro, podem ser criadas outras pastas específicas para uma parte da Wiki, desde que ajustadas as referências paras os arquivos que ficam nela;
* **/pt-br**: é a pasta onde está guardada a documentação da Wiki traduzida para Português Brasileiro. Observe que quase todos os arquivos e pastas do resto da Wiki estão replicadas aqui. Quando não há uma versão traduzida para um arquivo dentro desta pasta, o usuário será redirecionado para o arquivo correspondente na pasta raiz;
* **CONTRIBUTING.md**: Instruções para quem deseja colaborar com a Wiki. Você está lendo a versão traduzida deste arquivo, que está em `/pt-br/CONTRIBUTING.md`;
* **README.md**: Página Inicial da Wiki, que é carregada ao se acessar `/`. Usamos o nome README para que o GitHub também reconheça este arquivo como o de apresentação. A versão traduzida está em `/pt-br/README.md` e é carregada ao se acessar `/pt-br`. Internamente às pastas `/dev`, também há uma versão deste arquivo, que será a Página Inicial da sessão de Desenvolvedores;
* **_coverpage.md**: Página de capa, que é carregada acima da página inicial;
* **_navbar.md**: Barra superior da Wiki, atualmente contém link para o site oficial e um dropdown para escolher a linguagem do site. Esta é uma página especial que é renderizada pela Docsify, transformando sublistas, por exemplo, em dropdowns;
* **_sidebar.md**: Lista de links que são exibidos na barra lateral. Observe que há uma dessas na pasta `/pt-br` com seu conteúdo traduzido, mas também há versões nas pastas `/dev` e `/dev/pt-br`. Isso garante que ao navegar em arquivos da sessão de desenvolvedores, seja mostrada uma lista de links dedicada para o assunto.
* **collections.md**: Um exemplo de uma das várias páginas comuns que existem na Wiki. Estas páginas costumam ter sua própria hierarquia definida pelos cabeçalhos de sessão, que são exibidos também na barra lateral quando se entra nela;
* **index.html**: Arquivo usadado para configurar a Docsify, plugins e imports. Não recomendamos alterações aqui, há menos que saiba o que está fazendo!
* **style.css**: Folha de estilos CSS do site, que customiza a aparência da Wiki.

Encorajamos fortemente a exploração desta estrutura e de alterações pelo servidor de testes locais da Docsify para se familiarizar com os conceitos. Para mais detalhes, consulte a [documentação da Docsify](https://docsify.js.org/).
