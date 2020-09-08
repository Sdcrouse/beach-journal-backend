# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Locations:
malibu = Location.create(city: "Malibu", state: "California", country: "United States")
lb_city = Location.create(city: "Long Beach", state: "WA", country: "USA")
cannon = Location.create(city: "Cannon Beach", state: "Oregon", country: "United States of America")

# Beaches:
long_beach = Beach.create(
  name: "Long Beach",
  location: lb_city,
  description: "One of my all-time favorite beaches. The beach itself is huge, the town has a lot to see, the restaurants are excellent, and there's so much to do!",
  items_to_bring: "Change of clothes, sunscreen, sunglasses, $$$, sandals, walking shoes, bag for souvenirs, camera",
  popular_activities: "Walking and/or driving a moped on the beach, lighthouse visits, exploring the town, museums, kite flying, boardwalk, Kite Festival"
)

cannon_beach = Beach.create(
  name: "Cannon Beach",
  location: cannon,
  description: "Definitely a fun place to visit; just don't go there in a school bus (not much leg room). Besides the beach and Haystack Rock, the town itself has its own little treasures.",
  popular_activities: "Kite flying, fishing, visiting Haystack Rock, chocolate shop, Christmas shop, Escape Room, drone flying"
)

yellow = Beach.create(name: "Amarillo Beach", description: "A beach in eastern Malibu", location: malibu)

pirates = Beach.create(
  name: "Pirates Cove Beach",
  description: "A fun-sounding beach in Malibu, famous for being the location of the last scene of Planet of the Apes",
  location: malibu,
  items_to_bring: "Beach clothes, sunscreen, camera for selfies"
)

surfrider = Beach.create(
  name: "Surfrider Beach",
  description: "A famous part of the Malibu Lagoon State Beach",
  location: malibu,
  popular_activities: "Surfing (obviously), swimming, eating at Malibu Farm, enjoying the views from the Malibu Sport Fishing Pier, volleyball"
)