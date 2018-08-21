Before '@transacao' do
    @conta = Conta.new(@body, @headers)
    $get = @conta.GETALL
    index = $get.length
    @accountId = $get[Faker::Number.between(0,(index -1).to_i)]['id']
    d = DateTime.now
    @date = d.strftime("%d/%m/%Y %H:%M")
    @protocol = Faker::Code.asin
    @routing_number = Faker::Bank.routing_number
    @value = Faker::Number.decimal(2).to_f
    @id = Faker::Crypto.sha1
    body = {   
        "accountId": @accountId,
		"protocol": @protocol,
        "status": "confirmed",
        "transactionId": @id,
		"type": "credit",
		"routing_number": @routing_number,
		"value": @value,
		"date": @date
    }
    
    @body = JSON.generate(body)
    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }
    @transacao = Transacao.new(@body, @headers)
end