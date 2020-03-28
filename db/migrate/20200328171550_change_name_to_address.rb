class ChangeNameToAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :addresses, :name, :address
  end
end
