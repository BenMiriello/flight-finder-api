class Query < ApplicationRecord

    belongs_to :user

    belongs_to :destination, :foreign_key => :destination_id, :class_name => 'Airport'
    belongs_to :origin, :foreign_key => :origin_id, :class_name => 'Airport'
    
    has_one :response
    has_many :flight_offers, through: :response

end

