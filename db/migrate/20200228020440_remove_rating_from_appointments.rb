class RemoveRatingFromAppointments < ActiveRecord::Migration[6.0]
  def change

    remove_column :appointments, :rating, :integer
  end
end
