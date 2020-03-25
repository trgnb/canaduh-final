class Booking < ApplicationRecord
  belongs_to :ride
  belongs_to :user

  validates :booking_status, presence: true
  validates :status, presence: true

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
