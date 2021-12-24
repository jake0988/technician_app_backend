class AddcustomerIdtoappointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :customer_id, :integer
  end
end
