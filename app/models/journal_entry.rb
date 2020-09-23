class JournalEntry < ApplicationRecord
  belongs_to :beach

  validates :title, :entry_text, presence: true
end
