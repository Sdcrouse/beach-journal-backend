class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :items_to_bring, :popular_activities, :journal_entries
  belongs_to :location
  has_many :attractions
end
