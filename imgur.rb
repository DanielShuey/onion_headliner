require 'rest_client'
# secret: 42f9276f7e17c1179dfe37eb04ce639a343b961c

require 'pry'

result= JSON.parse(RestClient.get "https://api.imgur.com/3/gallery/search", authorization: 'Client-ID b0ce66b47061f82', params: {q: "title: cat ext: jpg", perPage: 5})

binding.pry
