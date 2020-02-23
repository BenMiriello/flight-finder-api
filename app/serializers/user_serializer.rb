class UserSerializer < ActiveModel::Serializer
    attributes :username, :avatar, :bio, :favorited_flight_offers, :purchased_flight_offers

    def favorited_flight_offers
        return self.object.favorited_flight_offers.map do |fo|
            FlightOfferSerializer.new(fo).as_json
        end
    end

    def purchased_flight_offers
        return self.object.purchased_flight_offers.map do |fo|
            FlightOfferSerializer.new(fo).as_json
        end
    end

    # has_many :favorites, dependent: :destroy
    # has_many :favorited_flight_offers, through: :favorites, source: :flight_offer

    # has_many :purchases, dependent: :destroy
    # has_many :purchased_flight_offers, through: :purchases, source: :flight_offer

end

