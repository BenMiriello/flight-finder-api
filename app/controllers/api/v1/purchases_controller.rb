class Api::V1::PurchasesController < ApplicationController

    def create
        @purchase = Purchase.create(flight_offer_id: params[:flightOffer][:id], user_id: @user.id)
        if @purchase.valid?
            render json: FlightOfferSerializer.new(@purchase.flight_offer).as_json
        else
            render json: { error: 'Purchase unsuccessful.' }.as_json
        end
    end

    def destroy
        @purchase = Purchase.find_by(flight_offer_id: params[:flightOffer][:id], user_id: @user.id)
        @purchase.destroy
        # if Purchase.find(@purchase.id)
        #     render json: { error: 'Purchase was not deleted.' }.as_json
        # else 
            render json: { message: 'Favorite was deleted.' }.as_json
        # end
    end

end

