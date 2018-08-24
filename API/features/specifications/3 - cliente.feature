#language: pt
@cliente
Funcionalidade: Manter dados de registros do cadastro de Clientes
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Clientes
    A fim de manipular os registros do cadastro

Contexto: Rota da API
    Dada a rota da API para o manter dados da Cliente
    E a lista de Agencias cadastradas

Esquema do Cenário: Manter dados de uma novo Cliente
    Quando realizar uma requisição do tipo <tipo> em Clientes
    Então a API deverá retornar os dados <retorno> de Clientes
    E exibir o código <codigo>
    E a mensagem <mensagem>

    Exemplos:
    | tipo   | retorno        | codigo | mensagem  |
    | "POST" | "do Cadastro"  | 201    | "Created" |
    | "GET"  | "da Consulta"  | 200    | "OK"      |
    | "PUT"  | "da Alteração" | 200    | "OK"      |