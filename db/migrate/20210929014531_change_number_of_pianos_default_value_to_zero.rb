class ChangeNumberOfPianosDefaultValueToZero < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :number_of_pianos, :integer, default: 0
  end
end
