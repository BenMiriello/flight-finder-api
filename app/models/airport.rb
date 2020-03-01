class Airport < ApplicationRecord

    belongs_to :city
    # belongs_to :country, through :city
    
    has_many :segments
    has_many :response_airports
    has_many :queries
    
end
