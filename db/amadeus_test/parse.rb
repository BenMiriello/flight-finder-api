# AMADEUS #

# GET https://test.api.amadeus.com/v2/shopping/flight-offers?originLocationCode=SYD&destinationLocationCode=BKK&departureDate=2020-08-01&returnDate=2020-08-05&adults=2&includedAirlineCodes=TG&max=3

require 'json'
sample_response_1_file = File.open('db/amadeus_test/sample_response_1.rb', 'r')
sample_response_1 = JSON.parse(sample_response_1_file.read)

data = sample_response_1["data"]
dictionaries = sample_response_1["dictionaries"]

n = 0
flight_offer_1 = data[n]

20.times { puts }
puts "-- flight offer --"
puts 
puts flight_offer_1["id"]
puts flight_offer_1["source"]
puts flight_offer_1["instantTicketingRequired"]
puts flight_offer_1["nonHomogeneous"]
puts flight_offer_1["oneWay"]
puts flight_offer_1["lastTicketingDate"]
puts flight_offer_1["numberOfBookableSeats"]
puts flight_offer_1["price"]["currency"] # currency_code
puts dictionaries["currencies"][flight_offer_1["price"]["currency"]] # currency
puts flight_offer_1["price"]["total"]
puts flight_offer_1["price"]["base"]
puts flight_offer_1["price"]["fees"].join(',') # extra info - save as string
puts flight_offer_1["price"]["grandTotal"]
puts flight_offer_1["pricingOptions"]["fareType"].join(",") # an array. there's just one in the example
puts flight_offer_1["pricingOptions"]["includedCheckedBagsOnly"]
puts flight_offer_1["validatingAirlineCodes"].join(",") # just do first one. when reading can call ".split(",")" which will only split if there are multiple, or just get first 2 chars.

# save passenger after saving offer, itinerary, segments.
# passenger will belong to flight offer and have many passenger_flights. 
# Flight will have many passenger_flights. That's the joiner.
passenger_1 = flight_offer_1["travelerPricings"][n]
puts puts  
puts "-- passenger --" # comes in an array so .each over it
puts 
puts passenger_1["travelerId"] 
puts passenger_1["fareOption"]
puts passenger_1["travelerType"]
puts passenger_1["price"]["currency"] # currency_code
puts dictionaries["currencies"][passenger_1["price"]["currency"]] #currency
puts passenger_1["price"]["total"]
puts passenger_1["price"]["base"]

# fareDetailsBySegment is array so .each over it
# make sure to attach to passenger id: passenger just created above
# and find the passenger_segment with the aid of the method below:
passenger_segment_1 = passenger_1["fareDetailsBySegment"][n]
puts puts  
puts "-- passenger_flight --" # comes in an array so .each over it
puts 
puts passenger_segment_1["segmentId"] 
# find segment by: response["data"][n]["itineraries"][n]["segments"].find { |segment| segment["id"] == passenger_segment_1["segmentId"] }
# except this just gives the segment in the response. we want to find the segment object in the db.
puts passenger_segment_1["cabin"]
puts passenger_segment_1["fareBasis"]
puts passenger_segment_1["brandedFare"]
puts passenger_segment_1["class"] # class_RBD
puts passenger_segment_1["includedCheckedBags"]["quantity"]

# remember to save association of itinerary to flight_offer object created above
itinerary_1 = flight_offer_1["itineraries"][0]
puts puts
puts "-- itinerary --"
puts
puts itinerary_1["duration"]
# should probably convert this duration string (ex: "PT6H50M") from ISO8601 format to...
# maybe use postgresql interval datatype: https://www.postgresql.org/docs/8.2/datatype-datetime.html
# and ActiveSupport::Duration to get time interval w/o date in Rails: https://api.rubyonrails.org/v5.2.4.1/classes/ActiveSupport/Duration.html
# or... just store as it comes as a string.


segment_1 = itinerary_1["segments"][0]
puts puts
puts "-- segment --"
puts
# departing_iata
    puts segment_1["departure"]["iataCode"]
# departing_city_code
    puts dictionaries["locations"][segment_1["departure"]["iataCode"]]["cityCode"]
# departing_country_code
    puts dictionaries["locations"][segment_1["departure"]["iataCode"]]["countryCode"]
# departing_terminal
    puts segment_1["departure"]["terminal"]
# departure_time
    puts segment_1["departure"]["at"] 
# departing_iata
    puts segment_1["arrival"]["iataCode"]
# departing_city_code
    puts dictionaries["locations"][segment_1["arrival"]["iataCode"]]["cityCode"]
# departing_country_code
    puts dictionaries["locations"][segment_1["arrival"]["iataCode"]]["countryCode"]
# departing_terminal
    puts segment_1["arrival"]["terminal"]
# arrival_time
    puts segment_1["arrival"]["at"] 
# carrier_code
    puts segment_1["carrierCode"]
# flight_number
    puts segment_1["number"]
# aircraft_code
    puts segment_1["aircraft"]["code"]
# aircraft
    puts dictionaries["aircraft"][segment_1["aircraft"]["code"]]
# operating_carrier_code
    puts segment_1["operating"]["carrierCode"]
# duration
    puts segment_1["duration"]
# xid
    puts segment_1["id"]
# number_of_stops
    puts segment_1["numberOfStops"]
# blacklisted_in_eu
    puts segment_1["blacklistedInEU"]

puts
sample_response_1_file.close