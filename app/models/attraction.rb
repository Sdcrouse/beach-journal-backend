class Attraction < ApplicationRecord
  belongs_to :beach

  validates :category, :name, :description, presence: true
end
