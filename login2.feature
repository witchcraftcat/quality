Feature: Login Screen  
  As a student of the EBAC Portal  
  I want to authenticate  
  So that I can view my grades  

  Background:  
    Given I access the EBAC authentication page  

  Scenario: Valid authentication  
    When I enter the username "eduarda@ebac.com.br"  
    And the password "senha123@"  
    Then a welcome message "Hello, Eduarda" should be displayed  

  Scenario: Non-existent user  
    When I enter the username "yuhgtg@ebac.com.br"  
    And the password "senha123@"  
    Then an alert message "User does not exist" should be displayed  

  Scenario: User with invalid password  
    When I enter the username "eduarda@ebac.com.br"  
    And the password "hegahdgstakjb444"  
    Then an alert message "Invalid password" should be displayed  

  Scenario Outline: Authenticate multiple users  
    When I enter <username>  
    And <password>  
    Then the <message> should be displayed  

    Examples:  
      | username             | password    | message         |  
      | "eduarda@ebac.com.br" | "senha123@" | "Hello, Eduarda" |  
      | "michele@ebac.com.br" | "senha123@" | "Hello, Michele" |  
      | "freya@ebac.com.br"   | "senha123@" | "Hello, Freya"   |  
      | "loki@ebac.com.br"    | "senha123@" | "Hello, Loki"    |  