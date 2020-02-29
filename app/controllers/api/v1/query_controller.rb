class Api::V1::QueryController < ApplicationController

    def create
        
        origin = Airport.find_by :iata_code => searchParams["originLocationCode"]
        destination = Airport.find_by :iata_code => searchParams["destinationLocationCode"]
        
        searchParams = params[:searchParams]
        searchParams[:origin_id] = origin.id
        searchParams[:destination_id] = destination.id
        searchParams[:user_id] = @user.id
        
        @query = Query.create(searchParams)

        url = Generate.url(searchParams)
        
        token = 'DeGgi5Gk6bTc3fAaW6znQt5nU06q'
        
        raw_response = RestClient::Request.execute(
            :method => :get,
            :url => url,
            :headers => {:Authorization => "Bearer #{token}"}
        )

        response = JSON.parse(raw_response)
        file_time = Time.now
        new_file = File.open("/amadeus/Flight Offers Search #{origin}-#{destination} #{dep_date}-#{ret_date} #{file_time.to_s[0...-6]}.json", "w")
        new_file.write(raw_response)
        new_file.close

        data = response["data"]
        dictionaries = response["dictionaries"]
        query_id64 = SecureRandom.base64(10)

        data.each { |datum| ParseResponse.mapResponseToModels(@query, datum, dictionaries, query_id64) }

        @flight_offers = FlightOffer.where(query_id: query_id64)
        render json: flight_offers: @flight_offers, each_serializer: FlightOfferSerializer

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

