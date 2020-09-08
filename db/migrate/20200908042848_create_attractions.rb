class CreateAttractions < ActiveRecord::Migration[6.0]
  def change
    create_table :attractions do |t|
      t.string :category
      t.string :name
      t.text :description
      t.references :beach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
