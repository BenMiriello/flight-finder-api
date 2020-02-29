# puts "Destroying all flight offers..."
# TravelerSegment.destroy_all
# Traveler.destroy_all
# Segment.destroy_all
# FlightOffer.destroy_all
# Itinerary.destroy_all

require 'json'
sample_response_1_file = File.open('amadeus/sample_response_1.rb', 'r')
sample_response_1 = JSON.parse(sample_response_1_file.read)

def mapResponseToModels(response)
    data = response["data"]
    dictionaries = response["dictionaries"]

    puts "Creating #{response["meta"]["count"]} flight offers..."
    data.each do |datum|
        segments_array = []
        flight_offer_object = FlightOffer.create(
            xid: datum["id"],
            gds: datum["source"],
            instant_ticketing_required: datum["instantTicketingRequired"],
            non_homogenous: datum["nonHomogeneous"],
            one_way: datum["oneWay"],
            last_ticketing_date: datum["lastTicketingDate"],
            number_of_bookable_seats: datum["numberOfBookableSeats"],
            currency_code: datum["price"]["currency"], # currency_code
            currency: dictionaries["currencies"][datum["price"]["currency"]], # currency
            price_total: datum["price"]["total"].to_i,
            price_base: datum["price"]["base"].to_i,
            price_fees: datum["price"]["fees"].join(','), # extra info - save as string
            grand_total: datum["price"]["grandTotal"].to_i,
            fare_type: datum["pricingOptions"]["fareType"].join(","), # an array. there's just one in the example
            included_checked_bags_only: datum["pricingOptions"]["includedCheckedBagsOnly"],
            validating_airline_codes: datum["validatingAirlineCodes"].join(",") # just do first one. when reading can call ".split(",")" which will only split if there are multiple, or just get first 2 chars.
        )

        # create Itineraries
        datum["itineraries"].each do |itinerary|
            itinerary_object = Itinerary.create(
                flight_offer_id: flight_offer_object.id,
                duration: itinerary["duration"]
            )

            # create Segments
            itinerary["segments"].each do |segment|
                segment_object = Segment.create(
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
                segments_array << segment_object
            end
        end

        # create travelers
        datum["travelerPricings"].each do |traveler|
            traveler_object = Traveler.create(
                flight_offer_id: flight_offer_object.id,
                xid: traveler["travelerId"],
                fare_option: traveler["fareOption"],
                traveler_type: traveler["travelerType"],
                currency_code: traveler["price"]["currency"],
                currency: dictionaries["currencies"][traveler["price"]["currency"]],
                total: traveler["price"]["total"].to_i,
                base: traveler["price"]["base"]
            )

            # create traveler_segments
            traveler["fareDetailsBySegment"].each do |fare_details|
                TravelerSegment.create(
                    traveler_id: traveler_object.id,
                    segment_id: segments_array.find{ |segment| segment.xid == fare_details["segmentId"].to_i }.id,
                    segment_xid: fare_details["segmentId"].to_i,
                    cabin: fare_details["cabin"],
                    fare_basis: fare_details["fareBasis"],
                    branded_fare: fare_details["brandedFare"],
                    rbd_class: fare_details["class"], # class_RBD
                    included_checked_bags_quantity: fare_details["includedCheckedBags"]["quantity"]
                )
            end
        end
    end
end

mapResponseToModels(sample_response_1)

sample_response_1_file.close

# TravelerSegment.create(traveler_/id: traveler_object.id, segment_id: segments_array.select{ |segment| segment.xid == fare_details["segmentId"].to_i }, segment_xid: fare_details["segmentId"].to_i, cabin: fare_details["cabin"], fare_basis: fare_details["fareBasis"], branded_fare: fare_details["brandedFare"], rbd_class: fare_details["class"])