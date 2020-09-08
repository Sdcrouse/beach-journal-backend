class Beach < ApplicationRecord
  belongs_to :location
  has_many :attractions
  has_many :journal_entries
end
