puts "Destroying all flight offers"
FlightOffer.destroy_all
Itinerary.destroy_all

require 'json'
sample_response_1_file = File.open('db/amadeus_test/sample_response_1.rb', 'r')
sample_response_1 = JSON.parse(sample_response_1_file.read)

def mapResponseToModels(response)
    data = response["data"]
    dictionaries = response["dictionaries"]

    puts "Creating #{response["meta"]["count"]} flight offers..."
    data.each do
        n = 0
        flight_offer = data[n]
        flight_offer_object = FlightOffer.create(
            xid: flight_offer["id"],
            gds: flight_offer["source"],
            instant_ticketing_required: flight_offer["instantTicketingRequired"],
            non_homogenous: flight_offer["nonHomogeneous"],
            one_way: flight_offer["oneWay"],
            last_ticketing_date: flight_offer["lastTicketingDate"],
            number_of_bookable_seats: flight_offer["numberOfBookableSeats"],
            currency_code: flight_offer["price"]["currency"], # currency_code
            currency: dictionaries["currencies"][flight_offer["price"]["currency"]], # currency
            price_total: flight_offer["price"]["total"],
            price_base: flight_offer["price"]["base"],
            price_fees: flight_offer["price"]["fees"].join(','), # extra info - save as string
            grand_total: flight_offer["price"]["grandTotal"],
            fare_type: flight_offer["pricingOptions"]["fareType"].join(","), # an array. there's just one in the example
            included_checked_bags_only: flight_offer["pricingOptions"]["includedCheckedBagsOnly"],
            validating_airline_codes: flight_offer["validatingAirlineCodes"].join(",") # just do first one. when reading can call ".split(",")" which will only split if there are multiple, or just get first 2 chars.
        )

        flight_offer["itineraries"].each do |itinerary|
            itinerary_object = Itinerary.create(
                flight_offer_id: flight_offer_object.id,
                duration: itinerary["duration"]
            )

            itinerary["segments"].each do |segment|
                Segment.create(
                    departure_iata: segment["departure"]["iataCode"],
                    departure_city_code: dictionaries["locations"][segment["departure"]["iataCode"]]["cityCode"],
                    departure_country_code: dictionaries["locations"][segment["departure"]["iataCode"]]["countryCode"],
                    departure_terminal: segment["departure"]["terminal"],
                    departure_time: segment["departure"]["at"],
                    arrival_iata: segment["arrival"]["iataCode"],
                    arrival_city_code: dictionaries["locations"][segment["arrival"]["iataCode"]]["cityCode"],
                    arrival_country_code: dictionaries["locations"][segment["arrival"]["iataCode"]]["countryCode"],
                    arrival_terminal: segment["arrival"]["terminal"],
                    arrival_time: segment["arrival"]["at"],
                    carrier_code: segment["carrierCode"],
                    carrier: dictionaries["carriers"][segment["carrierCode"]],
                    flight_number: segment["number"],
                    aircraft_code: segment["aircraft"]["code"],
                    aircraft: dictionaries["aircraft"][segment["aircraft"]["code"]],
                    operating_carrier_code: segment["operating"]["carrierCode"],
                    operating_carrier: dictionaries["carriers"][segment["operatingCarrierCode"]],
                    duration: segment["duration"],
                    xid: segment["id"].to_i,
                    number_of_stops: segment["numberOfStops"],
                    blacklisted_in_eu: segment["blacklistedInEU"],
                    itinerary_id: itinerary_object.id
                )
            end
        end
    end
end

mapResponseToModels(sample_response_1)

sample_response_1_file.close