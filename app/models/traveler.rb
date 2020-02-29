class Traveler < ApplicationRecord

    belongs_to :flight_offer
    has_many :traveler_segments, dependent: :destroy
    has_many :segments, through: :traveler_segments

end

