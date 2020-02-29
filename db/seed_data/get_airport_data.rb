require 'rest-client'
require 'json'

raw_response = RestClient::Request.execute(
    :method => :get,
    :url => "https://gist.githubusercontent.com/386er/84a78c9dd226a9395818/raw/dbed7a575d899876bff063a3590081f40816309e/airports.json"
)
response = JSON.parse(raw_response)
new_file = File.open('db/seed_data/airport_data.json', 'w')
new_file.write(response)
new_file.close


# file_time = Time.now
# new_file = File.open("db/seed_data/airport_data_#{file_time.to_s[0...-6]}.json", "w")

