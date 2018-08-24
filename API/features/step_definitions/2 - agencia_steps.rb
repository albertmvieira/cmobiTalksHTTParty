Dada("a rota da API para o manter dados da Agência") do
    #abstratída pela classe
end

Dada("a lista de Bancos cadastrados") do
    $getall = @banco.GETALL
    expect($getall.length).to be > 0
end

Quando("realizar uma requisição do tipo {string} em Agências") do |tipo|
    if tipo == "POST"
        $response = @agencia.POST
    elsif tipo == "GET"
        $get = @agencia.GET($response['id'])
    elsif tipo == "PUT"
        $put = @agencia.PUT($response['id'])
    else
        expect(tipo).to include("POST", "GET", "PUT")
    end
end

Então("a API deverá retornar os dados {string} da Agência") do |mensagem|
    if mensagem == "do Cadastro"
        puts $response.body
    elsif mensagem == "da Consulta"
        expect($get.body).to eq($response.body)
        puts $get.body
    elsif mensagem == "da Alteração"
        expect($put.body).not_to eq($response.body)
        puts $put.body
    else
        expect(mensagem).to include("do Cadastro", "da Consulta","da Alteração")
    end
end