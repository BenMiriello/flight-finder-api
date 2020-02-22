class Itinerary < ApplicationRecord
    belongs_to :flight_offer
    # has_many :segments
end
