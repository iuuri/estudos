#language: pt

Funcionalidade: Splash Screen
    Eu, como usuário do app
    Gostaria, que fosse exibido a tela de Splash Screen
    Porque, vou ter um tutorial das funcionalidades do app 
RN 1 - Carrousel com 3 slides 
RN 2 - O slide atual deve apresentar uma marcação 
RN 3 - O carrousel é composto de imagem, título e descrição 
RN 4 - O Primeiro slide é composto por imagem, titulo, descrição e 2 botãoes 
        - 1 botão de Create a Note 
        - 1 botão de Import Notes


Contexto: Acessar o aplicativo
    Dado que o app foi aberto
    Quando o carrousel é exibido 

@altaprioridade
Cenário: Validar RN 1 - Carrousel com 3 slides 
    Então é visualizado 3 slides no carrousel

@altaprioridade
Cenário: Validar RN 2 - indicar posição no carrousel 
    Então o carrousel deve ter um indicador dos slides exibidos 
    E deve apresentar uma cor mais forte no indicador de slide 

@mediaprioridade
Cenário: Validar RN 3 - Composição do carrousel 
    Então deve ser exibido uma imagem
    E um titulo 
    E uma descrição

@baixaprioridade
Cenário: Validar RN 4 - Validar o primeiro slide do carrousel
    Então deve ser exibido um botão de Create a Note 
    E um botão de Import Notes

@baixaprioridade
Cenário: Validar RN 5 - Exibir Splash Screen
    Então a Splash Screen deve ser exibida somente na primeira vez que o app for aberto


   