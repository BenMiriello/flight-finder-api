class Api::V1::FavoritesController < ApplicationController

    def create
        # byebug
        @favorite = Favorite.create(flight_offer_id: params[:flightOffer][:id], user_id: @user.id)
        if @favorite.valid?
            render json: FlightOfferSerializer.new(@favorite.flight_offer).as_json
        else
            render json: { error: 'Favorite unsuccessful.' }
        end
    end
    
end
