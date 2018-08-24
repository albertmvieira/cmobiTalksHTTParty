#language: pt
@transacao
Funcionalidade: Manter dados de registros de Transação Bancária
    Como um cliente da API
    Eu quero consumir as requisições de Transação Bancária
    A fim de manipular os registros das transações

Contexto: Rota da API
    Dada a rota da API para o manter dados de transações bancárias
    E a lista de Contas bancárias cadastradas

Esquema do Cenário: Manter dados de Transações Bancárias
    Quando realizar uma requisição do tipo <tipo> em transações
    Então a API deverá retornar os dados <retorno> Bancária
    E exibir o código <codigo>
    E a mensagem <mensagem>

    Exemplos:
    | tipo   | retorno        | codigo | mensagem  |
    | "POST" | "da Transação"  | 201    | "Created" |
    | "GET"  | "da Consulta"  | 200    | "OK"      |