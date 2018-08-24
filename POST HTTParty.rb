require 'httparty'
response = HTTParty.post('http://localhost:3000/bank',
    :body => {"code":"004","name": "Caixa Economica"})
puts "response code: #{response.code}"
puts "response message: #{response.message}"
puts "response headers: #{response.headers}"
puts "response body: #{response.body}"
