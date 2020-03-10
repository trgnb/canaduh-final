class CreateMilestones < ActiveRecord::Migration[6.0]
  def change
    create_table :milestones do |t|
      t.datetime :milestone_date
      t.string :milestone_title
      t.string :milestone_path
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
