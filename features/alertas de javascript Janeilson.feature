Feature: Alertas JavaScript
  Como um usuário do sistema
  Eu quero interagir com os alertas JavaScript
  Para testar o comportamento dos alertas na aplicação

Scenario: Exibir alerta simples
  Given que o usuário está na página de Alertas JavaScript
  When ele clica no botão "Click for JS Alert"
  Then ele deve ver um alerta simples
  And o alerta deve exibir a mensagem "I am a JS Alert"
  When o usuário aceita o alerta

Scenario: Aceitar alerta de confirmação
  Given que o usuário está na página de Alertas JavaScript
  When ele clica no botão "Click for JS Confirm"
  Then ele deve ver um alerta de confirmação
  And o alerta deve exibir a mensagem "I am a JS Confirm"
  When o usuário aceita o alerta
  Then a página deve exibir o resultado "You clicked: Ok"

Scenario: Cancelar alerta de confirmação
  Given que o usuário está na página de Alertas JavaScript
  When ele clica no botão "Click for JS Confirm"
  Then ele deve ver um alerta de confirmação
  And o alerta deve exibir a mensagem "I am a JS Confirm"
  When o usuário cancela o alerta
  Then a página deve exibir o resultado "You clicked: Cancel"

Scenario: Inserir texto no alerta prompt e aceitar
  Given que o usuário está na página de Alertas JavaScript
  When ele clica no botão "Click for JS Prompt"
  Then ele deve ver um alerta prompt
  And o alerta deve exibir a mensagem "I am a JS prompt"
  When o usuário insere o texto "Teste de prompt" e aceita o alerta
  Then a página deve exibir o resultado "You entered: Teste de prompt"

Scenario: Cancelar alerta prompt
  Given que o usuário está na página de Alertas JavaScript
  When ele clica no botão "Click for JS Prompt"
  Then ele deve ver um alerta prompt
  And o alerta deve exibir a mensagem "I am a JS prompt"
  When o usuário cancela o alerta
  Then a página deve exibir o resultado "You entered: null"
