class CreateSegmentAirlines < ActiveRecord::Migration[6.0]
    def change
        create_table :segment_airlines do |t|
            t.references :airline, null: false, foreign_key: true
            t.references :segment, null: false, foreign_key: true

            t.timestamps
        end
    end
end

