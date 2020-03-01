class ItinerarySerializer < ActiveModel::Serializer
    attributes :id, :duration, :segments

    # has_many :segments

    # def segments
    #     byebug
    #     self.object.segments, each_serializer: SegmentSerializer
    # end

    def segments
        segments = Segment.where(:itinerary_id => self.object.id)
        return segments.map { |segment| SegmentSerializer.new(segment)}
    end
    
end

