class AddTaskPathToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :task_path, :string
  end
end
