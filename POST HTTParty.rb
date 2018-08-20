require 'httparty'
response = HTTParty.post('http://localhost:3000/bank',
    :body => {"code":"394","name": "Bradesco Financiamentos"})
puts "response code: #{response.code}"
puts "response message: #{response.message}"
puts "response headers: #{response.headers}"
puts "response body: #{response.body}"
