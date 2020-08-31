# Hospedagem

?> Esta página é dedicada a listar opções de hospedagem prontas para produção de instalações WordPress testadas com Tainacan. Usuários da comunidade são encorajados a relatar suas experiências aqui.

Para usar o Tainacan é necessário uma instalação WordPress _no ar_. Se você tem conhecimentos em _Tecnologia da Informação_ é possível fazer esta instalação em seu próprio computador, como [descrito nessa sessão](pt-br/xampp). Porém, idealmente seu site estará hospedado em um servidor, uma máquina que fica sempre ligada e em permanente conexão com a internet. Há vários serviços diponíveis para **hospedagem online**, muitos inclusives otimizados para o WordPress.

Nesta página listaremos:

- [Recursos e características a se esperar de um serviço de hospedagem adequado para uso do Tainacan](#o-que-se-espera-de-uma-hospedagem-para-o-tainacan);
- [Serviços conhecidos e testados pela comunidade](#serviços-de-hospedagem-terceiros-testados);

## O que se espera de uma hospedagem para o Tainacan?

### WordPress instalado

Como quesito mais essencial, sua instalação precisa incluir um [WordPress](https://br.wordpress.org/ ":ignore"), ou pelo menos precisa permitir instalar um, com acesso completo ao painel admin. Embora o Tainacan vá funcionar com qualquer versão a partir da 4.8 do WordPress, recomendamos instalações com [versão mais recente](https://br.wordpress.org/download/releases/ ":ignore") e acima da 5.0 para poder tirar proveito de todos os recursos, como os [blocos gutenberg](/pt-br/gutenberg-blocks.md). Você precisará ter permissões para instalar plugins para poder ativar o Tainacan (o que, [como mencionado aqui](/pt-br/faq.md#qual-a-diferença-entre-wpcom-e-wporg), já tira de possibilidade algumas opções gratuitas de planos como as do [WordPress.com](https://br.wordpress.com/ ":ignore"));

#### Alguns requisitos do Servidor

É bem provável que se seu plano de hospedagem inclui um WordPress instalado, estes requisitos já estejam preenchidos, mas caso você vá instalar um por conta própria, certifique-se de ter:

- `Apache` ou `Nginx` rodando;
- `PHP` versão de mínima 5.6;
- Módulos do `PHP` esperados:
  - `curl`
  - `exif`
  - `imagick`
  - `gd`
  - `zlib`

Após ativado o plugin Tainacan, você pode conferir na [página "Diagnóstico do sistema"](/pt-br/optimization#diagnóstico-do-sistema) se estas informações estão atendidas. Caso o contrário, você pode contatar seu provedor de hospedagem para pedir ajuda com sua configuração.

### SSL ativado

### Domínio registrado

De maneira resuminda, registrar um domínio significa ter um endereço na internet reservado, para o qual os navegadores irão apontar seu site quando as pessoas pesquisarem pela sua URL, ou link (por exemplo, `meuacervoonline.com.br`). Este é um serviço separado da hospedagem do conteúdo em si, e pode tanto ser feito por provedores específicos (como [registro.br](https://registro.br/ ":ignore") e [br.godaddy.com](https://br.godaddy.com/ ":ignore")), quanto oferecido pelo provedor de hospedagem.

## Serviços de hospedagem terceiros testados

A seguir temos links de alguns serviços de hospedagens conhecidos por membros de nossa comunidade. É importante ressaltar que podem haver muitos outros e que não endossamos necessariamente uma alternativa mais que a outra.

| Serviço   | Link                                              | Comentários                                                                                                       |
| --------- | ------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Hostinger | https://www.hostinger.com.br/hospedagem-wordpress | Configuração simples. Inclui todos os módulos PHP necessários, SSL e oferece por um certo tempo dominio gratuíto. |
| Hostgator | https://www.hostgator.com.br/                     | Configuração simples possui utilitário para instalação do wordpress. Inclui todos os módulos PHP necessários (em algumas hospedagens mais antigas faltava o módulo imagick). Boa documentação e suporte para possíveis configurações. |
