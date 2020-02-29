class CreateQueries < ActiveRecord::Migration[6.0]
    def change
        create_table :queries do |t|
            t.references :user, null: false, foreign_key: true 
            t.references :origin_id
            t.references :destination_id
            t.string :originIATACode
            t.string :destinationIATACode
            t.datetime :departureDate
            t.datetime :returnDate
            t.string :travelClass
            t.integer :adults
            t.integer :children
            t.integer :infants
            t.integer :nonStop
            t.integer :maxPrice
            t.integer :origin_id
            t.integer :destination_id
            
            t.timestamps
        end
    end
end

    # t.boolean :resolved, :default => false

