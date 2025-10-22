# Página de Configurações

A Página de Configurações do Plugin foi introduzida na versão `1.0.0` para oferecer aos usuários configurações poderosas sobre o comportamento padrão do plugin. Se você é um Administrador ou tem a permissão `manage_options`, pode acessá-la através do "Admin Tainacan" -> "Outros" -> "Configurações". Algumas dessas opções já estavam disponíveis anteriormente via constantes PHP que tinham que ser definidas em arquivos do servidor como o `wp-config.php`. Neste documento cobriremos cada uma das opções disponíveis por seção.

![Captura de tela da página de configurações do plugin](./../_assets/images/settings-page-1.png ':class=alignwide')

Estas são opções que afetam todo o plugin e todos os usuários. Você também pode estar procurando por [configurações de aparência do administrador por função do usuário](pt-br/admin-appearance.md), [configurações no nível da coleção](pt-br/collections.md) ou até mesmo [configurações específicas do tema](pt-br/theme.md) que seu tema pode oferecer.

## 1. Busca e Performance

Esta seção contém opções que podem impactar o tempo de resposta e performance do seu servidor. Algumas opções podem ser desabilitadas pelas configurações do seu servidor, então use com cuidado.

### Configurações Disponíveis:

**Resultados de busca por página**
- **Descrição**: Por padrão, toda busca paginada no Tainacan tem um número máximo de resultados. Embora você veja muitas listagens na interface exibindo 12 itens/coleções/taxonomias por página, você geralmente pode aumentar esse valor via interface ou via URL. No entanto, mesmo via URL e requisições de API, esse número nunca será maior que o definido nesta configuração. Por exemplo, no modal de Expositores (botão *Ver como...*), os links são divididos em páginas baseadas neste valor.
- **Padrão**: 96 itens
- **Impacto**: Números maiores devem ser evitados pois impactam o tempo de carregamento do servidor
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_API_MAX_ITEMS_PER_PAGE`

**Conteúdo PDF**
- **Descrição**: Quando habilitado, o Tainacan tentará indexar conteúdo textual de arquivos PDF nos resultados de busca. A indexação acontece quando o item é atualizado e depende de certas configurações do servidor para funcionar bem. Para saber mais sobre indexação de PDF, consulte [esta página](pt-br/indexing-pdf.md).
- **Padrão**: Desabilitado
- **Impacto**: Aumenta a precisão da busca mas também a carga do servidor
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_INDEX_PDF_CONTENT`

**Campos para busca textual**
- **Descrição**: Habilita busca em todos os campos de metadados. Ao usar o campo de busca textual que existe nas listas de itens, procuramos em todos os metadados textuais que o item pode ter. Isso estende o comportamento padrão do WordPress e assim custa em termos de performance. Desabilitar fará com que a busca textual procure apenas nos campos principais de título e descrição.
- **Padrão**: Habilitado
- **Impacto**: Se desabilitado, apenas título e descrição serão considerados, o que pode melhorar a performance da busca
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_DISABLE_DEFAULT_SEARCH_ENGINE`

**Valores dinâmicos dos filtros**
- **Descrição**: Sempre que um filtro é aplicado na busca facetada, você notará que outros filtros são recarregados e suas facetas (opções) são reduzidas. Este comportamento ajuda a refinar a busca mas pode desacelerar os resultados. Desabilite para manter todas as opções de filtro disponíveis, mesmo que selecioná-las possa resultar em buscas vazias.
- **Padrão**: Habilitado
- **Impacto**: Se desabilitado, isso pode aumentar significativamente a velocidade dos resultados de busca
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_FACETS_DISABLE_FILTER_ITEMS`

**Contagem de facetas**
- **Descrição**: Define se os filtros na busca facetada devem exibir um número ao lado de cada faceta (opção de valor). O valor indica quantos itens têm esse valor mas também é pesado para ser calculado antes que uma busca seja aplicada.
- **Padrão**: Habilitado
- **Impacto**: Se desabilitado, isso pode aumentar a velocidade dos resultados de busca, pois as contagens de facetas são pesadas para processar
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_FACETS_DISABLE_COUNT_ITEMS`

## 2. Modelos Padrão do Tema

Esta seção contém opções relacionadas à [compatibilidade com temas](pt-br/theme.md). Se seu tema não implementa suas próprias versões dos [modelos do Tainacan](pt-br/tainacan-pages.md), você pode habilitar algumas opções que sobrescreverão os modelos padrão do WordPress. Tenha em mente que o plugin não sabe nada sobre as classes, tamanhos de container e estética do seu tema, então ele faz um esforço para ser genérico enquanto ainda oferece as funcionalidades esperadas nessas páginas. Personalizações extras podem exigir pelo menos algum conhecimento de CSS.

### Configurações Disponíveis:

**Página de item**
- **Descrição**: Substitui o modelo tipo post do WordPress com informações básicas do item
- **Padrão**: Habilitado
- **Funcionalidades**: Insere informações básicas do item incluindo o documento do item dentro da galeria de mídia, metadados personalizados e anexos
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_DISABLE_ITEM_THE_CONTENT_FILTER`

