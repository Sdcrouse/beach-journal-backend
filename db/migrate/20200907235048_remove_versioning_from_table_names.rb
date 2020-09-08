class RemoveVersioningFromTableNames < ActiveRecord::Migration[6.0]
  def change
    rename_table :api_v1_beaches, :beaches
    rename_table :api_v1_locations, :locations
  end
end
