require 'securerandom'
require 'json'
require 'rest-client'

class Api::V1::FlightOffersController < ApplicationController
    skip_before_action :authorized
    
    def index
        sample_response_file = File.open('amadeus/sample_response_1.rb', 'r')
        response = JSON.parse(sample_response_file.read)
        # response = sample_response_file.read
        sample_response_file.close

        data = response["data"]
        dictionaries = response["dictionaries"]
        query_id64 = SecureRandom.base64(10)

        data.each { |datum| ParseResponse.mapResponseToModels(datum, dictionaries, query_id64) }

        @flight_offers = FlightOffer.where(query_id: query_id64)
        render json: @flight_offers, each_serializer: FlightOfferSerializer
        # @flight_offers.destroy_all
    end

    def create

        @query = Query.create(
            originLocationCode: '',
            destinationLocationCode: '',
            departureDate: '',
            returnDate: '',
            travelClass: 'Economy',
            adults: 1,
            children: 0,
            infants: 0,
            nonStop: false,
            maxPrice: 0
        )

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
        
        if params[:travelClass] == 'Economy' || 'Premium Economy' || 'Business' || 'First Class' 
            class_name = params[:travelClass].parameterize.underscore.upcase
            url += "&travelClass=#{class_name}"
        end
        puts url
        token = 'DeGgi5Gk6bTc3fAaW6znQt5nU06q'
        
        raw_response = RestClient::Request.execute(
            :method => :get,
            :url => url,
            :headers => {:Authorization => "Bearer #{token}"}
        )

        response = JSON.parse(raw_response)
        file_time = Time.now
        new_file = File.open("/amadeus/Flight Offers Search #{origin}-#{destination} #{dep_date}-#{ret_date} #{file_time.to_s[0...-6]}.json", "w")
        new_file.write(raw_response)
        new_file.close

        data = response["data"]
        dictionaries = response["dictionaries"]
        query_id64 = SecureRandom.base64(10)

        data.each { |datum| ParseResponse.mapResponseToModels(@query, datum, dictionaries, query_id64) }

        @flight_offers = FlightOffer.where(query_id: query_id64)
        render json: flight_offers: @flight_offers, each_serializer: FlightOfferSerializer

    end
  
    def show
        @flight_offer = FlightOffer.find(params[:id])
        render json: @flight_offer
    end

end

