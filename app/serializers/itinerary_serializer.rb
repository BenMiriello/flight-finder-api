class ItinerarySerializer < ActiveModel::Serializer
    attributes :id, :duration, :segments, :origin, :destination

    has_many :segments
    belongs_to :origin
    belongs_to :destination
    # alias_attribute :origin, :airport
    # alias_attribute :destination, :airport

end

