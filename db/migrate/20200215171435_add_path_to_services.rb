class AddPathToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :path, :string
  end
end
