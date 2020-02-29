class CreateQueries < ActiveRecord::Migration[6.0]
    def change
        create_table :queries do |t|
            t.references :user, null: false, foreign_key: true 
            t.references :origin
            t.references :destination
            t.string :originLocationCode
            t.string :destinationLocationCode
            t.string :departureDate
            t.string :returnDate
            t.string :travelClass
            t.integer :adults
            t.integer :children
            t.integer :infants
            t.boolean :nonStop
            t.integer :maxPrice
            t.integer :max
            
            t.timestamps
        end
    end
end

