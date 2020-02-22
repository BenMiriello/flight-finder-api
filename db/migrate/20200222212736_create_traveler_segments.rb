class CreateTravelerSegments < ActiveRecord::Migration[6.0]
  def change
    create_table :traveler_segments do |t|
      t.references :traveler, null: false, foreign_key: true
      t.references :segment, null: false, foreign_key: true
      t.integer :segmend_xid
      t.string :cabin
      t.string :fare_basis
      t.string :branded_fare
      t.string :class
      t.integer :included_checked_bags_quantity

      t.timestamps
    end
  end
end
