class AddRideIdToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :ride, null: false, foreign_key: true
  end
end
