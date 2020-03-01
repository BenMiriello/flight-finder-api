class Api::V1::ResponsesController < ApplicationController
    skip_before_action :authorized

    def show
        response = Response.find(params[:id])
        # response = ResponseSerializer.new(response)
        render json: response
    end
    
end

