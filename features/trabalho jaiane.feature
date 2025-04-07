Feature: Teste da  funcionalidade de Geolocalização no site The Internet

  Como utilizador do site The Internet
  Quero poder obter a minha localização atual
  Para que possa verificar se a funcionalidade de geolocalização está funcionando corretamente

  Background:
    Given que estou na página de Geolocalização do site The Internet

  Scenario: Permitir acesso à localização
    When clico no botão "Where am I?"
    And autorizo o acesso à minha localização
    Then devo ver os valores de latitude e longitude apresentados na página

  Scenario: Negar acesso à localização
    When clico no botão "Where am I?"
    And nego o acesso à minha localização
    Then devo ver uma mensagem de erro ou nenhuma informação de localização

  Scenario: Navegador não suporta geolocalização
    Given que o meu navegador não suporta a funcionalidade de geolocalização
    When clico no botão "Where am I?"
    Then devo ver uma mensagem a indicar que o navegador não suporta geolocalização

  Scenario: Página carrega mas botão não está visível
    Then devo ver o botão "Where am I?" visível e clicável na página

  Scenario: Coordenadas apresentadas estão no formato correto
    When clico no botão "Where am I?"
    And autorizo o acesso à minha localização
    Then as coordenadas devem estar no formato decimal com casas decimais (ex: -23.3305, -46.6933)


