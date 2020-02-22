class Segment < ApplicationRecord
  belongs_to :itinerary
  has_many :traveler_segments, dependent: :destroy
end
