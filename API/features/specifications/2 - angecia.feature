#language: pt
@agencia
Funcionalidade: Manter dados de registros do cadastro de Agências
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Agências
    A fim de manipular os registros do cadastro

Cenário: Manter dados de uma nova Agência
    Dada a rota da API para o manter dados da Agência
    E a lista de Bancos cadastrados
    Quando realizar uma requisição do tipo "POST" em Agências
    Então a API deverá retornar os dados "do Cadastro" da Agência
    E exibir o código 201
    E a mensagem "Created"

Cenário: Consultar dados de uma nova Agência pelo ID
    Dada a rota da API para o manter dados da Agência
    E a lista de Bancos cadastrados
    Quando realizar uma requisição do tipo "GET" em Agências
    Então a API deverá retornar os dados "da Consulta" da Agência
    E exibir o código 200
    E a mensagem "OK"

Cenário: Alterar dados de uma nova Agência pelo ID
    Dada a rota da API para o manter dados da Agência
    E a lista de Bancos cadastrados
    Quando realizar uma requisição do tipo "PUT" em Agências
    Então a API deverá retornar os dados "da Alteração" da Agência
    E exibir o código 200
    E a mensagem "OK"