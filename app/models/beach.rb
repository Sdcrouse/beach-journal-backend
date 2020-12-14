class Beach < ApplicationRecord
  belongs_to :location
  has_many :attractions, dependent: :destroy
  has_many :journal_entries, dependent: :destroy

  accepts_nested_attributes_for :attractions

  validates :name, :description, presence: true
end
