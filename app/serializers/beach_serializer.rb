class BeachSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :items_to_bring, :popular_activities

  attribute :location do |beach|
    loc = beach.location

    {
      city: loc.city,
      state: loc.state,
      country: loc.country
    }
  end

  attribute :attractions do |beach|
    beach.attractions.map do |attraction|
      {
        id: attraction.id,
        category: attraction.category,
        name: attraction.name,
        description: attraction.description
      }
    end
  end

  attribute :journal_entries do |beach|
    beach.journal_entries.map do |entry|
      {
        id: entry.id,
        title: entry.title,
        topics: entry.topics,
        date: entry.date,
        entry_text: entry.entry_text
      }
    end
  end
end
