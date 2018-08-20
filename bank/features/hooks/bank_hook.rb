Before '@bank' do
    @name = Faker::Bank.name
    @code = Faker::Bank.account_number(3)
    @body = {"name": @name, "code": @code}
    @bank = Bank.new(@body)
end
Before '@putBank' do
    @name = Faker::Bank.name
    @code = Faker::Bank.account_number(3)
    @body = {"name": @name, "code": @code}
    @bank = Bank.new(@body)
end