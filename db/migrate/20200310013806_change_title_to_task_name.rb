class ChangeTitleToTaskName < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :title, :task_name
  end
end
