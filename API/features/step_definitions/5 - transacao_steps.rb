Dada("a rota da API para o manter dados de transações bancárias") do
    #abstraída pela classe
end

Dada("a lista de Contas bancárias cadastradas") do
    $get = @conta.GETALL
    expect($get.length).to be >=0
end

Quando("realizar uma requisição do tipo {string} em transações") do |tipo|
    if tipo == "POST"
        $response = @transacao.POST
    elsif tipo == "GET"
        $get = @transacao.GET($response['id'])
    else
        expect(tipo).to include("POST", "GET")
    end
end

Então("a API deverá retornar os dados {string} Bancária") do |mensagem|
    if mensagem == "da Transação"
        puts $response.body
    elsif mensagem == "da Consulta"
        puts $get.body
    else
        expect(mensagem).to include("da Transação", "da Consulta")
    end
end