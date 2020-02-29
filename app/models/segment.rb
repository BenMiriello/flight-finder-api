class Segment < ApplicationRecord

    belongs_to :itinerary
    belongs_to :airline
    belongs_to :operating_airline, :foreign_key => :operating_airline_id, :class_name => 'Airline'

    has_many :traveler_segments, :dependent => :destroy

    belongs_to :origin, :foreign_key => :origin_id :class_name => 'Airport'
    belongs_to :destination, :foreign_key => :destination_id, :class_name => 'Airport'

end

