class Api::V1::ResponsesController < ApplicationController
    skip_before_action :authorized

    def show        
        response = Response.find(params[:id])
        
        render json: response
    end
    
end

# response = ResponseSerializer.new(response)

