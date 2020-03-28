class Booking < ApplicationRecord
  BOOKING_OPTIONS = ["pending", "booked", "declined"]

  belongs_to :ride
  belongs_to :user

  validates :booking_status, presence: true
  validates_inclusion_of :booking_status, in: BOOKING_OPTIONS

  # after_commit :create_notifications, on: :create

  # private

  # def create_notifications
  #   Notification.create do |notification|
  #     notification.notify_type = 'post'
  #     notification.actor = self.user
  #     notification.user = self.service.user
  #     notification.target = self
  #     notification.second_target = self.service
  #   end
  # end
end
