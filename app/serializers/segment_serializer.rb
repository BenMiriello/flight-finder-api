class SegmentSerializer < ActiveModel::Serializer
  attributes :id, :departure_iata, :departure_city_code, :departure_country_code, :departure_terminal, :departure_time, :arrival_iata, :arrival_city_code, :arrival_country_code, :arrival_terminal, :arrival_time, :carrier_code, :carrier, :flight_number, :aircraft_code, :aircraft, :operating_carrier_code, :operating_carrier, :duration, :number_of_stops
  
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