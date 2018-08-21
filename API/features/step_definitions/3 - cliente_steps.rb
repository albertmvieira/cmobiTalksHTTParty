Dada("a rota da API para o manter dados da Cliente") do
    #abstraída pela classe
end

Dada("a lista de Agencias cadastradas") do
    $get = @agencia.GETALL
    expect($get.length).to be >=0
end

Quando("realizar uma requisição do tipo {string} em Clientes") do |tipo|
    if tipo == "POST"
        $response = @cliente.POST
    elsif tipo == "GET"
        $get = @cliente.GET($response['id'])
    elsif tipo == "PUT"
        $put = @cliente.PUT($response['id'])
    else
        expect(tipo).to include("POST", "GET", "PUT")
    end
end

Então("a API deverá retornar os dados {string} de Clientes") do |mensagem|
    if mensagem == "do Cadastro"
        puts $response.body
    elsif mensagem == "da Consulta"
        expect($get.body).to eq($response.body)
        puts $get.body
    elsif mensagem == "da Alteração"
        expect($put.body).not_to eq($response.body)
        puts $put.body
    else
        expect(mensagem).to include("do Cadastro", "da Consulta", "da Alteração")
    end
end