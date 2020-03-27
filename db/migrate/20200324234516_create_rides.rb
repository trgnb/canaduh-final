class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :departure_address
      t.string :destination_address
      t.integer :price
      t.datetime :ride_date
      t.integer :ride_capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
