#language: pt

Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos


Contexto: 
Dado que eu queira acessar a página de login da plataforma EBAC-SHOP


Cenário: Autenticação válida
Quando eu digitar o usuário "eduarda@gmail.com.br"
E a senha "senha123@"
Então deve exibir uma mensagem de boas vindas "Olá, Eduarda"

Cenário: Usuário Inexistente
Quando eu digitar o usuário "yuhgtg@ebac.com.br"
E a senha "senha123@"
Então deve exibir uma mensagem de alerta "Usuário inexistente"

Cenário: usuário com senha inválida
Quando eu digitar o usuário "eduarda@gmail.com.br"
E a senha "hegahdgstakjb444"
Então deve exibir uma mensagem de alerta "Senha inválida"

Esquema do Cenário: Autenticar múltiplos usuários
Quando eu digitar <usuario>
E a <senha>
Então deve exibir a <mensagem> de acordo com o status

Exemplos:
            | usuario                | senha       | mensagem              |
            | "eduarda@gmail.com.br  | "senha123@" | "Olá, Eduarda"        |
            | "michele@gmail.com.br  | "senha124@" | "Olá, Michele"        |
            | "hdgdfajhb@ebac.com.br | "senha123@" | "Usuário Inexistente" |
            | "loki@ebac.com.br      | "snhgcn"    | "Senha Inválida"      |
