require 'httparty'
response = HTTParty.get('http://localhost:3000/bank')
puts "response code: #{response.code}"
puts "response message: #{response.message}"
puts "response headers: #{response.headers}"
puts "response body: #{response.body}"
puts response.length
