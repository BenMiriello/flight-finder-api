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

    def destroy
        @favorite = Favorite.find_by(flight_offer_id: params[:flightOffer][:id], user_id: @user.id)
        @favorite.destroy
        # if Favorite.find(@favorite.id)
        #     render json: { error: 'Favorite was not deleted.' }.as_json
        # else 
            render json: { message: 'Favorite was deleted.' }.as_json
        # end
    end
    
end

