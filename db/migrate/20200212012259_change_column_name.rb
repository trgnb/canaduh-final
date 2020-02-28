class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :services, :type, :service_type
  end
end
