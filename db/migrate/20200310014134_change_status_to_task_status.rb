class ChangeStatusToTaskStatus < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :status, :task_status
  end
end
