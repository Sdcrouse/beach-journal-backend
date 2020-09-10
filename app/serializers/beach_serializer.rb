class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :items_to_bring, :popular_activities, :attractions, :journal_entries
  belongs_to :location
end
