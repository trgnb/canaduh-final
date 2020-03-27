class ChangePriceToRidePrice < ActiveRecord::Migration[6.0]
  def change
    rename_column :rides, :price, :ride_price
  end
end
