#language: pt

Funcionalidade: Pesquisa de tarefa 
    Eu, como usuário do app
    Gostaria, que ao clicar no espaço de pesquisa habilitasse o teclado
    Porque, irei pesquisar alguma tarefa 

RN 1 - caixa de pesquisa funcional ao click sobre ela 
RN 2 - acionar teclado ao clicar na caixa de pesquisa 
RN 3 - realizar pesquisa ao pressiona a tecla enter 
RN 4 - Exibir icone de "filtros de pesquisa"
RN 5 - abra opções de filtros ao clicar no icone "filtros"

Contexto: Acessar o aplicativo
    Dado que o app foi aberto
    Quando aparece a caixa de pesquisa 
    Então seja possivel realizar um pesquisa de tarefa 

@altaprioridade
Cenário: Validar RN 1 - caixa de pesquisa funcional 
    Então é visualizado caixa de pesquisa 
    E ela esteja funcional para uso 

@altaprioridade
Cenário: Validar RN 2 - acionar teclado ao clicar 
    Então deve aparecer o teclado do dispositivo para digitar ao clicar na caixa de pesquisa 

@altaprioridade
Cenário: Validar RN 3 - realizar pesquisa 
    Então deve ser possivel iniciar pesquisa de tarefa ao pressionar a tecla enter do teclado 
    E deve retornar a pesquisa solicitada

@mediaprioridade
Cenário: Validar RN 4 - Exibir icone de filtro de pesquisa
    Então deve ser exibido um botão com icone de filtros 


@mediaprioridade
Cenário: Validar RN 5 - abrir opção de filtragem de pesquisa
    Então ao clicar no botão de filtros, expanda as opções de filtragem de pesquisa 


   