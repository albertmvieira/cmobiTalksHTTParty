#language: pt
@bank
Funcionalidade: Manter dados de Bancos
Como um cliente da API
Eu quero realizar as requisições nos métodos
A fim de manipular as informações do cadastro de Banco

Cenário: Cadastrar Banco
    Dado a rota da API para manter o cadastro de Banco
    Quando realizar uma requisição usando o método POST
    Então a API irá retornar os dados do cadastro do Banco respondendo o código 201
    E a mensagem "Created"

Cenário: Consultar Banco pelo ID
    Dado a rota da API para manter o cadastro de Banco
    Quando realizar uma requisição usando o método GET
    Então a API irá retornar os dados da pesquisa do Banco respondendo o código 200
    E a mensagem de sucesso "OK"
@putBank
Cenário: Alterar Banco pelo ID
    Dado a rota da API para manter o cadastro de Banco
    Quando realizar uma requisição utilizando o método PUT
    Então a API irá retornar os dados da Alteração do Banco respondendo o código 200
    E a mensagem da alteração "OK"

Cenário: Deletar Banco pelo ID
    Dado a rota da API para manter o cadastro de Banco
    Quando realizar uma requisição utilizando o método DELETE
    Então a API retorna os dados da Deleção do Banco respondendo o código 200
    E a mensagem da deleção "OK"
    E caso consultar o Banco pelo ID
    Então a API deve retornar o código 404
    E a mensagem de não encontrado "Not Found"