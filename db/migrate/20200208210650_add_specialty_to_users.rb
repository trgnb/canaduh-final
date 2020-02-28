class AddSpecialtyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :specialty, :string
  end
end
