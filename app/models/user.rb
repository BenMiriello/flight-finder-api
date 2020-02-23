class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, length: { minimum: 4 }
    validates :password, length: { minimum: 4 }
    # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    has_many :favorites, dependent: :destroy
    has_many :favorited_flight_offers, through: :favorites, source: :flight_offer
  
    has_many :purchases, dependent: :destroy
    has_many :purchased_flight_offers, through: :purchases, source: :flight_offer
    
end

