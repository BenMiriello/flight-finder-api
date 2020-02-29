class Api::V1::QueryController < ApplicationController

    def create
        
        origin = Airport.find_by :iata_code => searchParams["originLocationCode"]
        destination = Airport.find_by :iata_code => searchParams["destinationLocationCode"]
        
        searchParams = params[:searchParams]
        searchParams[:origin_id] = origin.id
        searchParams[:destination_id] = destination.id
        searchParams[:user_id] = @user.id

        # Query object stores search info. Referenced when user makes the same search again.
        query_obj = Query.create(searchParams)
        QueryAirline.create()

        # Response object stores response information, and all FlightOffers (FOs) belong to one.
        # Front end can GET the response and all FOs that have been created so far before this controller method is done running.
        # This means the front end can start serving the user FOs in +- 2 seconds instead of 10-30 seconds.
        # The response is :resolved => false until all FOs have been created.
        response_obj = Response.create()

        render json: {query: query_obj, response: response_obj}

        url = Url.generate(query_obj)
        
        token = 'DeGgi5Gk6bTc3fAaW6znQt5nU06q'
        
        raw_response = RestClient::Request.execute(
            :method => :get,
            :url => url,
            :headers => {:Authorization => "Bearer #{token}"}
        )

        # Write response to file for safe keeping
        new_file = File.open("amadeus/responses/query_id:#{query_obj.id}.rb")
        new_file.write(raw_response)
        new_file.close
        
        parsed_response = JSON.parse(raw_response)
        
        # "data" => an array of info that can be mapped into a flight offer object and associated models
        data = parsed_response["data"]
        # dictionaries is referenced by other parts of each datum to give full names for airlines, airports, aircraft.
        dictionaries = parsed_response["dictionaries"]
        
        # setting data.length allows front end to know how many FOs to expect in total
        response_obj.data_length = data.length

        # FlightOffer objects are created with associated itineraries, segments, etc.
        data.each { |datum| ParseResponse.mapResponseToModels(response_obj.id, datum, dictionaries) }
        
        response_obj.resolved = true
    end
    
    def show
        render json: {message: "This endpoint has not been built yet."}
    end
    
end

# (
    # originLocationCode: searchParams.originLocationCode,
    # destinationLocationCode: searchParams.destinationLocationCode,
    # departureDate: searchParams.departureDate,
    # returnDate: searchParams.returnDate,
    # travelClass: searchParams.travelClass,
    # adults: searchParams.adults,
    # children: searchParams.children,
    # infants: searchParams.infants,
    # nonStop: searchParams.nonStop,
    # maxPrice: searchParams.maxPrice,
    # user_id: searchParams.user_id,
    # origin_id: origin.id,
    # destination_id: destination.id
    # )
    
    # file_time = Time.now
    # new_file = File.open("/amadeus/Flight Offers Search #{origin}-#{destination} #{dep_date}-#{ret_date} #{file_time.to_s[0...-6]}.json", "w")
    
    # query_id64 = SecureRandom.base64(10)
    
