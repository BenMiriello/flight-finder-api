class ResponseSerializer < ActiveModel::Serializer
    attributes :id, :expected_flight_offer_count, :real_flight_offer_count, :resolved, :airports, :airlines, :flight_offers

    def airports
        # byebug
        response_airports = ResponseAirport.where :response_id => self.object.id
        return response_airports.map{ |res_air| AirportSerializer.new(res_air.airport) }
    end

    def airlines
        # byebug
        response_airlines = ResponseAirline.where :response_id => self.object.id
        return response_airlines.map{ |res_air| AirlineSerializer.new(res_air.airline) }
    end
    
    def flight_offers
        return self.object.flight_offers.map do |flight_offer|
            FlightOfferSerializer.new(flight_offer).as_json
        end
    end
    
end

# has_many :response_airlines
# has_many :airlines, :through => :response_airlines
# has_many :response_airports
# has_many :airports, :through => :response_airports

