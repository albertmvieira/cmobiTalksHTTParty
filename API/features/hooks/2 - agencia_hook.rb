Before '@agencia' do
    @banco = Banco.new(@body,@headers)
    $get = @banco.GETALL
    $index = Faker::Number.between(0,($get.length - 1))
    $bankId = $get[$index.to_i]['id']
    @adress = Faker::Address.street_name
    @number = Faker::Address.building_number
    @city = Faker::Address.city
    @complement = Faker::Address.secondary_address
    @phone = Faker::Number.number(9)
    body = {
        "bankId": $bankId,
        "adress": @adress,
        "number": @number,
        "city": @city,
        "complement": @complement,
        "phone": @phone
    }
    @body = JSON.generate(body)
    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }
    
    @agencia = Agencia.new(@body, @headers)

   
end