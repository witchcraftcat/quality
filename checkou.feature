#language: pt

Funcionalidade: Checkout - Finalização de Cadastro

Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra


Contexto: 
Dado que eu queira me cadastrar no EBAC-SHOP


Esquema do Cenário: Permitir cadastro e checkout
Quando eu digitar todos os campos obrigatórios (com asterísco)
Então deve exibir a <mensagem> de acordo com o status

Exemplos:
            | nome    | sobrenome | país     | endereço              | cidade      | cep         | telefone            | endereço de e-mail      | mensagem                          |
            | "Ana"   | "Silva"   | "Brasil" | "Rua das Flores, 123" | "São Paulo" | "01000-000" | "+55 11 98765-4321" | "ana.silva@email.com"   | "Cadastro realizado com sucesso!" |
            | "Marie" | "Curie"   | "França" | "5 Rue Pierre Curie"  | "Paris"     | "75005"     | "+33 1 2345-6789"   | "marie.curie@email.com" | "Cadastro realizado com sucesso!" |
          


Esquema do Cenário: Deixar campo obrigatório em branco
Quando eu preencher os campos obrigatórios
Mas deixar um deles em branco
Então deve exibir uma mensagem de alerta


Exemplos:
| nome       | sobrenome | país       | endereço| cidade | cep | telefone          | endereço de e-mail                  | mensagem                                                          |
|"Alexandre" | "Grande"  | "Macedônia"| ""      | "Pela" |  "" |""                 |"alexandreogrande@donodomundo.com.br"|"Os campos obrigatórios (com asterísco) não podem ficar em branco!"|


Cenário: Campo de e-mail com formato inválido
Quando completar todos os campos obrigatórios
E digitar o e-mail "darius.gmail.com"
Então deve exibir uma mensagem de alerta "E-mail inválido! Favor adicionar um e-mail com formato válido."