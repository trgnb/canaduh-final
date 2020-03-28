class AddCoordinatesToRides < ActiveRecord::Migration[6.0]
  def change
    add_column :rides, :departure_latitude, :float
    add_column :rides, :departure_longitude, :float
    add_column :rides, :destination_latitude, :float
    add_column :rides, :destination_longitude, :float
  end
end
