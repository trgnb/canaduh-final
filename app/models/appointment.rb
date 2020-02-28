class Appointment < ApplicationRecord
  APPOINTMENT_OPTIONS = ["pending confirmation", "confirmed", "declined"]

  belongs_to :service
  belongs_to :user

  validates :date, presence: true
  validates :status, presence: true
  validates_inclusion_of :status, in: APPOINTMENT_OPTIONS

  after_commit :create_notifications, on: :create

  private

  def create_notifications
    Notification.create do |notification|
      notification.notify_type = 'post'
      notification.actor = self.user
      notification.user = self.service.user
      notification.target = self
      notification.second_target = self.service
    end
  end

end
