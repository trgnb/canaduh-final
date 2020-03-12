class Task < ApplicationRecord
  belongs_to :user

  validates :task_name, presence: true
  validates :priority, allow_nil: true
  validates_inclusion_of :task_path, in: ['work visa', 'student visa', 'permanent residency' ,'citizenship']
end
