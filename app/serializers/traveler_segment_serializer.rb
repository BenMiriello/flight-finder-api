class TravelerSegmentSerializer < ActiveModel::Serializer
  attributes :id, :cabin, :branded_fare, :included_checked_bags_quantity
end

## SCHEMA

# create_table "traveler_segments", force: :cascade do |t|
#   t.bigint "traveler_id", null: false
#   t.bigint "segment_id", null: false
#   t.integer "segment_xid"
#   t.string "cabin"
#   t.string "fare_basis"
#   t.string "branded_fare"
#   t.string "rbd_class"
#   t.integer "included_checked_bags_quantity"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
#   t.index ["segment_id"], name: "index_traveler_segments_on_segment_id"
#   t.index ["traveler_id"], name: "index_traveler_segments_on_traveler_id"
# end

