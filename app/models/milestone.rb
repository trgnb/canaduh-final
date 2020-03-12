class Milestone < ApplicationRecord
  belongs_to :user

  validates :milestone_date, presence: true
  validates :milestone_title, presence: true
end
