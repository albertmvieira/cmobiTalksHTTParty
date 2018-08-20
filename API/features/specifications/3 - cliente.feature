#language: pt
@cliente
Funcionalidade: Manter dados de registros do cadastro de Clientes
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Clientes
    A fim de manipular os registros do cadastro

Cenário: Manter dados de uma novo Cliente
    Dada a rota da API para o manter dados da Cliente
    E a lista de Agencias cadastradas
    Quando realizar uma requisição do tipo "POST" em Clientes
    Então a API deverá retornar os dados "do Cadastro" de Clientes
    E exibir o código 201
    E a mensagem "Created"

Cenário: Consultar dados de uma novo Cliente
    Dada a rota da API para o manter dados da Cliente
    E a lista de Agencias cadastradas
    Quando realizar uma requisição do tipo "GET" em Clientes
    Então a API deverá retornar os dados "da Consulta" de Clientes
    E exibir o código 200
    E a mensagem "OK"

Cenário: Alterar dados de uma novo Cliente
    Dada a rota da API para o manter dados da Cliente
    E a lista de Agencias cadastradas
    Quando realizar uma requisição do tipo "PUT" em Clientes
    Então a API deverá retornar os dados "da Alteração" de Clientes
    E exibir o código 200
    E a mensagem "OK"