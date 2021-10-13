class ChangeColumnPhoneNumberToBeIntegerInCustomers < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :phone_number, :integer
  end
end
