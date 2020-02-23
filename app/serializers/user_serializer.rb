class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :favorites, :purchases

  has_many :favorites, dependent: :destroy
  has_many :favorited_flight_offers, through: :favorites, source: :flight_offer

  has_many :purchases, dependent: :destroy
  has_many :purchased_flight_offers, through: :purchases, source: :flight_offer

end
