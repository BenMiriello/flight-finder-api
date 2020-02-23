class TravelerSerializer < ActiveModel::Serializer
  attributes :id, :traveler_segments
  has_many :traveler_segments
  
end

