class SegmentSerializer < ActiveModel::Serializer
    attributes :id, :itinerary_id, :departure_terminal, :departure_time, :arrival_terminal, :arrival_time, :flight_number, :aircraft_code, :aircraft, :duration, :number_of_stops, :airline, :operating_airline, :origin, :destination
    # , :departure_iata, :departure_city_code, :departure_country_code, :arrival_iata, :arrival_city_code, :arrival_country_code

    # belongs_to :itinerary
    # belongs_to :airline
    # belongs_to :operating_airline, :foreign_key => :operating_airline_id, :class_name => 'Airline'

    # belongs_to :origin, :foreign_key => :origin_id, :class_name => 'Airport'
    # belongs_to :destination, :foreign_key => :destination_id, :class_name => 'Airport'

    def airline
        # byebug
        # AirlineSerializer.new(self.object.airline)
        self.object.airline
    end

    def operating_airline
        # AirlineSerializer.new(self.object.airline)
        self.object.operating_airline
    end

    def origin

        return Airport.find self.object.origin_id
        # city = City.find airport.city_id
        # country = Country.find city.country_id
        
        # return {
        #     airport: airport, 
        #     city: city, 
        #     country: country
        # }
    end

    def origin_city
        airport = Airport.find self.object.origin_id
        return City.find airport.city_id
    end

    def origin_country
        Airport.find self.object.origin_id
        city = City.find airport.city_id
        return Country.find city.country_id
    end

    def destination
        airport = Airport.find self.object.origin_id
        city = City.find airport.city_id
        country = Country.find city.country_id
        
        return {
            airport: airport, 
            city: city, 
            country: country
        }
    end

    # airlineid
    # operatingairlineid
    # originid
    # destinationid
  
end

# create_table "segments", force: :cascade do |t|
#   t.bigint "itinerary_id", null: false
#   t.string "departure_iata"
#   t.string "departure_city_code"
#   t.string "departure_country_code"
#   t.string "departure_terminal"
#   t.datetime "departure_time"
#   t.string "arrival_iata"
#   t.string "arrival_city_code"
#   t.string "arrival_country_code"
#   t.string "arrival_terminal"
#   t.datetime "arrival_time"
#   t.string "carrier_code"
#   t.string "carrier"
#   t.string "flight_number"
#   t.string "aircraft_code"
#   t.string "aircraft"
#   t.string "operating_carrier_code"
#   t.string "operating_carrier"
#   t.string "duration"
#   t.integer "xid"
#   t.integer "number_of_stops"
#   t.boolean "blacklisted_in_eu"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["itinerary_id"], name: "index_segments_on_itinerary_id"
# end