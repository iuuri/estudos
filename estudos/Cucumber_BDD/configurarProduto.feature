#language: pt

Funcionalidade: Configurar prduto

Como cliente da Ebac-Shop
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inseir no carrinho

Critérios de Aceitação:
1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios
2 – Deve permitir apenas 10 produtos por venda
3 –Quando eu clicar no botão “limpar” deve voltar ao estado original

Contexto:
Dado que eu acesse a loja Ebac-Shop 

Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando eu selecionar uma cor
E tamanho da roupa
E quantidade que desejo comprar
Então consigo concluir a seleção do produto

Cenário: Deve permitir apenas 10 produtos por venda 
Quando eu selecionar os produtos que desejo 
E tentar comprar mais de 10 itens 
Então o sistema não deve permitir 

Cenário: Quando eu clicar no botão “limpar” deve voltar ao estado original
Quando eu clicar no botão limpar 
Então a seleção de tamanho, cor e quantidade devem ser desmarcadas 

