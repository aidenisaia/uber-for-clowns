class User < ApplicationRecord
  has_many :clowns, through: :bookings
end
