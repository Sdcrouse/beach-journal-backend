class AddNameToApiV1Beaches < ActiveRecord::Migration[6.0]
  def change
    add_column :api_v1_beaches, :name, :string
  end
end
