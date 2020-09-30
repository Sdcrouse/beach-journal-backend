class Beach < ApplicationRecord
  belongs_to :location
  has_many :attractions
  has_many :journal_entries

  accepts_nested_attributes_for :attractions

  validates :name, :description, presence: true
end
