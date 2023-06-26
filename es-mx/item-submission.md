# Submissão de Itens

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

A [versão _0.17_](/es-mx/releases#tainacan-beta-017) do Tainacan trás a possibilidade de se abrirem coleções para _submissão pública_ de itens (também referida como _auto-depósito_). Isto significa que usuários sem privilégios administrativos, ou até mesmo visitantes do site passam a poder eles mesmos criarem itens em uma Coleção, **ampliando assim as possibilidades de um acervo _colaborativo_ gerado por diversas pessoas**.

Por trás dos panos, a Submissão de Itens nada mais é do que levar o [formulário de criação do item](/es-mx/items#criar-itens), com os [metadados configurados na coleção](/es-mx/metadata#tipos-de-metadados), para uma página pública do site. Isto é feito através de um [bloco gutenberg](/es-mx/gutenberg-blocks) e de algumas configurações extras. Nestas página, explicamos como configurar seu formulário de Submissão de Itens público. Cobriremos então:

1. Os ajustes necessários na [configuração da coleção](#configurando-a-coleção);
2. O processo de [criação do bloco do formulário](#criando-o-bloco-de-submissão-de-itens);
3. Alguns [ajustes avançados](#configurações-avançadas-do-bloco) para o bloco;
4. A proteção contra ataques ao site [usando a verificação _reCAPTCHA_](#verificação-recaptcha-no-formulário);
5. Algumas [dúvidas frequentes](#duvidas-frequentes) sobre esta funcionalidade;

## Configurando a Coleção

Na página de configuração de toda “Coleção”, há um campo que permite habilitar a “submissão de itens”.

1. Acesse a “coleção” onde você pretende habilitar a “submissão de itens” e clique em "Configurações";

   ![Acesse o painel de controle](_assets\images\120.png)

2. No canto inferior direito, habilite a função "Permitir a submissão de item";

   ![Acesse o painel de controle](_assets\images\121.png)

3. Com este campo habilitado, esta coleção poderá ser listada para o bloco de submissão de itens, sobre o qual falaremos em breve. Ao habilitar a função, novas opções surgem, como mostrada na captura de tela a seguir:

   ![Acesse o painel de controle](_assets\images\122.png)

**“Permitir a submissão por usuários anônimos”**: diz respeito a quais usuários poderão enviar este formulário. Por padrão, não é qualquer pessoa que visita o site, mas pelo menos pessoas cadastradas no sistema do seu WordPress que tem este poder. Se habilitado, mesmo pessoas que nunca logaram no site poderão enviar informações.

Se estiver no seu interesse abrir sua “coleção” para usuários anônimos, é importante entender que os “itens” não terão registro de “quem” os criou. No sistema administrativo, o campo “Criado por” conterá apenas a informação “anônimo”. Pode ser útil, neste caso, criar um “Metadado” que identifique o **autor da submissão**, como por exemplo, um “metadado tipo Texto” chamado “Nome do usuário”, marcado como obrigatório.

**“Status padrão”**: Todo “item” criado pelo formulário, terá um “status padrão”. Para garantir que os “itens” possam ser validados antes de irem parar na coleção pública, recomenda-se manter o seu status como “Privado” ou “Rascunho”. A principal diferença é que “itens rascunho” não precisam ter sido completados, portanto nem toda validação de “metadados obrigatórios”, por exemplo, foi feita. “Itens privados” só serão vistos por usuários logados e com permissão para tal, possivelmente revisores do seu fluxo de aprovação de “itens”.

**“Usar a verificação reCAPTCHA no formulário de submissão”**: Por fim, como em qualquer formulário na Web, é importante proteger seu site contra ataques de usuários mal intencionados. Detalhamos melhor a funcionalidade da opção “Usar a verificação reCAPTCHA no formulário de submissão” em uma sessão separada.

## Criando o Bloco de Submissão de Itens

Para ter seu formulário disponível para visitantes do site, é preciso criar uma página ou post no seu “painel administrativo” do WordPress. Como explicado em maiores detalhes na nossa página sobre os Blocos Gutenberg, este é o novo “editor de conteúdo do WordPress”, no qual você poderá dar um nome a página ou mesmo incluir conteúdo para apresentar o seu formulário ao usuário, como um título e texto explicativo.

1. Acesse o “painel de controle” do WordPress;

   ![Acesse o painel de controle](_assets\images\050.png)

2. Na barra lateral esquerda, clique em “Posts” (caso queira inserir o bloco em um post) ou “Páginas” (caso queira inserir o bloco em uma página);

   ![Acesse o painel de controle](_assets\images\123.png)

3. Feito isto, uma busca pelo bloco _“Formulário de Submissão de Itens”_ na lista de blocos, te permitirá inserir o formulário;

   ![Acesse o painel de controle](_assets\images\submissao.png)

4. De início, o bloco vem vazio, porque espera que você configure de qual _“coleção”_ este formulário se refere. Ao clicar no botão _“Selecione a Coleção destino”_, o modal apresentado mostrará apenas as _“coleções”_ configuradas para aceitar a submissão pública de _“itens”_, como mencionado[ ](https://tainacan.github.io/tainacan-wiki/#/es-mx/item-submission?id=configurando-a-coleção)[na sessão anterior](https://tainacan.github.io/tainacan-wiki/#/es-mx/item-submission?id=configurando-a-coleção);

   <iframe
       width="560"
       height="513" 
       src="https://www.youtube.com/embed/m7B1Axx00bk" title="YouTube video player"
       frameborder="0"
       allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
       allowfullscreen>
   </iframe>

5. Escolhida a _“coleção”_, o bloco será preenchido com uma _“prévia visual”_ de como ficará o formulário. Para realmente ver o formulário em ação, é preciso clicar em _“Visualizar”_ ou _“Publicar a página”_;

   <iframe
       width="560"
       height="513" 
       src="https://www.youtube.com/embed/PacoTywllQs" title="YouTube video player"
       frameborder="0"
       allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
       allowfullscreen>
   </iframe>

6. Após o preenchimento dos dados, a depender da configuração da coleção, o formulário poderá ser publicado diretamente ou vai para a _“aba de rascunho”_ na _“coleção”_. Nesta aba ele pode ser avaliado e configurado como público, caso aprovado, no painel do Tainacan.

## Configurações Avançadas do Bloco

O _“bloco de submissão”_ possui algumas configurações adicionais.

Clique no “_bloco de submissão do item”_ e depois na _“engrenagem”_ que fica no canto superior direito da tela, o painel lateral direito do editor mostrará uma série de _“configurações do bloco”_;

<iframe
    width="560"
    height="513" 
    src="https://www.youtube.com/embed/5AKOazA13tM" title="YouTube video player"
    frameborder="0"
    allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
    allowfullscreen>
</iframe>

**“Mensagem de retorno da submissão”:** Configure os campos de retorno para o usuário após o preenchimento. O primeiro deles diz respeito a mensagem que vai ser mostrada quando o _“item”_ tiver sido submetido com sucesso no formulário;

![Acesse o painel de controle](_assets\images\128.png)

Por padrão, esta informação aparece como na imagem abaixo:

![Acesse o painel de controle](_assets\images\form_submission.png)

Pode ser um bom lugar para informar, por exemplo, que a submissão está sendo avaliada pela equipe administrativa e que se aprovado, o _“item”_ será disponibilizado na listagem de _“itens da coleção”_.

### Rótulo das Sessões

Como é possível notar na prévia do bloco, o _“formulário de submissão de itens”_ possui quatro grandes sessões, na seguinte ordem:

![Acesse o painel de controle](_assets\images\129.png)

1. O “Documento principal do item”, que pode ser tanto um arquivo, quanto um texto puro ou um endereço online via link URL;
2. A “Miniatura”, que representará o “item” nas listagens e que por padrão é gerada automaticamente a partir do “Documento”, mas pode ser submetida pelo usuário;
3. A “lista de Anexos”, que pode ser de um ou mais arquivos relacionados de alguma maneira ao “item”;
4. A “lista de Metadados”, que constitui as informações gerais do “item” e dá cara aos dados exigidos pelo formulário.

Estes rótulos podem fazer sentido na interface administrativa do Tainacan mas, talvez você prefira usar termos que comuniquem melhor com o seu público. Por exemplo, talvez “Informações” seja mais claro que “Metadados” e “Arquivos extras” seja melhor que “Anexos”. Por isto, nesta sessão você pode alterar estes rótulos. Você também pode optar por deixá-los em branco, o que ocultará estas separações entres as sessões, dando uma noção de unidade aos campos do formulário.

### Entrada de Metadados

No painel “Entrada de Metadados”, você pode ver todos os campos que foram configurados na tela de “metadados” da configuração da “coleção”.

![Acesse o painel de controle](_assets\images\130.png)

Aqui você pode esconder alguns “metadados” que não considera apropriados para aparecerem neste formulário. Por exemplo, um campo que guarde a informação se aquele “item” foi aprovado após revisão, certamente não precisa estar no formulário público. Note, porém, que se o “metadado” em questão é “obrigatório”, ele não pode ser desabilitado, já que isto impediria a submissão.

### Elementos do Formulário

Este painel agrupa todas as funcionalidades de “esconder/mostrar” os demais elementos do formulário que não os “metadados”. Usando estas opções, você pode aproximar o layout do seu formulário com o de um formulário mais simples do seu site, ao invés de se assemelhar ao complexo e rico componente encontrado no “painel administrativo” do Tainacan:

![Acesse o painel de controle](_assets\images\131.png)

![Acesse o painel de controle](_assets\images\132.png)

1. **“Esconder qualquer botão redondo de escolha do tipo de documento”**: Escondendo os três, a sessão com o rótulo deixará de existir. Escondendo dois de três destes, o formulário deixará de exibir os botões redondos e, já exibirá de imediato, o campo para inserção do documento do único tipo restante:

   a. **“Documento tipo arquivo”**;

   b. **“Documento tipo texto simples”**;

   c. **“Documento tipo URL”**;

2. **“Esconder a sessão Miniatura”**: útil se você deseja confiar no processo de geração automático a partir do documento ou se seus “itens” são majoritariamente textuais e não necessitam de imagem;

3. **“Esconder a sessão Anexos”**: caso seus “itens” não precisem dele;

4. **Mostrar o botão “Permitir comentários”**: Este é o único elemento do formulário de “itens” que começa escondido por padrão. No curioso caso em que você queira que o usuário, por ele mesmo, decidir se seu “item” pode receber ou não comentários, habilite esta opção;

5. **“Esconder os colapses dos metadados”**: Toda a lista de “metadados” tem setinhas aos lados dos nomes e linhas abaixo dos inputs, que denotam os colapses, botões que ao serem clicados escondem aquele “metadado”, para melhor aproveitamento do espaço. Se você prefere que esta funcionalidade não apareça, use esta opção. Deve ser o ideal a se fazer caso seu formulário possua poucos “metadados”;

6. **“Esconder os botões de ajuda”**: Ao lado de todo “metadado” e das sessões do formulário, um botãozinho redondo com uma interrogação oferece para o usuário um “balão com dicas de preenchimento”. Estas dicas vem da configuração de cada “metadado”, do campo descrição. Se você considera que a informação não é necessária aqui, pode desabilitá-los com esta opção;

7. **“Esconder o tipo de metadado”**: Todo campo de “metadado” do formulário tem, ao lado de seu rótulo, um texto mais claro indicando o “tipo de metadado” (texto, relacionamento, número, taxonomia…). Esta informação pode não ser interessante no formulário público, por isso pode ser desabilitada aqui.

### Cores e Tamanho

Por fim, é possível alterar um pouco da aparência do formulário. Embora a estética dos componentes pode variar de acordo com o “tema” usado, alguns ajustes podem ser feitos neste painel. Pode ser desejável se modificar o tamanho da fonte base (a fonte utilizada no “painel administrativo” é tipicamente menor do que a encontrada em posts e páginas) e claro, cores em geral. As cores constituem-se, no geral, de variações de cinza para mostrar linhas e texto, e duas cores primárias, que vem da interface Azul Turquesa do Tainacan. Estas são importantes para “links”, “botões”, “balões de ajuda” e “efeitos de mouse sobre itens”. Vale observar os efeitos resultantes na prévia do bloco para se ter uma ideia.

![Acesse o painel de controle](_assets\images\133.png)

![Acesse o painel de controle](_assets\images\134.png)

![Acesse o painel de controle](_assets\images\135.png)

## Verificação reCAPCHA no formulário

É muito comum, em sites que possuem “formulários” como estes, que usuários mal intencionados realizem ataques ao servidor. Uma das maneiras mais comuns de se realizar isso é fazendo uso de robôs (scripts automatizados) que submetem diversas vezes informações ao “formulário”, seja com objetivo de espalhar SPAM, seja com objetivo de sobrecarregar o servidor e, possivelmente, derrubá-lo.

Para proteger seu site deste tipo de ataque, recomendamos fortemente o uso de um mecanismo de verificação que consiga validar “submissões” feitas por usuários reais. Embora existam diversas soluções para isso, oferecemos integrada ao plugin aquela que consideramos uma das mais simples e eficazes, o reCAPTCHA da Google. Você provavelmente já topou com ele algum “formulário” na web, onde teve que apertar seu checkbox e realizar algum desafio para seguir a diante com a “submissão”. São dois passos para fazê-lo funcionar no seu “formulário de submissão de itens”:

1. [Configurar o site](#configurando-o-recaptcha-no-seu-site) para obter a chave do reCAPTCHA;
2. [Habilitar a coleção](#habilitando-a-coleção-para-uso-do-recaptcha) para uso do mesmo;

### Configurando o reCAPTCHA no seu site

1. Acesso o “Painel administrativo” do WordPress. Há um submenu do plugin Tainacan específico para isso, o “Submissão de Itens”;

   ![Acesse o painel de controle](_assets\images\136.png)

2. Nesta página, você encontrará dois campos que precisam ser preenchidos: A “chave do site” e a “palavra secreta do site”;

   ![Captura de tela do painel onde é configurado o site para usar o reCAPTCHA nos formulários de submissão de itens](_assets/images/submissao-itens-captcha-1.png)

Ambos os “campos” são obtidos no site do reCAPTCHA, quando você cadastra seu site neste link: https://www.google.com/reCAPTCHA/admin/create. Não esqueça de clicar em “Salvar alterações” ao concluir esta etapa.

### Habilitando a Coleção para uso do reCAPTCHA

Nas configurações relacionadas ao formulário de submissão dentro do formulário da coleção, habilite a opção que diz "Usar a verificação reCAPTCHA no formulário de submissão". Feito isto, salve a coleção.

> Note que se você já havia criado um bloco de submissão antes de realizar estas configurações, será preciso excluir ele e refazer a inserção do bloco;

## Duvidas Frequentes

### Onde configuro quais perguntas vão existir no formulário?

O formulário de submissão de itens oferecido nada mais é do que um mapeamento do formulário de edição de itens existente na sua coleção. Portanto, para configurar quais campos vão existir no mesmo, é preciso editar os metadados da sua coleção. Na página dos metadados, você poderá mexer com a ordem destes, os rótulos, descrições e particularidades tais como serem ou não obrigatórios. Mais informações [nesta página](/es-mx/metadata).

### Como montar um fluxo de validação para as submissões?

Não há um identificador específico que diga que "Este item veio de uma submissão". Por padrão itens submetidos via formulário serão enviados para a aba da lista de itens relativa ao [status configurado na coleção](#configurando-a-coleção). Esta é a maneira que você tem de assegurar que eles não se tornem públicos de imediato e possam antes ser revisados e aprovados. O que é possível é criar um metadado privado do tipo Seleção ou Taxonomia (que não apareça no formulário) e que te ajude a identificar possíveis subetapas de um fluxo de aprovações (como "Em avaliação", "Falta revisão"), antes dele ser definitivamente aprovado.

### Não estou conseguindo criar termos novos pelo formulário, por quê?

Por enquanto, não é possível criar novos termos de _“metadados tipo taxonomia”_ diretamente pelo _“formulário de submissão do item”_. Esta limitação existe porque _“Taxonomias”_ são configurações a _“nível repositório”_ e precisam de uma camada extra de segurança para que usuários externos não tragam problemas aos seus _“vocabulários controlados”_. Entretanto, a funcionalidade está aberta à discussão para desenvolvimento futuro.

### Quero um formulário com campos não relacionados à coleção. É possível?

O módulo de submissão de itens é voltado para itens de coleções Tainacan. Se você deseja obter uma informação de seu usuário e não considera esta uma informação de uma coleção em específico do seu repositório, talvez o que você precise seja um plugin de formulário para o seu site. Existem [diversos disponíveis para o WordPress](https://br.wordpress.org/plugins/search/form/ ":ignore") que podem inclusive ser inseridos na mesma página do seu bloco de submissão de itens, porém deixando claro que se tratam de informações separadas.

### Já uso um plugin de reCAPTCHA. Existe alguma integração com a submissão de itens?

De fato, existem [alguns plugins que já habilitam o reCAPTCHA](https://br.wordpress.org/plugins/search/reCaptcha/ ":ignore") na maioria dos formulários do seu site. Estes plugins entretanto não se integram automaticamente no Taiancan. Porém, uma vez usando eles, você pode aproveitar a _chave do site_ e a _palavra secreta_ gerada para eles e copiar e colar nos [campos de configuração](#configurando-o-recaptcha-no-seu-site), assim todos estarão protegidos pelo menos mecanismo e você pode inclusive acompanhar estatísticas de ataques e proteções no painel administrativo do Google reCAPTCHA.
