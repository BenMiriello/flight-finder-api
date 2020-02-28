class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.references :query, null: false, foreign_key: true
      t.integer :count
      t.string :self

      t.timestamps
    end
  end
end