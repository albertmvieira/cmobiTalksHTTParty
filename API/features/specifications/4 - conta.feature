#language: pt
@conta
Funcionalidade: Manter dados de registros do cadastro de Conta Bancária
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Conta Bancária
    A fim de manipular os registros do cadastro

Contexto: Rota da API
    Dada a rota da API para o manter dados da Conta Bancária
    E a lista de Clientes cadastrados

Esquema do Cenário: Manter dados de uma nova Conta Bancária
    Quando realizar uma requisição do tipo <tipo> em Conta Bancária
    Então a API deverá retornar os dados <retorno> da Conta Bancária
    E exibir o código <codigo>
    E a mensagem <mensagem>

    Exemplos:
    | tipo   | retorno        | codigo | mensagem  |
    | "POST" | "do Cadastro"  | 201    | "Created" |
    | "GET"  | "da Consulta"  | 200    | "OK"      |
    | "PUT"  | "da Alteração" | 200    | "OK"      |