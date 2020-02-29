class FlightOffer < ApplicationRecord
    
    has_many :itineraries, dependent: :destroy
    has_many :travelers, dependent: :destroy

end