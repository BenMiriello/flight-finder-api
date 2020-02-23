class TravelerSerializer < ActiveModel::Serializer
  attributes :id, :traveler_type, :currency_code, :currency, :total, :traveler_segments
  has_many :traveler_segments
  
end

## SCHEMA

# create_table "travelers", force: :cascade do |t|
#   t.bigint "flight_offer_id", null: false
#   t.integer "xid"
#   t.string "fare_option"
#   t.string "traveler_type"
#   t.string "currency_code"
#   t.string "currency"
#   t.integer "total"
#   t.integer "base"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["flight_offer_id"], name: "index_travelers_on_flight_offer_id"
# end