class Task < ApplicationRecord
  belongs_to :user

  validates :task_name, presence: true
end
