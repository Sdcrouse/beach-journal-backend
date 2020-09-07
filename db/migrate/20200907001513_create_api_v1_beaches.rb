class CreateApiV1Beaches < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_beaches do |t|
      t.string :location
      t.text :description
      t.text :items_to_bring
      t.text :popular_activities

      t.timestamps
    end
  end
end
