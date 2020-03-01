class AirlineSerializer < ActiveModel::Serializer
  attributes :id, :name, :iata_code
end
