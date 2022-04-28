class RemoveImageFromPianos < ActiveRecord::Migration[6.0]
  def change
    remove_column :pianos, :image
  end
end
