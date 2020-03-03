# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_28_211935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airlines", force: :cascade do |t|
    t.string "name"
    t.string "iata_code"
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "iata_code"
    t.string "icao_code"
    t.string "latitude"
    t.string "longitude"
    t.string "alias"
    t.string "dst"
    t.integer "destinations"
    t.bigint "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_airports_on_city_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "country_id"
    t.string "country_name"
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flight_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_offer_id"], name: "index_favorites_on_flight_offer_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "flight_offers", force: :cascade do |t|
    t.integer "response_id", null: false
    t.string "query_id"
    t.string "xid"
    t.string "gds"
    t.boolean "instant_ticketing_required"
    t.boolean "non_homogenous"
    t.boolean "one_way"
    t.datetime "last_ticketing_date"
    t.integer "number_of_bookable_seats"
    t.string "currency_code"
    t.string "currency"
    t.integer "price_total"
    t.integer "price_base"
    t.string "price_fees"
    t.integer "grand_total"
    t.string "fare_type"
    t.boolean "included_checked_bags_only"
    t.string "validating_airline_codes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.string "duration"
    t.bigint "flight_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_offer_id"], name: "index_itineraries_on_flight_offer_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flight_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_offer_id"], name: "index_purchases_on_flight_offer_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "queries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "origin_id"
    t.bigint "destination_id"
    t.string "originLocationCode"
    t.string "destinationLocationCode"
    t.string "departureDate"
    t.string "returnDate"
    t.string "travelClass"
    t.integer "adults"
    t.integer "children"
    t.integer "infants"
    t.string "includedAirlineCodes"
    t.string "excludedAirlineCodes"
    t.boolean "nonStop"
    t.integer "maxPrice"
    t.integer "max"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_queries_on_destination_id"
    t.index ["origin_id"], name: "index_queries_on_origin_id"
    t.index ["user_id"], name: "index_queries_on_user_id"
  end

  create_table "query_airlines", force: :cascade do |t|
    t.bigint "airline_id", null: false
    t.bigint "query_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airline_id"], name: "index_query_airlines_on_airline_id"
    t.index ["query_id"], name: "index_query_airlines_on_query_id"
  end

  create_table "query_airports", force: :cascade do |t|
    t.bigint "airline_id", null: false
    t.bigint "query_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airline_id"], name: "index_query_airports_on_airline_id"
    t.index ["query_id"], name: "index_query_airports_on_query_id"
  end

  create_table "response_airlines", force: :cascade do |t|
    t.bigint "airline_id", null: false
    t.bigint "response_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airline_id"], name: "index_response_airlines_on_airline_id"
    t.index ["response_id"], name: "index_response_airlines_on_response_id"
  end

  create_table "response_airports", force: :cascade do |t|
    t.bigint "response_id", null: false
    t.bigint "airport_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airport_id"], name: "index_response_airports_on_airport_id"
    t.index ["response_id"], name: "index_response_airports_on_response_id"
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "query_id", null: false
    t.integer "real_flight_offer_count"
    t.string "self"
    t.integer "expected_flight_offer_count"
    t.boolean "resolved", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["query_id"], name: "index_responses_on_query_id"
  end

  create_table "segments", force: :cascade do |t|
    t.bigint "itinerary_id", null: false
    t.bigint "airline_id"
    t.integer "operating_airline_id"
    t.integer "origin_id"
    t.integer "destination_id"
    t.string "departure_terminal"
    t.datetime "departure_time"
    t.string "arrival_terminal"
    t.datetime "arrival_time"
    t.string "flight_number"
    t.string "aircraft_code"
    t.string "aircraft"
    t.string "duration"
    t.integer "xid"
    t.integer "number_of_stops"
    t.boolean "blacklisted_in_eu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["airline_id"], name: "index_segments_on_airline_id"
    t.index ["itinerary_id"], name: "index_segments_on_itinerary_id"
  end

  create_table "traveler_segments", force: :cascade do |t|
    t.bigint "traveler_id", null: false
    t.bigint "segment_id", null: false
    t.integer "segment_xid"
    t.string "cabin"
    t.string "fare_basis"
    t.string "branded_fare"
    t.string "rbd_class"
    t.integer "included_checked_bags_quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["segment_id"], name: "index_traveler_segments_on_segment_id"
    t.index ["traveler_id"], name: "index_traveler_segments_on_traveler_id"
  end

  create_table "travelers", force: :cascade do |t|
    t.bigint "flight_offer_id", null: false
    t.integer "xid"
    t.string "fare_option"
    t.string "traveler_type"
    t.string "currency_code"
    t.string "currency"
    t.integer "total"
    t.integer "base"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_offer_id"], name: "index_travelers_on_flight_offer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "airports", "cities"
  add_foreign_key "favorites", "flight_offers"
  add_foreign_key "favorites", "users"
  add_foreign_key "itineraries", "flight_offers"
  add_foreign_key "purchases", "flight_offers"
  add_foreign_key "purchases", "users"
  add_foreign_key "queries", "users"
  add_foreign_key "query_airlines", "airlines"
  add_foreign_key "query_airlines", "queries"
  add_foreign_key "query_airports", "airlines"
  add_foreign_key "query_airports", "queries"
  add_foreign_key "response_airlines", "airlines"
  add_foreign_key "response_airlines", "responses"
  add_foreign_key "response_airports", "airports"
  add_foreign_key "response_airports", "responses"
  add_foreign_key "responses", "queries"
  add_foreign_key "segments", "itineraries"
  add_foreign_key "traveler_segments", "segments"
  add_foreign_key "traveler_segments", "travelers"
  add_foreign_key "travelers", "flight_offers"
end
