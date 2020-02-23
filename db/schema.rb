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

ActiveRecord::Schema.define(version: 2020_02_23_214819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flight_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_offer_id"], name: "index_favorites_on_flight_offer_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "flight_offers", force: :cascade do |t|
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

  create_table "segments", force: :cascade do |t|
    t.bigint "itinerary_id", null: false
    t.string "departure_iata"
    t.string "departure_city_code"
    t.string "departure_country_code"
    t.string "departure_terminal"
    t.datetime "departure_time"
    t.string "arrival_iata"
    t.string "arrival_city_code"
    t.string "arrival_country_code"
    t.string "arrival_terminal"
    t.datetime "arrival_time"
    t.string "carrier_code"
    t.string "carrier"
    t.string "flight_number"
    t.string "aircraft_code"
    t.string "aircraft"
    t.string "operating_carrier_code"
    t.string "operating_carrier"
    t.string "duration"
    t.integer "xid"
    t.integer "number_of_stops"
    t.boolean "blacklisted_in_eu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "favorites", "flight_offers"
  add_foreign_key "favorites", "users"
  add_foreign_key "itineraries", "flight_offers"
  add_foreign_key "purchases", "flight_offers"
  add_foreign_key "purchases", "users"
  add_foreign_key "segments", "itineraries"
  add_foreign_key "traveler_segments", "segments"
  add_foreign_key "traveler_segments", "travelers"
  add_foreign_key "travelers", "flight_offers"
end
