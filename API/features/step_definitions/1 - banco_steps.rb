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
    else
        expect(tipo).to include("POST", "GET", "PUT")
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
    else
        expect(metodo).to include("do Cadastro","da Consulta","da Alteração")
    end
end

Então("exibir o código {int}") do |codigo|
    if codigo == 201
        expect($response.code).to eq(codigo)
        puts $response.code
    elsif codigo == 200
        expect($get.code).to eq(codigo)
        puts $get.code
    else
        expect($response.code).to eq(codigo)
    end
end
  
Então("a mensagem {string}") do |mensagem|
    if mensagem == "Created"
        expect($response.message).to eq(mensagem)
        puts $response.message
    elsif mensagem == "OK"
        expect($get.message).to eq(mensagem)
        puts $get.message
    else
        expect($response.message).to eq(mensagem)
    end
end