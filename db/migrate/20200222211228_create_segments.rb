class CreateSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :segments do |t|
      t.references :itinerary, null: false, foreign_key: true
      t.string :departure_iata
      t.string :departure_city_code
      t.string :departure_country_code
      t.string :departure_terminal
      t.datetime :departure_time
      t.string :arrival_iata
      t.string :arrival_city_code
      t.string :arrival_country_code
      t.string :arrival_terminal
      t.datetime :arrival_time
      t.string :carrier_code
      t.string :carrier
      t.string :flight_number
      t.string :aircraft_code
      t.string :aircraft
      t.string :operating_carrier_code
      t.string :operating_carrier
      t.string :duration
      t.integer :xid
      t.integer :number_of_stops
      t.boolean :blacklisted_in_eu
      
      t.timestamps
    end
  end
end
