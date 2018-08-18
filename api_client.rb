
#puts "Digite su nombre y apellido:"
#name = gets.chomp

puts "Ingrese el cuerpo de la publicacion"
Post = gets.chomp



require 'faraday'
client = Faraday.new(url:'http://localhost:3000') do |config|
    config.adapter Faraday.default_adapter
    config.token_auth('5c976d4b8d5d5b5acf37108c2c727ddd')   
end

obj_response = client.post do |req|
    req.url '/api/v1/posts'
    req.headers['Content-Type']='application/json'
    req.body = '{"post":{"body": "'+Post+'"}}'
end
=begin
rescue => exception
    
end
obj_response = client.post do |req|
    req.url '/api/v1/users'
    req.headers['Content-Type']='application/json'
    req.body = '{"user":{"name": "'+name+'"}}'
end#5c976d4b8d5d5b5acf37108c2c727ddd
=end
require 'oj'

puts Oj.load(obj_response.body)
puts obj_response.status

