class Response < ApplicationRecord

    belongs_to :query
    has_many :response_airports
    has_many :airports, :through => :response_airports
    has_many :response_airlines
    has_many :airlines, :through => :response_airlines
    has_many :flight_offers

end

