class AddPathTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :path_type, :string
  end
end
