class FlightOfferSerializer < ActiveModel::Serializer
    attributes :one_way, :currency, :grand_total, :fare_type, :validating_airline_codes, :itineraries, :travelers
    
    has_many :itineraries
    has_many :travelers

end



## EXAMPLE OF HOW TO CONDITION ON LOGGED IN USER

# attribute :private_data, if: :is_current_user?
# attribute :another_private_data, if: -> { scope.admin? }

# def is_current_user?
#     object.id == current_user.id
# end



## SCHEMA

# create_table "flight_offers", force: :cascade do |t|
#     t.string "xid"
#     t.string "gds"
#     t.boolean "instant_ticketing_required"
#     t.boolean "non_homogenous"
#     t.boolean "one_way"
#     t.datetime "last_ticketing_date"
#     t.integer "number_of_bookable_seats"
#     t.string "currency_code"
#     t.string "currency"
#     t.integer "price_total"
#     t.integer "price_base"
#     t.string "price_fees"
#     t.integer "grand_total"
#     t.string "fare_type"
#     t.boolean "included_checked_bags_only"
#     t.string "validating_airline_codes"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
# end

