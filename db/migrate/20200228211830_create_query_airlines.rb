class CreateQueryAirlines < ActiveRecord::Migration[6.0]
    def change
        create_table :query_airlines do |t|
            t.references :airline, null: false, foreign_key: true
            t.references :query, null: false, foreign_key: true

            t.timestamps
        end
    end
end

