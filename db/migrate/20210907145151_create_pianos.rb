class CreatePianos < ActiveRecord::Migration[6.0]
  def change
    create_table :pianos do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :image
      t.string :serial
      t.text :future_work
      t.integer :customer_id, foreign_key: true
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
