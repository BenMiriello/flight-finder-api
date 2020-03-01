class CitySerializer < ActiveModel::Serializer
    attributes :id, :name, :image, :country

    belongs_to :country

end

