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

