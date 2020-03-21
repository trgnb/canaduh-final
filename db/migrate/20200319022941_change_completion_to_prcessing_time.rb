class ChangeCompletionToPrcessingTime < ActiveRecord::Migration[6.0]
  def change
    rename_column :milestones, :completion, :processing_time
  end
end
