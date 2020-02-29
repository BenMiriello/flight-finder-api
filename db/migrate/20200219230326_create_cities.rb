class CreateCities < ActiveRecord::Migration[6.0]
    def change
        create_table :cities do |t|
            t.string :name
            t.string :image
            t.references :country
            t.string :country_name
            
        end
    end
end