**Página de itens da coleção**
- **Descrição**: Substitui o modelo tipo blog do WordPress com uma busca facetada
- **Padrão**: Desabilitado
- **Funcionalidades**: Exibe a busca facetada na página de itens da coleção, incluindo filtros e modos de visualização personalizados
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_ENABLE_COLLECTION_THE_CONTENT_FILTER`

**Página de itens do termo de taxonomia**
- **Descrição**: Substitui o modelo tipo blog do WordPress com uma busca facetada
- **Padrão**: Desabilitado
- **Funcionalidades**: Exibe a busca facetada na página de itens do termo de taxonomia, incluindo filtros e modos de visualização personalizados
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_ENABLE_TAXONOMY_TERM_THE_CONTENT_FILTER`

**Página de itens do repositório**
- **Descrição**: Substitui o modelo tipo blog do WordPress com uma busca facetada
- **Padrão**: Desabilitado
- **Funcionalidades**: Exibe a busca facetada na página de itens do repositório, incluindo filtros e modos de visualização personalizados
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_ENABLE_REPOSITORY_THE_CONTENT_FILTER`

**Página de termos de taxonomia**
- **Descrição**: Substitui o modelo tipo post do WordPress com uma lista básica de termos
- **Padrão**: Habilitado
- **Funcionalidades**: Exibe lista de termos de taxonomia com links para termos filhos e seus itens, além de opções básicas de ordenação e busca
- **Nota**: Esta configuração pode ser sobrescrita pela constante `TAINACAN_DISABLE_TAXONOMY_THE_CONTENT_FILTER`

## 3. Opções Padrão de Lista de Itens do Tema

Esta seção contém opções que serão usadas como padrão para listas de itens em páginas de coleção e repositório. **Essas configurações podem ser sobrescritas em múltiplos níveis por preferências do usuário, configurações de coleção ou opções do tema.**

### Configurações Disponíveis:

**Modo de visualização**
- **Descrição**: Modo de visualização padrão para exibir itens
- **Padrão**: Masonry
- **Nota**: Disponível apenas se múltiplos modos de visualização estiverem habilitados
- **Opções**: Depende dos modos de visualização registrados (exclui modos de tela cheia)

**Modos de visualização habilitados**
- **Descrição**: Quais modos de visualização estão disponíveis para os usuários escolherem
- **Padrão**: Todos os modos de visualização registrados (plugins e temas podem registrar os seus próprios)
- **Nota**: Usuários podem selecionar múltiplos modos de visualização para habilitar

**Ordenar por**
- **Descrição**: Critério de ordenação padrão para itens
- **Padrão**: Data de criação
- **Opções**: 
  - Título
  - Data de criação

**Ordem**
- **Descrição**: Direção de ordenação padrão para itens
- **Padrão**: Decrescente
- **Opções**:
  - Crescente
  - Decrescente

## 4. Formulários de Submissão de Itens com reCAPTCHA

Esta seção permite configurar o Google reCAPTCHA para maior segurança ao usar o [bloco de Submissão de Itens](./blocks-item.md#formulário-de-submissão-de-itens). Antes da versão `1.0.0` esta seção era acessível via um submenu do menu Admin Tainacan e agora foi movida para esta página.

### Configurações Disponíveis:

**Chave do Site Google reCAPTCHA**
- **Descrição**: Sua chave do site Google reCAPTCHA
- **Propósito**: Usada para validação reCAPTCHA do lado do cliente
- **Nota**: Necessária para funcionalidade reCAPTCHA

**Chave Secreta Google reCAPTCHA**
- **Descrição**: Sua chave secreta Google reCAPTCHA
- **Propósito**: Usada para validação reCAPTCHA do lado do servidor
- **Nota**: Necessária para funcionalidade reCAPTCHA


## Configurações extras

Se você está usando outros plugins ou temas, pode ser o caso de você ver configurações extras nesta página. Isso acontece porque desenvolvedores podem registrar opções via API da Página de Configurações do Tainacan. Para aprender como isso funciona, leia a [documentação para desenvolvedores](dev/creating-options-in-the-settings-page.md).
