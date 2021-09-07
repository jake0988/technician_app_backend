class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone_number
      t.string :number_of_pianos
      t.string :user_id

      t.timestamps
    end
  end
end
