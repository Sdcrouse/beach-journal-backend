class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :items_to_bring, :popular_activities, :location, :attractions, :journal_entries
end
