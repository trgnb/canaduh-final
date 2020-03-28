class RenameDestionationAddressToAddressInRides < ActiveRecord::Migration[6.0]
  def change
    rename_column :rides, :destination_address, :address
  end
end
