class AddAchievedToMilestones < ActiveRecord::Migration[6.0]
  def change
    add_column :milestones, :achieved, :boolean
  end
end
