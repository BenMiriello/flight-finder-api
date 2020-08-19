require "amadeus"
require "dotenv"
require "oauth2"

class Api::V2::QueriesController < ApplicationController
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

        def get_response(url, token)
            RestClient::Request.execute(:method => :get, :url => url, :headers => { :Authorization => "Bearer #{token}" })
        rescue => e
            e
        end

        # Request is sent to Amadues API here:
        raw_response = get_response(url, token)
    end
end
