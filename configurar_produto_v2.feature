#language: pt

Funcionalidade: Configurar produtos

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu queira editar meu carrinho no no EBAC-SHOP

Esquema do Cenário: Edição de Carrinho
Quando eu escolher <cor>, <tamanho>, <quantidade> 
E <quantidade> for menor ou igual a 10
Então uma mensagem de confirmação deve ser exibida e devo conseguir executar uma compra

Exemplos:
            | cor     | tamanho | quantidade |
            | rosa    | p       | 3          |
            | azul    | m       | 9          |
            | amarelo | g       | 10         |


Cenário: Compras com mais de 10 itens
Quando eu escolher os dados do produto
E adicionar mais de 15 itens
Então uma mensagem de erro deve ser mostrada: "O número máximo de itens por compra é 10."

Cenário: A cor ou quantidade não foi escolhida
Quando eu não escolher a cor ou a quantidade
Então O item não poderá ser adicionado no carrinho

