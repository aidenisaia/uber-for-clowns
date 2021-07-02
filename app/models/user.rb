class User < ApplicationRecord
  has_many :bookings
  has_many :clowns, through: :bookings
end
