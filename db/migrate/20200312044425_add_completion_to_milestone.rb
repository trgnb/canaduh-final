class AddCompletionToMilestone < ActiveRecord::Migration[6.0]
  def change
    add_column :milestones, :completion, :integer
  end
end
