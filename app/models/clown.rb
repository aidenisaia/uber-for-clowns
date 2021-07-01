class Clown < ApplicationRecord
  has_many :users, through: :bookings
end
