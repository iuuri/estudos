#language: pt

Funcionalidade: Perfil de Usuário
    Eu, como usuário do app
    Gostaria, que ao clicar no icone de perfil fosse direcionado para meu perfil pessoal
    Porque, eu gostaria de ver ou editar minhas informações

RN 1 - Icone de perfil
RN 2 - Deve conter foto do usuário 
RN 3 - Ao clicar, direcionar para o perfil pessoal 

Contexto: Acessar o perfil pessoal
    Dado que o app foi aberto
    Quando clicar no icone de perfil
    Então usuario será direcionado para perfil pessoal

@altaprioridade
Cenário: Validar RN 1 - Icone de perfil visivel
    Então deve aparecer espaço resevado com icone do perfil de usuario

@mediaprioridade
Cenário: Validar RN 2 - exibir foto escolhida pelo usuario
    Então deve conter uma foto colocado pelo usuario 
    E se não, ter uma imagem de vetor no espaço

@mediaprioridade
Cenário: Validar RN 3 - direcionamento para perfil pessoal 
    Então ao clicar no icone de perfil, direcionar para perfil completo




   