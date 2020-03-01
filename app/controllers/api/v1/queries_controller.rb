class Api::V1::QueriesController < ApplicationController
    skip_before_action :authorized

    def stream
        response.headers['Content-Type'] = 'text/event-stream'
        100.times {
            response.stream.write "hello world\n"
            # sleep 1
        }
    ensure
        response.stream.close
    end
    
    def initiate_test # test controller allows testing from a stored response

        searchParams = {
            "originLocationCode"=>"JFK", 
            "destinationLocationCode"=>"LHR", 
            "departureDate"=>"2020-10-01", 
            "returnDate"=>"2020-10-10", 
            "travelClass"=>"ANY",
            "adults"=>1, 
            "children"=>0, 
            "infants"=>0, 
            "nonStop"=>false, 
            "maxPrice"=>0,
            "max"=>50
        }
        origin = Airport.find_by :iata_code => searchParams["originLocationCode"]
        destination = Airport.find_by :iata_code => searchParams["destinationLocationCode"]
        searchParams[:origin_id] = origin.id
        # byebug
        searchParams[:destination_id] = destination.id
        if @user
            searchParams[:user_id] = @user.id
        else
            @user = User.find(1)
            searchParams[:user_id] = @user.id
        end

        # Query object stores search info. Referenced when user makes the same search again.
        query_obj = Query.create(searchParams)

        # # may need to make new models to track excluded and included airline selections from search
        # searchParams[:excludedAirlines].each do |airline_iata_code|
        #     airline = Airline.find_by :iata_code => airline_iata_code.upcase
        #     if airline
        #         ExcludedAirline.create(:query_id => query_obj.id, :airline_id => airline )
        #     end
        # end

        # Response object stores response information, and all FlightOffers (FOs) belong to one.
        # Front end can GET the response and all FOs that have been created so far before this controller method is done running.
        # This means the front end can start serving the user FOs in +- 2 seconds instead of 10-30 seconds.
        # The response is :resolved => false until all FOs have been created.
        response_obj = Response.create(query_id: query_obj.id)

        render json: {query: query_obj, response: response_obj}.to_json

        # Spawnling allows the controller to send back the line above and then run the following commands on a separate thread.
        Spawnling.new do
            sample_response_file = File.open('amadeus/sample_response_1.rb', 'r')
            raw_response = sample_response_file.read
            sample_response_file.close

            # # Write response to file for safe keeping
            # new_file = File.open("amadeus/responses/query_id:#{query_obj.id}.rb", 'w')
            # new_file.write(raw_response)
            # new_file.close
            
            parsed_response = JSON.parse(raw_response)
            
            # "data" => an array of info that can be mapped into a flight offer object and associated models
            data = parsed_response["data"]
            # dictionaries is referenced by other parts of each datum to give full names for airlines, airports, aircraft.
            dictionaries = parsed_response["dictionaries"]
            
            # setting data.length allows front end to know how many FOs to expect in total
            response_obj.data_length = data.length

            # FlightOffer objects are created with associated itineraries, segments, etc.

            i = 0
            data.each do |datum| 
                if i < 10
                    ParseResponse.mapResponseToModels(response_obj, datum, dictionaries)
                end
                i += 1
            end
            
            response_obj.resolved = true
        end
    end

    def create

        origin = Airport.find_by :iata_code => searchParams["originLocationCode"]
        destination = Airport.find_by :iata_code => searchParams["destinationLocationCode"]
        
        searchParams = params[:searchParams]
        searchParams[:origin_id] = origin.id
        searchParams[:destination_id] = destination.id
        searchParams[:user_id] = @user.id

        # Query object stores search info. Referenced when user makes the same search again.
        query_obj = Query.create(searchParams)
        
        # # may need to make new models to track excluded and included airline selections from search
        # searchParams[:excludedAirlines].each do |airline_iata_code|
        #     airline = Airline.find_by :iata_code => airline_iata_code.upcase
        #     if airline
        #         ExcludedAirline.create(:query_id => query_obj.id, :airline_id => airline )
        #     end
        # end

        # Response object stores response information, and all FlightOffers (FOs) belong to one.
        # Front end can GET the response and all FOs that have been created so far before this controller method is done running.
        # This means the front end can start serving the user FOs in +- 2 seconds instead of 10-30 seconds.
        # The response is :resolved => false until all FOs have been created.
        response_obj = Response.create(query_id: query_obj.id)

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
        data.each { |datum| ParseResponse.mapResponseToModels(response_obj, datum, dictionaries) }
        
        response_obj.resolved = true
    end
    
    def show
        render json: {message: "This endpoint has not been built yet."}
    end
    
end

