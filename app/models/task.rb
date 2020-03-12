class Task < ApplicationRecord
  belongs_to :user

  PROPERTY_OPTIONS = ['high', 'medium', 'low']
  validates :task_name, presence: true
  validates_inclusion_of :priority, in: PROPERTY_OPTIONS
end
