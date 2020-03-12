class AddPriorityToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :priority, :string
  end
end
