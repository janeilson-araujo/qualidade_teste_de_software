Feature: Testes manuais de autenticação básica no site The Internet

  Scenario: Acesso com login e senha certos
    Given que eu entrei na página de autenticação do site
    When eu usei o usuário "admin" e a senha "admin"
    Then o login funcionou direitinho
    And apareceu a mensagem "Congratulations! You must have the proper credentials."

  Scenario: Acesso com senha errada
    Given que eu fui na mesma página de login
    When coloquei o usuário "admin" mas digitei uma senha errada
    Then o navegador bloqueou o acesso
    And apareceu um erro de autenticação

  Scenario: Acesso com usuário errado
    Given que eu tentei acessar usando outro nome de usuário
    When digitei o usuário "errado" com a senha certa
    Then também não consegui entrar
    And o navegador mostrou a mensagem de acesso negado

  Scenario: Acesso sem digitar nada
    Given que eu abri a página direto sem colocar usuário nem senha
    Then o navegador mostrou um popup pedindo login
