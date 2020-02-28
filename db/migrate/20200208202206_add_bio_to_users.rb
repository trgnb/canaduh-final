class AddBioToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :user_bio, :text
  end
end
