class QuerySerializer < ActiveModel::Serializer
    attributes :id, :response_id, :origin, :destination, :queryParams

    belongs_to :user

    belongs_to :destination, :foreign_key => :destination_id, :class_name => 'Airport'
    belongs_to :origin, :foreign_key => :origin_id, :class_name => 'Airport'
    
    has_one :response
    # has_many :flight_offers, through: :response
    
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

    # def response
    #     response = Response.find_by :query_id => self.object.id
    #     if response
    #         return ResponseSerializer.new(response)
    #     else
    #         return {error: "No Response object was found."}
    #     end
    # end

end

