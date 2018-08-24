Dado("a rota da API para manter o cadastro de Banco") do
    #já instânciada pela classe Bank
end

Quando("realizar uma requisição usando o método POST") do
    $response = @bank.postBank
end

Então("a API irá retornar os dados do cadastro do Banco respondendo o código {int}") do |int|
    puts "Código :#{$response.code}"
    expect($response.code).to eq(int)
    puts "ID     :#{$response['id']}"
    puts "Código :#{$response['code']}"
    puts "Nome   :#{$response['name']}"
end 

Então("a mensagem {string}") do |string|
    puts "Mensagem: #{$response.message}"
    expect($response.message).to eq(string)
end

Quando("realizar uma requisição usando o método GET") do
    $get = @bank.getBank($response['id'])
end
  
Então("a API irá retornar os dados da pesquisa do Banco respondendo o código {int}") do |int|
    puts "Código :#{$get.code}"
    expect($get.code).to eq(int)
    puts "ID     :#{$get['id']}"
    puts "Código :#{$get['code']}"
    puts "Nome   :#{$get['name']}"

end
  
Então("a mensagem de sucesso {string}") do |string|
    puts "Mensagem: #{$get.message}"
    expect($get.message).to eq("OK")
end

Quando("realizar uma requisição utilizando o método PUT") do
    $put = @bank.putBank($response['id'])
end
  
Então("a API irá retornar os dados da Alteração do Banco respondendo o código {int}") do |int|
    puts "Código :#{$put.code}"
    expect($put.code).to eq(int)
    puts "ID     :#{$put['id']}"
    puts "Código :#{$put['code']}"
    puts "Nome   :#{$put['name']}"
end
  
Então("a mensagem da alteração {string}") do |string|
    puts "Mensagem: #{$put.message}"
    expect($put.message).to eq(string)
end

Quando("realizar uma requisição utilizando o método DELETE") do
   $del = @bank.deleteBank($response['id'])
end
  
Então("a API retorna os dados da Deleção vazio do Banco respondendo o código {int}") do |int|
    puts "Código :#{$del.code}"
    puts $del.body
    expect($del.code).to eq(int)
end
  
Então("a mensagem da deleção {string}") do |string|
    puts "Mensagem: #{$del.message}"
    expect($del.message).to eq(string)
end


Então("caso consultar o Banco pelo ID") do
    $get = @bank.getBank($response['id'])
end
  
Então("a API deve retornar o código {int}") do |int|
    puts "Código: #{$get.code}"
    expect($get.code).to eq(int)
end

Então("a mensagem de não encontrado {string}") do |string|
    puts "Mensagem: #{$get.message}"
    expect($get.message).to eq(string)
end
  