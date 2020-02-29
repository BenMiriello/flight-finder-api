class FlightOffer < ApplicationRecord

    belongs_to :response
    
    has_many :itineraries, dependent: :destroy
    has_many :travelers, dependent: :destroy

end