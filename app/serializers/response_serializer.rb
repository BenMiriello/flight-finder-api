class ResponseSerializer < ActiveModel::Serializer
    attributes :id, :flight_offers

    def flight_offers
        return self.object.flight_offers.map do |flight_offer|
            FlightOfferSerializer.new(flight_offer).as_json
        end
    end

end

