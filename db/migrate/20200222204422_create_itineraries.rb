class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      # t.integer :temp_id
      t.string :duration
      t.references :flight_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

