class ChangeDefaultColumnInAppointmantes < ActiveRecord::Migration[6.0]
  def change
        change_column_default :appointments, :date, :default => DateTime.now
  end
end
