class CreatePianos < ActiveRecord::Migration[6.0]
  def change
    create_table :pianos do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :image
      t.string :serial
      t.string :future_work
      t.string :customer_id

      t.timestamps
    end
  end
end
