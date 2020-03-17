class Milestone < ApplicationRecord
  belongs_to :user

  validates :milestone_title, presence: true
end
