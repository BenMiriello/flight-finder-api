class QueryAirport < ApplicationRecord
  belongs_to :airline
  belongs_to :query
end
