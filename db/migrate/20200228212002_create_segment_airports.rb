class CreateSegmentAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :segment_airports do |t|
      t.references :airport, null: false, foreign_key: true
      t.references :segment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
