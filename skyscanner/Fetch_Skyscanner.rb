# require 'httparty'

# headers = {
#     "X-RapidAPI-Host" => "restcountries-v1.p.rapidapi.com",
#     "X-RapidAPI-Key" => "e1cdf5f0e0mshde71621b569eda5p1bb99cjsn988de04b7910"
#   }

# url = 'https://restcountries-v1.p.rapidapi.com/all'
# response = HTTParty.get(url, :headers => headers)
# puts response.parsed_response

# require 'uri'
# require 'net/http'
# require 'openssl'
# require 'json'

# url = URI("https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/browseroutes/v1.0/US/USD/en-US/NYC/LHR/2020-10-01?inboundpartialdate=2020-10-10")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'skyscanner-skyscanner-flight-search-v1.p.rapidapi.com'
# request["x-rapidapi-key"] = 'e1cdf5f0e0mshde71621b569eda5p1bb99cjsn988de04b7910'

# response = http.request(request)
# response.read_body

# rm_array = JSON.parse(response.read_body)
# # puts rm_array["Quotes"]
# rm_array["Quotes"].each do |quote|
#     # byebug
#     Quote.create(
#         min_price: quote["MinPrice"],
#         direct: quote["Direct"],
#         outbound_carrier_id: quote["OutboundLeg"]["CarrierIds"],
#         outbound_origin_id: quote["OutboundLeg"]["OriginId"],
#         outbound_destination_id: quote["OutboundLeg"]["DestinationId"],
#         outbound_departure_date: quote["OutboundLeg"]["DepartureDate"],
#         quote_datetime: quote["QuoteDateTime"]
#     )
# end

# NOTE: save external ids as _xid ?

# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/pricing/uk2/v1.0/3168cdcb-a280-4786-95b5-93c39cb7787a?sortType=price&sortOrder=asc&originAirports=JFK&destinationAirports=LHR")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'skyscanner-skyscanner-flight-search-v1.p.rapidapi.com'
# request["x-rapidapi-key"] = 'e1cdf5f0e0mshde71621b569eda5p1bb99cjsn988de04b7910'

# response = http.request(request)
# puts response.read_body

# File.open("analyze_return.rb", "w") { |file| file.puts "response = #{response.read_body}"}




require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/pricing/uk2/v1.0/3168cdcb-a280-4786-95b5-93c39cb7787a?sortType=price&sortOrder=asc&originAirports=JFK&destinationAirports=LHR")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["x-rapidapi-host"] = 'skyscanner-skyscanner-flight-search-v1.p.rapidapi.com'
request["x-rapidapi-key"] = 'e1cdf5f0e0mshde71621b569eda5p1bb99cjsn988de04b7910'

response = http.request(request)
puts response.read_body





#############################################################################
# SKYSCANNER

# Create session
# response = Unirest.post "https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/pricing/v1.0",
#   headers:{
#     "X-RapidAPI-Host" => "skyscanner-skyscanner-flight-search-v1.p.rapidapi.com",
#     "X-RapidAPI-Key" => "e1cdf5f0e0mshde71621b569eda5p1bb99cjsn988de04b7910",
#     "Content-Type" => "application/x-www-form-urlencoded"
#   },
#   parameters:{
#     "inboundDate" => "2019-09-10",
#     "cabinClass" => "business",
#     "children" => 0,
#     "infants" => 0,
#     "country" => "US",
#     "currency" => "USD",
#     "locale" => "en-US",
#     "originPlace" => "SFO-sky",
#     "destinationPlace" => "LHR-sky",
#     "outboundDate" => "2019-09-01",
#     "adults" => 1
#   }





# class FetchSkyscanner
#     def initialize(params)
#         if params.length == 0
            
#         let 
#         require 'uri'
#         require 'net/http'
#         require 'openssl'
#     end
# end
    
    # puts "Usage: {country: '<US>' (req), currency: '<USD>', locale: '<en-US>', originPlace: 'SFO-sky'"
