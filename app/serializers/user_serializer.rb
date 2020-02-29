class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :avatar, :bio, :favorited_flight_offers, :purchased_flight_offers, :queries

    has_many :queries
    
    def favorited_flight_offers
        return self.object.favorited_flight_offers.map do |flight_offer|
            FlightOfferSerializer.new(flight_offer).as_json
        end
    end

    def purchased_flight_offers
        return self.object.purchased_flight_offers.map do |flight_offer|
            FlightOfferSerializer.new(flight_offer).as_json
        end
    end


    # has_many :favorites, dependent: :destroy
    # has_many :favorited_flight_offers, through: :favorites, source: :flight_offer

    # has_many :purchases, dependent: :destroy
    # has_many :purchased_flight_offers, through: :purchases, source: :flight_offer

end

