class CreateItineraries < ActiveRecord::Migration[6.0]
  def change
    create_table :itineraries do |t|
      t.string :duration
      t.references :flight_offer

      t.timestamps
    end
  end
end

