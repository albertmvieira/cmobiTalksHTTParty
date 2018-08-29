require 'httparty'
response = HTTParty.post('http://localhost:3000/bank',
    :body => {"code": 237,"name": "Banco Bradesco S.A"})
puts "response code: #{response.code}"
puts "response message: #{response.message}"
puts "response headers: #{response.headers}"
puts "response body: #{response.body}"
