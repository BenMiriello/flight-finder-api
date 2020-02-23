class PurchasesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :flight_offer_id
end
