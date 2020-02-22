# AMADEUS #

# GET https://test.api.amadeus.com/v2/shopping/flight-offers?originLocationCode=SYD&destinationLocationCode=BKK&departureDate=2020-08-01&returnDate=2020-08-05&adults=2&includedAirlineCodes=TG&max=3

require 'json'
sample_response_1_file = File.open('sample_response_1.rb', 'r')
sample_response_1 = JSON.parse(sample_response_1_file.read)

data = sample_response_1["data"]

n = 0
flight_offer = data[n]

puts puts puts puts puts puts puts puts puts puts puts puts puts puts puts
puts "-- flight offer: --"
puts 
puts flight_offer["id"]
puts flight_offer["source"]
puts flight_offer["instantTicketingRequired"]
puts flight_offer["nonHomogeneous"]
puts flight_offer["oneWay"]
puts flight_offer["lastTicketingDate"]
puts flight_offer["numberOfBookableSeats"]
puts flight_offer["price"]["currency"] # currency_code
puts sample_response_1["dictionaries"]["currencies"][flight_offer["price"]["currency"]] # currency
puts flight_offer["price"]["total"]
puts flight_offer["price"]["base"]
puts flight_offer["price"]["fees"].join(',') # extra info - save as string
puts flight_offer["price"]["grandTotal"]
puts flight_offer["pricingOptions"]["fareType"].join(",") # an array. there's just one in the example
puts flight_offer["pricingOptions"]["includedCheckedBagsOnly"]
puts flight_offer["validatingAirlineCodes"].join(",") # just do first one. when reading can call ".split(",")" which will only split if there are multiple, or just get first 2 chars.

# save passenger after saving offer, itinerary, segments.
# passenger will belong to flight offer and have many passenger_flights. 
# Flight will have many passenger_flights. That's the joiner.
passenger_1 = flight_offer["travelerPricings"][n]
puts puts  
puts "-- passenger: --" # comes in an array so .each over it
puts 
puts passenger_1["travelerId"] 
puts passenger_1["fareOption"]
puts passenger_1["travelerType"]
puts passenger_1["price"]["currency"] # currency_code
puts sample_response_1["dictionaries"]["currencies"][passenger_1["price"]["currency"]] #currency
puts passenger_1["price"]["total"]
puts passenger_1["price"]["base"]

# fareDetailsBySegment is array so .each over it
# make sure to attach to passenger id: passenger just created above
passenger_segment_1 = passenger_1["fareDetailsBySegment"][n]
puts puts  
puts "-- passenger_flight: --" # comes in an array so .each over it
puts 
puts passenger_segment_1["segmentId"] 
# find segment by: response["data"][n]["itineraries"][n]["segments"].find { |segment| segment["id"] == passenger_segment_1["segmentId"] }
# except this just gives the segment in the response. we want to find the segment object in the db.
puts passenger_segment_1["cabin"]
puts passenger_segment_1["fareBasis"]
puts passenger_segment_1["brandedFare"]
puts passenger_segment_1["class"] # class_RBD
puts passenger_segment_1["includedCheckedBags"]["quantity"]

segment_1 = 
puts puts
puts "-- segment: --"
puts
puts 

sample_response_1_file.close