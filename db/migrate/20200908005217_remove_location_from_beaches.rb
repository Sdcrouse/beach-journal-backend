class RemoveLocationFromBeaches < ActiveRecord::Migration[6.0]
  def change
    remove_column :beaches, :location
  end
end
