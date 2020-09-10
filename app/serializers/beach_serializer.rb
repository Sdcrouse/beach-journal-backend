class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :items_to_bring, :popular_activities
  belongs_to :location
  has_many :attractions
  has_many :journal_entries
end
