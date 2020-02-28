class CreateAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :iata
      t.string :icao
      t.string :latitude
      t.string :longitude
      t.string :alias

      t.timestamps
    end
  end
end

