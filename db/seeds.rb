# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

long_beach = Api::V1::Beach.create(
  name: "Long Beach",
  location: "Washington State, USA",
  description: "One of my all-time favorite beaches. The beach itself is huge, the town has a lot to see, the restaurants are excellent, and there's so much to do!",
  items_to_bring: "Change of clothes, sunscreen, sunglasses, $$$, sandals, walking shoes, bag for souvenirs, camera",
  popular_activities: "Walking and/or driving a moped on the beach, lighthouse visits, exploring the town, museums, kite flying, boardwalk, Kite Festival"
)

cannon_beach = Api::V1::Beach.create(
  name: "Cannon Beach",
  location: "Oregon, USA",
  description: "Definitely a fun place to visit; just don't go there in a school bus (not much leg room). Besides the beach and Haystack Rock, the town itself has its own little treasures.",
  popular_activities: "Kite flying, fishing, visiting Haystack Rock, chocolate shop, Christmas shop, Escape Room, drone flying"
)

fake_beach = Api::V1::Beach.create(
  name: "Lorem Ipsum Beach",
  location: "Nowhere",
  description: "Dolor sit amet. Not much to do here, as it doesn't exist."
)