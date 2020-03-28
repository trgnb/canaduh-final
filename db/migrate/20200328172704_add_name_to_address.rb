class AddNameToAddress < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :name, :string
  end
end
