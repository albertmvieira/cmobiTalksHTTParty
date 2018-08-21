Before '@banco' do 
    @name = Faker::Bank.name
    @code = Faker::Bank.account_number(4).to_i
    
    body = {"name": @name, "code": @code}
    @body = JSON.generate(body)
    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }
    @banco = Banco.new(@body, @headers)

   
end