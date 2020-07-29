class Api::V1::QueriesController < ApplicationController
  # skip_before_action :authorized

  def create
    origin = Airport.find_by :iata_code => params[:searchParams]["originLocationCode"]
    destination = Airport.find_by :iata_code => params[:searchParams]["destinationLocationCode"]

    # Refomat search params before sending through _url generator.
    searchParams = params[:searchParams]
    searchParams[:origin_id] = origin.id
    searchParams[:destination_id] = destination.id
    searchParams[:user_id] = @user.id
    searchParams[:departureDate] = searchParams[:departureDate][0...-14]
    searchParams[:returnDate] = searchParams[:returnDate][0...-14]
    # searchParams[:max] = 250

    # Query object stores search info. Referenced when user makes the same search again.
    query_obj = Query.create(searchParams.permit(:originLocationCode, :destinationLocationCode, :departureDate, :returnDate, :travelClass, :adults, :children, :infants, :nonStop, :maxPrice, :origin_id, :destination_id, :user_id))

    # # May need to make new models to track excluded and included airline selections from search
    # searchParams[:excludedAirlines].each do |airline_iata_code|
    #     airline = Airline.find_by :iata_code => airline_iata_code.upcase
    #     if airline
    #         ExcludedAirline.create(:query_id => query_obj.id, :airline_id => airline )
    #     end
    # end

    ## EXPLANATION
    # Response object stores response information, and all FlightOffers (FOs) belong to one.
    # Front end can GET the response and all FOs that have been created so far before this controller method is done running.
    # This means the front end can start serving the user FOs in +- 5 seconds instead of 30-60 seconds.
    # The response is :resolved => false until all FOs have been created.

    require "amadeus"
    require "dotenv"
    require "oauth2"

    # Response is a model to which all flight offers will be associated once they are processed.
    response_obj = Response.create(:query_id => query_obj.id, :real_flight_offer_count => 0)

    url = Url.generate(searchParams)
    keys = Dotenv.load(".env")

    # Amadeus API keys are needed here:
    # Store in .env, format:
    #   AMADEUS_CLIENT_ID=12345...
    #   AMADEUS_CLIENT_SECRET=67890...
    client = OAuth2::Client.new(
      keys["AMADEUS_CLIENT_ID"],
      keys["AMADEUS_CLIENT_SECRET"],
      site: "https://test.api.amadeus.com",
      token_url: "https://test.api.amadeus.com/v1/security/oauth2/token",
    )

    # New token is generated each request. Token is valid for 30 minutes.
    token = client.client_credentials.get_token.token
    # token = 'j2lwAneaiYMRAlcAMvpvPt9XbE5p'

    def get_response(url, token)
      RestClient::Request.execute(:method => :get, :url => url, :headers => { :Authorization => "Bearer #{token}" })
    rescue => e
      e
    end

    # Request is sent to Amadues API here:
    raw_response = get_response(url, token)

    # if raw_response[0...3] != 200
    #     render json: {:error => "error", :message => raw_response.message, :status_code => raw_response.message[0...3].to_i}.to_json
    # else
    # render json: {:query => query_obj, :response => response_obj}.to_json
    # end

    # Write response to file for safe keeping.
    new_file = File.open(
      "amadeus/responses/Amadeus FO Resp #{origin.iata_code}-#{destination.iata_code} #{searchParams[:departureDate]} - #{searchParams[:returnDate]} #{Time.now}",
      "w"
    )
    new_file.write(raw_response)
    new_file.close

    parsed_response = JSON.parse(raw_response)

    # "data" => an array of info that can be mapped into a flight offer object and associated models
    data = parsed_response["data"]
    # dictionaries is referenced by other parts of each datum to give full names for airlines, airports, aircraft.
    dictionaries = parsed_response["dictionaries"]

    # setting data.length allows front end to know how many FOs to expect in total
    response_obj.update :expected_flight_offer_count => data.length

    length = data.length

    # Make first ten flight offers.
    if length >= 11
      i = 0
      while i < 10
        ParseResponse.map_response_to_models(response_obj, data[i], dictionaries)
        response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
        i += 1
      end
    else
      data.each do |datum|
        ParseResponse.map_response_to_models(response_obj, datum, dictionaries)
        response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
      end
    end

    # Send up Response object and all associated FlightOffers (there will be max 10 at this stage) and all other associated info. See ResponseSerializer for further details.
    render json: { :query => query_obj, :response => ResponseSerializer.new(response_obj) }.to_json

    # Spawnling allows the controller to send back the line above and then run the following commands on a separate thread.
    Spawnling.new do

      # WARNING - Be careful running byebug inside a spawnling method. If server issues come up, refer to the troubleshooting section in the README.

      # FlightOffer objects are created with associated itineraries, segments, etc.
      data.shift(10)
      data.each do |datum|
        ParseResponse.map_response_to_models(response_obj, datum, dictionaries)
        response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
      end

      # Setting resolved to true allows the front end to quickly see if the response is done processing.
      response_obj.update :resolved => true
    end
  end

  # def stream
  #     response.headers['Content-Type'] = 'text/event-stream'
  #     100.times {
  #         response.stream.write "hello world\n"
  #         # sleep 1
  #     }
  # ensure
  #     response.stream.close
  # end

  def initiate_test # test controller allows testing from a stored response

    # filler search params. Will not affect the output, but matches the search parameters which produced the template response data.
    searchParams = {
      "originLocationCode" => "JFK",
      "destinationLocationCode" => "LAX",
      "departureDate" => "2020-03-14",
      "returnDate" => "2020-03-21",
      "travelClass" => "ANY",
      "adults" => 1,
      "children" => 0,
      "infants" => 0,
      "nonStop" => false,
      "maxPrice" => 0,
      "max" => 50,
    }

    origin = Airport.find_by :iata_code => searchParams["originLocationCode"]
    destination = Airport.find_by :iata_code => searchParams["destinationLocationCode"]
    searchParams[:origin_id] = origin.id
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
    response_obj = Response.create(
      :query_id => query_obj.id,
      :real_flight_offer_count => 0,
    )

    # byebug

    sample_response_file = File.open("amadeus/responses/sample_response_1.rb", "r")

    raw_response = sample_response_file.read
    sample_response_file.close

    parsed_response = JSON.parse(raw_response)

    # "data" => an array of info that can be mapped into a flight offer object and associated models
    data = parsed_response["data"]
    # dictionaries is referenced by other parts of each datum to give full names for airlines, airports, aircraft.
    dictionaries = parsed_response["dictionaries"]

    # setting data.length allows front end to know how many FOs to expect in total
    # byebug
    response_obj.update :expected_flight_offer_count => data.length

    # byebug

    length = data.length

    if length >= 11
      i = 0
      while i < 10
        ParseResponse.map_response_to_models(response_obj, data[i], dictionaries)
        response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
        i += 1
      end
    else
      data.each do |datum|
        ParseResponse.map_response_to_models(response_obj, datum, dictionaries)
        response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
      end
    end

    render json: { :query => query_obj, :response => ResponseSerializer.new(response_obj) }.to_json

    # Spawnling allows the controller to send back the line above and then run the following commands on a separate thread.
    Spawnling.new do
      # FlightOffer objects are created with associated itineraries, segments, etc.
      data.shift(10)
      data.each do |datum|
        ParseResponse.map_response_to_models(response_obj, datum, dictionaries)
        response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
      end

      response_obj.update :resolved => true
    end
  end

  # # Former version where more functionality was run in the Spawnling method.

  # Spawnling.new do

  #     parsed_response = JSON.parse(raw_response)

  #     # "data" => an array of info that can be mapped into a flight offer object and associated models
  #     data = parsed_response["data"]
  #     # dictionaries is referenced by other parts of each datum to give full names for airlines, airports, aircraft.
  #     dictionaries = parsed_response["dictionaries"]

  #     # setting data.length allows front end to know how many FOs to expect in total
  #     response_obj.update :expected_flight_offer_count => data.length

  #     # FlightOffer objects are created with associated itineraries, segments, etc.
  #     data.each do |datum|
  #         ParseResponse.map_response_to_models(response_obj, datum, dictionaries)
  #         response_obj.update :real_flight_offer_count => response_obj.real_flight_offer_count + 1
  #     end

  #     response_obj.update :resolved => true
  # end

  def show
    render json: { message: "This endpoint has not been built yet." }
  end
end
