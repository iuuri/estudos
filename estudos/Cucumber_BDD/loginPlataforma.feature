            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Critérios de Aceitação:
            1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout
            2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”

            Contexto:
            Dado que eu acesse a tela de login do site da Ebac-Shop

            Cenário: Inserir dados válidos
            Quando eu inserir o <usuario> válido
            E <senha> válida
            Então devo ser direcionado a tela de checkout

            Cenário: Inserir usuario inválido
            Quando eu inserir o <usuario> inválido
            E <senha> válida
            Então deve ser exibida uma mensagem de alerta “Usuário ou senha inválidos

            Cenário: Inserir senha inválida
            Quando eu inserir o <usuario> válido
            E <senha> inválida
            Então deve ser exibida uma mensagem de alerta “Usuário ou senha inválidos

            Exemplos:
            | usuario              | senha     | mensagem       |
            | iuri@ebac.com.br     | senha@123 | "Olá Iuri"     |
            | fernando@ebac.com.br | senha@123 | "Olá Fernando" |
            | gabriela@ebac.com.br | senha@123 | "Olá Gabriela" |