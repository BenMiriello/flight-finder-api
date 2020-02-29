class CreateAirlines < ActiveRecord::Migration[6.0]
    def change
        create_table :airlines do |t|
            t.string :name
            t.string :iata_code
        end
    end
end

