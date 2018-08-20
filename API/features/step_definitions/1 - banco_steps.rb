Dada("a rota da API para o manter dados do Banco") do
    #abstraída pela classe
end

Quando("realizar uma requisição do tipo {string}") do |tipo|
    if tipo == "POST"
        $response = @banco.POST
    elsif tipo == "GET"
        $get = @banco.GET($response['id'])
    elsif tipo == "PUT"
        $put = @banco.PUT($response['id'])
    end
end

Então("a API deverá retornar os dados {string}") do |metodo|
    if metodo == "do Cadastro"
        puts $response.body
    elsif metodo == "da Consulta"
        expect($get.body).to eq($response.body)
        puts $get.body
    elsif metodo == "da Alteração"
        expect($put.body).not_to eq($response.body)
        puts $put.body
    end
end

Então("exibir o código {int}") do |codigo|
    if codigo == 201
        expect($response.code).to eq(201)
        puts $response.code
    elsif codigo == 200
        expect($get.code).to eq(200)
        puts $get.code
    end
end
  
Então("a mensagem {string}") do |mensagem|
    if mensagem == "Created"
        expect($response.message).to eq("Created")
        puts $response.message
    elsif mensagem == "OK"
        expect($get.message).to eq("OK")
        puts $get.message
    end
end