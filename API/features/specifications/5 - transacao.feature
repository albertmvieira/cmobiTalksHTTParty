#language: pt
@transacao
Funcionalidade: Manter dados de registros de Transação Bancária
    Como um cliente da API
    Eu quero consumir as requisições de Transação Bancária
    A fim de manipular os registros das transações

Cenário: Manter dados de Transações Bancárias
    Dada a rota da API para o manter dados de transações bancárias
    E a lista de Contas bancárias cadastradas
    Quando realizar uma requisição do tipo "POST" em transações
    Então a API deverá retornar os dados "da Transação" Bancária
    E exibir o código 201
    E a mensagem "Created"