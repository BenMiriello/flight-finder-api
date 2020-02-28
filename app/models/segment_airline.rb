class SegmentAirline < ApplicationRecord
  belongs_to :airline
  belongs_to :segment
end
