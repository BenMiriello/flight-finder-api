# require_relative '../../../../amadeus/mapResponseToModels.rb'
# puts test

# require 'json'
# sample_response_1_file = File.open('db/amadeus_test/sample_response_1.rb', 'r')
# sample_response_1 = JSON.parse(sample_response_1_file.read)

# ParseResponse.mapResponseToModels(sample_response_1, 1)
# sample_response_1_file.close

class Api::V1::FlightOffersController < ApplicationController
    skip_before_action :authorized
    
    def index
        @flight_offers = FlightOffer.all
        render json: @flight_offers
    end
  
    def show
        @flight_offer = FlightOffer.find(params[:id])
        render json: @flight_offer
    end
end

# caching

