class Ride < ApplicationRecord
  belongs_to :user

  # has_many :bookings, dependent: :destroy

  validates :departure_address, presence: true
  validates :destination_address, presence: true
  validates :ride_price, presence: true
  validates :ride_date, presence: true
  validates :ride_capacity, presence: true
end
