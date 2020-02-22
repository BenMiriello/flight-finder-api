class CreateTravelers < ActiveRecord::Migration[6.0]
  def change
    create_table :travelers do |t|
      t.references :flight_offer, null: false, foreign_key: true
      t.integer :traveler_xid
      t.string :fare_option
      t.string :traveler_type
      t.string :currency_code
      t.string :currency
      t.integer :total
      t.integer :base

      t.timestamps
    end
  end
end
