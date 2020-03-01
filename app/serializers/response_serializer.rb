class ResponseSerializer < ActiveModel::Serializer
    attributes :id, :data_length, :count, :resolved, :airports, :airlines, :flight_offers

    def airports
        response_airports = ResponseAirport.where :response_id => self.object.id
        response_airports.map{ |res_air| res_air.airport }
    end

    def airlines
        response_airlines = ResponseAirline.where :response_id => self.object.id
        response_airlines.map{ |res_air| res_air.airline }
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

