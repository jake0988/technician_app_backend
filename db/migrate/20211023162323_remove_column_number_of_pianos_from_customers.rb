class RemoveColumnNumberOfPianosFromCustomers < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :number_of_pianos
  end
end
