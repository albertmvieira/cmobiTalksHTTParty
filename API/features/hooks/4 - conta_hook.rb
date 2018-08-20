Before '@conta' do
    @cliente = Cliente.new(@body,@headers)
    $index = @cliente.GETALL
    $num = Faker::Number.between(0,($index.length - 1))
    $customerId = $index[$num.to_i]['id']
    @account_number = Faker::Bank.account_number
    @iban = Faker::Bank.iban
    @card = Faker::Finance.credit_card(:mastercard)
    @balance = Faker::Number.decimal(3,2).to_f
    @verificationCode = Faker::Number.number(3)
    @high_limit = (@balance.to_i*10)+Faker::Number.number(1).to_i
    @low_limit = (@balance.to_i/10)-Faker::Number.number(1).to_i
    body = {
        "customerId": $customerId,
        "account_number": @account_number,
        "iban": @iban,
        "card": @card,
        "verification_code": @verificationCode,
        "balance": @balance,
        "high_limit": @high_limit,
        "low_limit": @low_limit
    }
    @body = JSON.generate(body)
    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }
    
    @conta = Conta.new(@body, @headers)

   
end