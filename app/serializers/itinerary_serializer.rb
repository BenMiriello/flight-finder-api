class ItinerarySerializer < ActiveModel::Serializer
  attributes :id, :duration, :segments

  has_many :segments
end

## SCHEMA

# create_table "itineraries", force: :cascade do |t|
#   t.string "duration"
#   t.bigint "flight_offer_id", null: false
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["flight_offer_id"], name: "index_itineraries_on_flight_offer_id"
# end