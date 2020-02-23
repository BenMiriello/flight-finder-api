class FlightOffersSerializer < ActiveModel::Serializer
  attributes :id, :itineraries, :travelers
  has_many :itineraries
  has_many :travelers

end

