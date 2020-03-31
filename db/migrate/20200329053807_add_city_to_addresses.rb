class AddCityToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_column :addresses, :city, :string
  end
end
