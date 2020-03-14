class AddOrderToMilestones < ActiveRecord::Migration[6.0]
  def change
    add_column :milestones, :order, :integer
  end
end
