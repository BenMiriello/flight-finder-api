class ResponseAirport < ApplicationRecord
  belongs_to :airport
  belongs_to :airline
end