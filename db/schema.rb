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

ActiveRecord::Schema.define(version: 2020_02_22_193836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
