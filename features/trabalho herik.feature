gherkin
Feature: Testar Caixas de Seleção e Adicionar/Remover Elementos

  Scenario: Selecionar e desmarcar uma caixa de seleção
    Given que eu estou na página "The Internet"
    When eu seleciono a caixa de seleção "Checkbox 1"
    Then a caixa de seleção "Checkbox 1" deve estar marcada

    When eu desmarco a caixa de seleção "Checkbox 1"
    Then a caixa de seleção "Checkbox 1" deve estar desmarcada

  Scenario: Adicionar um novo elemento à lista
    Given que eu estou na página "The Internet"
    When eu clico no botão "Add Element"
    Then um novo elemento deve ser adicionado à lista

  Scenario: Remover um elemento da lista
    Given que eu estou na página "The Internet"
    When eu clico no botão "Add Element" duas vezes
    And eu clico no botão "Delete" do primeiro elemento
    Then a lista deve conter apenas um elemento