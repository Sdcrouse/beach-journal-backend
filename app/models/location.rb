class Location < ApplicationRecord
  has_many :beaches

  validates :city, :state, :country, presence: true
end
