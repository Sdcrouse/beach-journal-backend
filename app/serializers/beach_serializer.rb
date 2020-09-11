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

  has_many :attractions
  has_many :journal_entries
end
