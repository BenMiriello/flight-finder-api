class ParseResponse 
    
    def self.mapResponseToModels(response_obj, datum, dictionaries)
        segments_array = []
        # byebug
        # create FlightOffer
        flight_offer_object = FlightOffer.create(
            response_id: response_obj.id,
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
            # Thread.new do
                itinerary_object = Itinerary.create(
                    flight_offer_id: flight_offer_object.id,
                    duration: itinerary["duration"]
                )
                
                # create Segments
                itinerary["segments"].each do |segment|
                    # Thread.new do
                        airline = Airline.find_by :iata_code => segment["carrierCode"]
                        operating_airline = Airline.find_by :iata_code => segment["operating"]["carrierCode"]
                        origin = Airport.find_by :iata_code => segment["departure"]["iataCode"]
                        destination = Airport.find_by :iata_code => segment["arrival"]["iataCode"]
                        segment_object = Segment.create(
                            airline_id: airline.id,
                            operating_airline_id: operating_airline.id,
                            origin_id: origin.id,
                            destination_id: destination.id,
                            departure_terminal: segment["departure"]["terminal"],
                            departure_time: segment["departure"]["at"],
                            arrival_terminal: segment["arrival"]["terminal"],
                            arrival_time: segment["arrival"]["at"],
                            flight_number: segment["number"],
                            aircraft_code: segment["aircraft"]["code"],
                            aircraft: dictionaries["aircraft"][segment["aircraft"]["code"]],
                            duration: segment["duration"],
                            xid: segment["id"].to_i,
                            number_of_stops: segment["numberOfStops"],
                            blacklisted_in_eu: segment["blacklistedInEU"],
                            itinerary_id: itinerary_object.id
                        )
                    # end
                    segments_array << segment_object
                end
            # end
        end
        
        # create travelers
        datum["travelerPricings"].each do |traveler|
            # Thread.new do
                traveler_object = Traveler.create(
                    flight_offer_id: flight_offer_object.id,
                    fare_option: traveler["fareOption"],
                    traveler_type: traveler["travelerType"],
                    currency_code: traveler["price"]["currency"],
                    currency: dictionaries["currencies"][traveler["price"]["currency"]],
                    total: traveler["price"]["total"].to_i,
                    base: traveler["price"]["base"]
                )
            # end
            
            # create traveler_segments
            traveler["fareDetailsBySegment"].each do |fare_details|
                # Thread.new do
                    TravelerSegment.create(
                        traveler_id: traveler_object.id,
                        segment_id: segments_array.find{ |segment| segment.xid == fare_details["segmentId"].to_i }.id,
                        cabin: fare_details["cabin"],
                        fare_basis: fare_details["fareBasis"],
                        branded_fare: fare_details["brandedFare"],
                        rbd_class: fare_details["class"], # class_RBD
                        included_checked_bags_quantity: fare_details["includedCheckedBags"]["quantity"]
                    )
                # en
            end
        end
        puts flight_offer_object.id
        return flight_offer_object
    end
end

