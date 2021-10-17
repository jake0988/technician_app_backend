class ChangeFutureWorkToBeNotesInPiano < ActiveRecord::Migration[6.0]
  def change
    rename_column :pianos, :future_work, :notes
  end
end
