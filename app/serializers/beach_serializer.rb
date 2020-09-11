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
        category: attraction.category,
        name: attraction.name,
        description: attraction.description
      }
    end
  end

  has_many :journal_entries
end
