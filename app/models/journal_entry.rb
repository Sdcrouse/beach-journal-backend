class JournalEntry < ApplicationRecord
  belongs_to :beach

  validates :date, :entry_text, presence: true
end
