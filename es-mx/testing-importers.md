# Testando Importadores

?> _TODO_ Esta página está en _portugués brasileño_ solo hasta ahora. **Si puede, ayúdenos a traducirlo al _español_.**

Há diversos importadores para o Tainacan, incluindo alguns que podem ser criados por desenvolvedores como plugins. Nesta documentação, trataremos daquele que consideramos o mais usado, o [Importador CSV](/es-mx/importers.md#importador-csv-items).

## O Básico

1. Vá para a página de Importadores, acessível pelo menu do repositório;
2. Selecione o Importador CSV;
3. Escolha um arquivo CSV para testar. É importante que seu arquivo cubra alguns dos casos mais comuns da importação. Se você não tiver um em mãos, pode utilizar algum [destes aqui](http://oficinas.tainacan.org/ ":ignore");
4. Preencha o formulário, selecionando uma Coleção destino e subindo o arquivo CSV;
5. Clique em `Próximo`;
   - [x] Ao entrar na Tela de Mapeamento, verifique se as coluna foram devidamente separadas de acordo com seu separador configurado na página anterior.
   - [x] Cheque se estão disponíveisos metadados existentes nesta coleção nos seletores do mapeamento.
6. Preencha o mapeamento dos metadados. Caso sua coleção ainda não tenha metadados configurados, [deixe o importador criá-los](#criando-metadados-no-mapeamento). Se já estiver configurada, faça os mapeamentos adequados para cada tipo;
   - [x] Confirme que, cada vez que um metadado é associado à uma coluna do mapeador, ele deixa de estar disponível nos outros seletores;
7. Clique em `Executar` para rodar o importador;
   - [x] Confirme que, se você não tiver mapeado nenhuma coluna para o "Metadado principal Título" da Coleção, você receberá um alerta sugerindo que isso seja feito;
   - [x] Ao concluir a execução do importador, verifique os logs (Arquivos de Registro) na página de Processos para ver se não houve nenhum alerta;
   - [x] Confirme que os tipos de metadados foram mapeados corretamente, que as imagens foram carregadas e que novos termos foram criados caso haja metadados de Taxonomias que estavam vazias;

## Substituindo Itens

1. Vá para a coleção onde foi feita a importação anterior;
2. Clique no botão de `Exportar`, localizado no canto superior direito da tela da coleção;
3. Exporte a coleção como CSV;
4. Com um editor de sua preferência, altere o conteúdo de algumas linhas do arquivo CSV exportado. Você pode alterar metadados dos itens e até remover algumas linhas se desejar fazer seu processo mais rápido;
5. Vá para a página de Importadores, acessível pelo menu do repositório;
6. Selecione o Importador CSV;
7. Use a mesma coleção como destino e faça o upload do arquivo CSV que foi alterado;
8. Não se esqueça de deixar a opção "Item Repetido" no formulário selecionada em `Atualizar`;
9. Clique em `Próximo`;
10. Na tela de Mapeamento dos Metadados, mantenha as mesmas colunas que foram usadas para os metadados na importação anterior;

- [x] Cheque se o campo especial `special_item_id` foi detectado.

11. Clique em `Executar` para rodar o importador;
    - [x] Ao concluir a execução do importador, verifique os logs (Arquivos de Registro) na página de Processos para ver se não houve nenhum alerta;
    - [x] Confirme que os itens que tiveram linhas alteradas foram atualizados no processo de importação;

## Criando Metadados no Mapeamento

1. Vá para a página de Importadores, acessível pelo menu do repositório;
2. Selecione o Importador CSV;
3. Escolha um arquivo CSV para testar. Neste caso, é ideal que ele possua **configurações relacionadas aos metadados com os [campos especiais](/es-mx/importers#colunas-especiais)**. [Nesta página](http://oficinas.tainacan.org/) você pode encontrar um exemplo no último link, mas sugerimos também criar suas próprias configurações baseando-se na [documentação do importador](/es-mx/importers#criar-metadados-automaticamente).
4. Preencha o formulário, selecionando uma **Coleção que ainda não possua metadados configurados** e subindo o arquivo CSV;
5. Clique em `Próximo`;
6. No mapeamento, permita que o importador crie os metadados;
7. Aproveite para criar um único metadado de teste a diretamente nesta tela, clicando na opção `Criar Metadado` abaixo da lista de mapeamentos;
   - [x] Verifique, ao concluir o processo de criar o metadado que o mesmo está disponível nos seletores do mapeamento;.
8. Escolha um metadado para mapear usando o seu metadado recém-criado, ao invés de permitir que o importador crie;
9. Clique em `Executar` para rodar o importador;
   - [x] Ao concluir a execução do importador, verifique os logs (Arquivos de Registro) na página de Processos para ver se não houve nenhum alerta;
   - [x] Confirme que os tipos de metadados foram criados corretamente, incluindo suas configurações como "Permitir valores múltiplos", "Status" e "Permitir inserção de novos termos";

?> Problemas encontrados podem ser reportados como [issue no GitHub](https://github.com/tainacan/tainacan/issues ":ignore") ou para o [fórum da comunidade](https://tainacan.discourse.group ":ignore") do Tainacan. Alguns erros comuns como páginas não carregando podem ser melhor descritos usando [sugestões da página de Perguntas Frequentes](/es-mx/faq#acho-que-encontrei-um-erro-como-devo-proceder).
