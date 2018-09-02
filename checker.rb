require 'net/http'
require 'json'

url = 'https://twitter.com/users/username_available?username=' + ARGV[0]
uri = URI(url)
response = Net::HTTP.get(uri)
data = JSON.parse(response)
puts data["valid"]
