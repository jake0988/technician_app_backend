class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :initial_a4
      t.string :work_done
      t.string :price
      t.string :date
      t.string :piano_id
      t.string :hours

      t.timestamps
    end
  end
end
