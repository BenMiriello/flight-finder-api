class AirportSerializer < ActiveModel::Serializer
    attributes :id, :name, :iata_code, :icao_code, :latitude, :longitude, :alias, :dst, :destinations, :city

    belongs_to :city

end

