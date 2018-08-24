#language: pt
@banco
Funcionalidade: Manter dados de registros do cadastro de Bancos
    Como um cliente da API
    Eu quero consumir as requisições do cadastro de Bancos
    A fim de manipular os registros do cadastro

Contexto: Rota da API
     Dada a rota da API para o manter dados do Banco

Esquema do Cenário: Manter dados de um novo Banco
    Quando realizar uma requisição do tipo <tipo>
    Então a API deverá retornar os dados <retorno>
    E exibir o código <codigo>
    E a mensagem <mensagem>

    Exemplos:
    |  tipo  |    retorno     | codigo | mensagem  |
    | "POST" | "do Cadastro"  |    201 | "Created" |
    | "GET"  | "da Consulta"  |    200 | "OK"      |
    | "PUT"  | "da Alteração" |    200 | "OK"      |