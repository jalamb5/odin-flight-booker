class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
  has_many :bookings
end
