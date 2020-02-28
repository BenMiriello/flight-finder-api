require 'securerandom'
require 'json'
require 'rest-client'

class Api::V1::FlightOffersController < ApplicationController
    skip_before_action :authorized
    
    def index
        sample_response_1_file = File.open('amadeus/sample_response_1.rb', 'r')
        response = JSON.parse(sample_response_1_file.read)
        sample_response_1_file.close

        data = response["data"]
        dictionaries = response["dictionaries"]
        query_id64 = SecureRandom.base64(10)

        data.each { |datum| ParseResponse.mapResponseToModels(datum, dictionaries, query_id64) }

        @flight_offers = FlightOffer.where(query_id: query_id64)
        render json: @flight_offers, each_serializer: FlightOfferSerializer
        # @flight_offers.destroy_all
    end

    def create

        puts 'YOURE IN THE CREATE METHOD'
        # byebug
        # Set required parameters
        url = "https://test.api.amadeus.com/v2/shopping/flight-offers"
        origin = params[:originLocationCode].upcase
        url += "?originLocationCode=#{origin}"
        destination = params[:destinationLocationCode].upcase
        url += "&destinationLocationCode=#{destination}"
        dep_date = params[:departureDate][0...-14]
        url += "&departureDate=#{dep_date}"
        ret_date = params[:returnDate][0...-14]
        url += "&returnDate=#{ret_date}"
        url += "&adults=#{params[:adults]}"
        url += "&nonStop=#{params[:nonStop]}"
        
        # Add valid optional parameters
        if params[:children] > 0
            url += "&children=#{params[:children]}"
        end
        
        if params[:infants] > 0
            url += "&infants=#{params[:infants]}"
        end
        
        # if params[:travelClass] == 'Economy' || 'Premium Economy' || 'Business' || 'First Class' 
        #     class_name = params[:travelClass].upcase.underscore
        #     url += "&travelClass=#{class_name}"
        # end

        token = ''

        puts url
        
        raw_response = RestClient::Request.execute(
            :method => :get,
            :url => url,
            :headers => {:Authorization => "Bearer #{token}"}
        )

        puts raw_response["meta"]

        response = JSON.parse(raw_response)
        file_time = Time.now
        new_file = File.open("Amadeus FO Resp #{origin}-#{destination} #{dep_date}-#{ret_date} #{file_time[0...-6]}", "w")
        new_file.write(response)
        new_file.close

        puts response

        # byebug

        data = response["data"]
        dictionaries = response["dictionaries"]
        query_id64 = SecureRandom.base64(10)

        data.each { |datum| ParseResponse.mapResponseToModels(datum, dictionaries, query_id64) }

        @flight_offers = FlightOffer.where(query_id: query_id64)
        render json: @flight_offers, each_serializer: FlightOfferSerializer
    end
  
    def show
        @flight_offer = FlightOffer.find(params[:id])
        render json: @flight_offer
    end

end

# token=

# headers: {
#     'Authorization': "Bearer: #{}"
# }

# GET /v2/shopping/flight-offers?originLocationCode=JFK&amp; destinationLocationCode=BCN&amp; departureDate=2020-10-01&amp; returnDate=2020-10-10&amp; adults=1&amp; nonStop=false&amp; travelClass=ECONOMY HTTP/1.1
# Host: test.api.amadeus.com
# Content-Type: application/x-www-form-urlencoded
# Authorization: Bearer <token>

# RestClient::Request.execute(
#    :method => :get or :post,
#    :url => your_url,
#    :headers => {key => value}
# )

