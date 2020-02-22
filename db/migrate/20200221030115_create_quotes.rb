class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.integer :min_price
      t.boolean :direct
      t.integer :outbound_carrier_id
      t.integer :outbound_origin_id
      t.integer :outbound_destination_id
      t.datetime :outbound_departure_date
      t.datetime :quote_datetime

      t.timestamps
    end
  end
end
