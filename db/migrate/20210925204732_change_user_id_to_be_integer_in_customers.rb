class ChangeUserIdToBeIntegerInCustomers < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :user_id, :integer
  end
end
