class CreateAppointmentsPianos < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments_pianos do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :piano, null: false, foreign_key: true

      t.timestamps
    end
  end
end
