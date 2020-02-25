class CreateFlightOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :flight_offers do |t|
      # t.references :user, null: false, foreign_key: true
      t.string :xid
      t.string :gds
      t.boolean :instant_ticketing_required
      t.boolean :non_homogenous
      t.boolean :one_way
      t.datetime :last_ticketing_date
      t.integer :number_of_bookable_seats
      t.string :currency_code
      t.string :currency
      t.integer :price_total
      t.integer :price_base
      t.string :price_fees
      t.integer :grand_total
      t.string :fare_type
      t.boolean :included_checked_bags_only
      t.string :validating_airline_codes

      t.timestamps
    end
  end
end
