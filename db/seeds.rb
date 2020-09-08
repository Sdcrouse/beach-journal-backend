# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ---------------------------------------------------------------------------------------------------

# Locations:
malibu = Location.create(city: "Malibu", state: "California", country: "United States")
lb_city = Location.create(city: "Long Beach", state: "WA", country: "USA")
cannon = Location.create(city: "Cannon Beach", state: "Oregon", country: "United States of America")

# ---------------------------------------------------------------------------------------------------

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

# ---------------------------------------------------------------------------------------------------------------------------------------------

# Attractions:
wildlife = Attraction.create(
  category: "Other",
  name: "Wildlife",
  description: "Sandpipers, seagulls, shellfish, sea anemones, dogs, crows, deer, horses",
  beach: long_beach
)

kite_museum = Attraction.create(
  category: "Places of interest",
  name: "Kite Museum",
  description: "A museum of kites, where you can make your own kite, see the history of kites, and view some of the oldest and biggest kites in history",
  beach: long_beach
)

marshs = Attraction.create(
  category: "Places of interest",
  name: "Marsh's Free Museum",
  description: "A museum full of oddities and fun stuff to see, most notably Jake the Alligator Man",
  beach: long_beach
)

castaways = Attraction.create(
  category: "Restaurants",
  name: "Castaway's",
  description: "A fun little restaurant in downtown Long Beach. I love the atmosphere, and their French Dip (among many other foods) is great!",
  beach: long_beach
)

christmas_store = Attraction.create(
  category: "Shops",
  name: "Yuletides Christmas Shop",
  description: "One of my favorite shops in Cannon Beach. I have NEVER seen so many ornaments in one place!",
  beach: cannon_beach
)

# -----------------------------------------------------------------------------------------------------------------------------------------------