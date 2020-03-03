class AirportSerializer < ActiveModel::Serializer
    attributes :id, :name, :iata_code, :icao_code, :latitude, :longitude, :alias, :dst, :destinations, :city

    def city
        return City.find self.object.city_id
    end

    def country
        return Country.find self.city.country_id
    end

end

