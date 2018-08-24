#language: pt
@agencia
Funcionalidade: Manter dados de registros do cadastro de Agências
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Agências
    A fim de manipular os registros do cadastro

Contexto: Rota da API
     Dada a rota da API para o manter dados do Banco
     E a lista de Bancos cadastrados

Esquema do Cenário: Manter dados de uma nova Agência
    Quando realizar uma requisição do tipo <tipo> em Agências
    Então a API deverá retornar os dados <retorno> da Agência
    E exibir o código <codigo>
    E a mensagem <mensagem>

    Exemplos:
    |  tipo  |    retorno     | codigo | mensagem  |
    | "POST" | "do Cadastro"  |    201 | "Created" |
    | "GET"  | "da Consulta"  |    200 | "OK"      |
    | "PUT"  | "da Alteração" |    200 | "OK"      |