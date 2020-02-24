class Api::V1::PurchasesController < ApplicationController
    # def show
    # end

    # def index
    # end

    def create
        # byebug
        @purchase = Purchase.create(flight_offer_id: params[:flightOffer][:id], user_id: @user.id)
        if @purchase.valid?
            render json: FlightOfferSerializer.new(@purchase.flight_offer).as_json
        else
            render json: { error: 'Purchase unsuccessful.' }
        end
    end
end
