class Response < ApplicationRecord
  belongs_to :query
  has_many :airport_responses
  has_many :airline_responses
  has_many :flight_offers
end

