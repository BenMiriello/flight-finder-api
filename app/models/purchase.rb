class Purchase < ApplicationRecord

    belongs_to :user
    belongs_to :flight_offer

end
