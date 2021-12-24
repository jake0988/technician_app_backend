class ChangeDateToBeStringInAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :date, :string, :default => "2010/01/01"
  end
end
