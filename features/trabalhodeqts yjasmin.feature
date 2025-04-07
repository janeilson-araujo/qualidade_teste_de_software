Feature: Download de Arquivo
  Como um usuário do sistema
  Eu quero fazer o download de arquivos no site "The Internet"
  Para que eu possa obter os arquivos disponibilizados

Scenario: Fazer download de um arquivo com sucesso
  Given que o usuário está na página de download do site "The Internet"
  And há um link disponível com o nome do arquivo "local.py"
  When o usuário clica no link "local.py"
  Then o arquivo "local.py" deve ser baixado com sucesso
  And o conteúdo do arquivo deve estar acessível localmente.

Scenario: Tentar fazer download de um arquivo inexistente
  Given que o usuário está na página de download do site "The Internet"
  And há um link visível para o arquivo "teste.py"
  When o usuário clica no link "teste.py"
  Then o sistema deve retornar um erro 404
  And uma mensagem "Arquivo não encontrado" deve ser exibida ao usuário.

Feature: Upload de Arquivo
  Como um usuário do sistema
  Eu quero fazer upload de arquivos no site "The Internet"
  Para que eu possa enviar dados para o servidor

Scenario: Fazer upload de um arquivo válido
  Given que o usuário está na página de upload do site "The Internet"
  And o usuário selecionou um arquivo válido (por exemplo, "random_data.txt")
  When o usuário clica no botão "Upload"
  Then o arquivo deve ser enviado corretamente para o servidor
  And uma mensagem de sucesso "Arquivo enviado!" deve ser exibida.

Scenario: Tentar enviar sem selecionar um arquivo
  Given que o usuário está na página de upload do site "The Internet"
  And o usuário não selecionou nenhum arquivo
  When o usuário clica no botão "Upload"
  Then o sistema deve exibir uma mensagem de erro "Erro do Servidor Interno"