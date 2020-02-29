class Api::V1::ResponsesController < ApplicationController

    def show
        response = Response.find(params[:id])
        render json: response
    end
    
end

