class User < ApplicationRecord
  has_secure_password
  has_many :bookings
  has_many :clowns, through: :bookings

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, uniqueness: true
end
