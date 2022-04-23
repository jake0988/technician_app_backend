class AddAppointmentIdToPianos < ActiveRecord::Migration[6.0]
  def change
    add_column :pianos, :appointment_id, :integer
  end
end
