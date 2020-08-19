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

    end
end
