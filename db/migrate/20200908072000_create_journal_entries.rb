class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.string :title
      t.text :entry_text
      t.string :date
      t.string :topics
      t.references :beach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
