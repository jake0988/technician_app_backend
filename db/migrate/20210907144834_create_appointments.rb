class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :initial_a4
      t.text :work_done
      t.integer :price
      t.date :date
      t.integer :piano_id, foreign_key: true
      t.integer :hours
      t.integer :user_id, foreign_key: true
      
      t.timestamps
    end
  end
end
