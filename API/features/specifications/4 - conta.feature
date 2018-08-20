#language: pt
@conta
Funcionalidade: Manter dados de registros do cadastro de Conta Bancária
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Conta Bancária
    A fim de manipular os registros do cadastro

Cenário: Manter dados de uma nova Conta Bancária
    Dada a rota da API para o manter dados da Conta Bancária
    E a lista de Clientes cadastrados
    Quando realizar uma requisição do tipo "POST" em Conta Bancária
    Então a API deverá retornar os dados "do Cadastro" da Conta Bancária
    E exibir o código 201
    E a mensagem "Created"

Cenário: Consultar dados de uma nova Conta Bancária
    Dada a rota da API para o manter dados da Conta Bancária
    E a lista de Clientes cadastrados
    Quando realizar uma requisição do tipo "GET" em Conta Bancária
    Então a API deverá retornar os dados "da Consulta" da Conta Bancária
    E exibir o código 200
    E a mensagem "OK"

Cenário: Alterar dados de uma nova Conta Bancária
    Dada a rota da API para o manter dados da Conta Bancária
    E a lista de Clientes cadastrados
    Quando realizar uma requisição do tipo "PUT" em Conta Bancária
    Então a API deverá retornar os dados "da Alteração" da Conta Bancária
    E exibir o código 200
    E a mensagem "OK"
