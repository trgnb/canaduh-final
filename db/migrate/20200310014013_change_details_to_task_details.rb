class ChangeDetailsToTaskDetails < ActiveRecord::Migration[6.0]
  def change
    rename_column :tasks, :details, :task_details
  end
end
