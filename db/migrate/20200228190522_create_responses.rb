class CreateResponses < ActiveRecord::Migration[6.0]
    def change
        create_table :responses do |t|
            t.references :query, null: false, foreign_key: true
            t.integer :real_flight_offer_count
            t.string :self
            t.integer :expected_flight_offer_count
            t.boolean :resolved, :default => false

            t.timestamps
        end
    end
end

