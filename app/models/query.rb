class Query < ApplicationRecord
    belongs_to :user
    has_one :response
    has_many :flight_offers, through: :response
    has_many :airport_queries
    has_many :airline_queries
end

