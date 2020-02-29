class CreateAirports < ActiveRecord::Migration[6.0]
    def change
        create_table :airports do |t|
            t.string :name
            t.string :iata_code
            t.string :icao_code
            t.string :latitude
            t.string :longitude
            t.string :alias
            t.string :dst
            t.references :city, :foreign_key => true, :nil => false

            t.timestamps
        end
    end
end

