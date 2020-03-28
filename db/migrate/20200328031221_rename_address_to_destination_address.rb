class RenameAddressToDestinationAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :rides, :address, :destination_address
  end
end
