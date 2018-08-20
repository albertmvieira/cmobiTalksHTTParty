Before '@cliente' do
    @agencia = Agencia.new(@body,@headers)
    $index = @agencia.GETALL
    $num = Faker::Number.between(0,($index.length - 1))
    $agencyId = $index[$num.to_i]['id']
    @name = Faker::Name.name
    @occupation = Faker::Job.title
    @adress = Faker::Address.street_name
    @number = Faker::Address.building_number
    @city = Faker::Address.city
    @complement = Faker::Address.secondary_address
    @phone = Faker::Number.number(9)
    @email = Faker::Internet.email
    body = {
        "agencyId": $agencyId,
        "name": @name,
        "occupation": @occupation,
        "adress": @adress,
        "number": @number,
        "complement": @complement,
        "phone": @phone,
        "email": @email
    }
    @body = JSON.generate(body)
    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }
    
    @cliente = Cliente.new(@body, @headers)

   
end