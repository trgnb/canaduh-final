class RemoveCoordinatesToRide < ActiveRecord::Migration[6.0]
  def change
    remove_column :rides, :latitude, :float
    remove_column :rides, :longitude, :float
  end
end
