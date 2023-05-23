            #language: pt

            Funcionalidade: Tela de login
            Como aluno do Portal EBAC
            quero me autenticar
            Para visualizar minhas notas

            //Contexto para diminuir linha iguais

            Contexto:
            Dado que eu acesse a página de Autenticação do Portal EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "iuri@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá Iuri"

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "invalido@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"

            Cenário: Senha inválida
            Quando eu digitar o usuário "iuri@ebac.com.br"
            E a senha "invalida@123"
            Então deve exibir uma mensagem de boas vindas "Usuário ou senha inválidos"

            //Para usar tabela de exemplos deve usar esquema de cenario

            Esquema do Cenário: Autenticar multiplos usários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            //Os exemplos devem seguir o modelo abaixo.

            Exemplos:
            | usuario              | senha     | mensagem       |
            | iuri@ebac.com.br     | senha@123 | "Olá Iuri"     |
            | fernando@ebac.com.br | senha@123 | "Olá Fernando" |
            | gabriela@ebac.com.br | senha@123 | "Olá Gabriela" |