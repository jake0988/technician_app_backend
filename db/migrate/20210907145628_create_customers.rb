class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number
      t.integer :number_of_pianos
      t.string :user_id, foreign_key: true

      t.timestamps
    end
  end
end
