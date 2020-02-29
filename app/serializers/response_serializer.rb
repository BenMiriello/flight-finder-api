class ResponseSerializer < ActiveModel::Serializer
    attributes :id, :data_length, :airports, :airlines :flight_offers

    has_many :response_airlines
    has_many :airlines, :through => response_airlines
    has_many :response_airports
    has_many :airports, :through => response_airports

    def flight_offers
        return self.object.flight_offers.map do |flight_offer|
            FlightOfferSerializer.new(flight_offer).as_json
        end
    end

end

