class QuerySerializer < ActiveModel::Serializer
    attributes :id, :queryParams, :flight_offers, :response, :flight_offers

    def queryParams
        object = self.object
        return {
            :originLocationCode => object.originLocationCode,
            :destinationLocationCode => object.destinationLocationCode,
            :departureDate => object.departureDate,
            :returnDate => object.returnDate,
            :travelClass => object.travelClass,
            :adults => object.adults,
            :children => object.children,
            :infants => object.infants,
            :nonStop => object.nonStop,
            :maxPrice => object.maxPrice,
            :resolved => object.resolved,
            :origin => object.origin,
            :destination => object.destination
        }
    end

    def response
        response = Response.find_by :query_id => self.object.id
        if response
            return ResponseSerializer.new(response)
        else
            return {error: "No Response object was found."}
        end
    end

end

