#language: pt
@banco
Funcionalidade: Manter dados de registros do cadastro de Bancos
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Bancos
    A fim de manipular os registros do cadastro

Cenário: Manter dados de um novo Banco
    Dada a rota da API para o manter dados do Banco
    Quando realizar uma requisição do tipo "POST"
    Então a API deverá retornar os dados "do Cadastro"
    E exibir o código 201
    E a mensagem "Created"

Cenário: Consultar dados de um novo Banco
    Dada a rota da API para o manter dados do Banco
    Quando realizar uma requisição do tipo "GET"
    Então a API deverá retornar os dados "da Consulta"
    E exibir o código 200
    E a mensagem "OK"

Cenário: Alterar dados de um novo Banco
    Dada a rota da API para o manter dados do Banco
    Quando realizar uma requisição do tipo "PUT"
    Então a API deverá retornar os dados "da Alteração"
    E exibir o código 200
    E a mensagem "OK"