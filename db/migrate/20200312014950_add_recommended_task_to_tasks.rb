class AddRecommendedTaskToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :recommended_task, :boolean
  end
end
