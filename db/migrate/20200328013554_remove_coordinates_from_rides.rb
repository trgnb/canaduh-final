class RemoveCoordinatesFromRides < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :departure_latitude, :float
    remove_column :rides, :departure_longitude, :float
    remove_column :rides, :destination_latitude, :float
    remove_column :rides, :destination_longitude, :float
  end
end
