Dada("a rota da API para o manter dados da Conta Bancária") do
    #abstraida pela classe
end

Dada("a lista de Clientes cadastrados") do
    $get = @cliente.GETALL
    expect($get.length).to be >=0
end

Quando("realizar uma requisição do tipo {string} em Conta Bancária") do |tipo|
    if tipo == "POST"
        $response = @conta.POST
    elsif tipo == "GET"
        $get = @conta.GET($response['id'])
    elsif tipo == "PUT"
        $put = @conta.PUT($response['id'])
    else
        expect(tipo).to include("POST", "GET","PUT")
    end
end

Então("a API deverá retornar os dados {string} da Conta Bancária") do |mensagem|
    if mensagem == "do Cadastro"
        puts $response.body
    elsif mensagem == "da Consulta"
        expect($get.body).to eq($response.body)
        puts $get.body
    elsif mensagem == "da Alteração"
        expect($put.body).not_to eq($response.body)
        puts $put.body
    else
        expect(mensagem).to include("do Cadastro", "da Alteração", "da Consulta")
    end
end