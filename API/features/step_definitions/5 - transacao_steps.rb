Dada("a rota da API para o manter dados de transações bancárias") do
    #abstraída pela classe
end

Dada("a lista de Contas bancárias cadastradas") do
    $get = @conta.GETALL
end

Quando("realizar uma requisição do tipo {string} em transações") do |tipo|
    if tipo == "POST"
        $response = @transacao.POST
    end
end

Então("a API deverá retornar os dados {string} Bancária") do |mensagem|
    if mensagem == "da Transação"
        puts $response.body
    end
end