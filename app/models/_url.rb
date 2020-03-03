class Url

    def self.generate(query)
        url = "https://test.api.amadeus.com/v2/shopping/flight-offers"
        origin = query[:originLocationCode].upcase
        url += "?originLocationCode=#{origin}"
        destination = query[:destinationLocationCode].upcase
        url += "&destinationLocationCode=#{destination}"
        dep_date = query[:departureDate]
        url += "&departureDate=#{dep_date}"
        ret_date = query[:returnDate]
        url += "&returnDate=#{ret_date}"
        url += "&adults=#{query[:adults]}"
        url += "&nonStop=#{query[:nonStop]}"
        
        # Add valid optional parameters
        if query[:children] > 0
            url += "&children=#{query[:children]}"
        end
        
        if query[:infants] > 0
            url += "&infants=#{query[:infants]}"
        end
        
        # if query[:travelClass] == 'Economy' || 'Premium Economy' || 'Business' || 'First Class' 
        #     class_name = query[:travelClass].parameterize.underscore.upcase
        #     url += "&travelClass=#{class_name}"
        # end

        if query[:limit]
            url += "&limit=#{query[:limit]}"
        end
        
        return url
    end

end

