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
Attraction.create(
  category: "Other",
  name: "Wildlife",
  description: "Sandpipers, seagulls, shellfish, sea anemones, dogs, crows, deer, horses",
  beach: long_beach
)

Attraction.create(
  category: "Places of interest",
  name: "Kite Museum",
  description: "A museum of kites, where you can make your own kite, see the history of kites, and view some of the oldest and biggest kites in history",
  beach: long_beach
)

Attraction.create(
  category: "Places of interest",
  name: "Marsh's Free Museum",
  description: "A museum full of oddities and fun stuff to see, most notably Jake the Alligator Man",
  beach: long_beach
)

Attraction.create(
  category: "Restaurants",
  name: "Castaway's",
  description: "A fun little restaurant in downtown Long Beach. I love the atmosphere, and their French Dip (among many other foods) is great!",
  beach: long_beach
)

Attraction.create(
  category: "Shops",
  name: "Yuletides Christmas Shop",
  description: "One of my favorite shops in Cannon Beach. I have NEVER seen so many ornaments in one place!",
  beach: cannon_beach
)

# -----------------------------------------------------------------------------------------------------------------------------------------------

# Journal Entries:
JournalEntry.create(
  title: "Marsh's Free Museum, Stormin' Norman's, and Mother Nature at the Beach",
  date: "June 25th",
  topics: "Museums, shops, beach, kite flying, wind, rain",
  entry_text: "Today, we decided to head over to Marsh's Free Museum and Stormin' Norman's. " + 
  "At Marsh's, there is a lot of cool stuff, including mermaids, seashell stuff, old coin-generated machines (for music, games, flipbooks, etc.), and plenty of souvenirs. " + 
  "Then there's Marsh's most famous exhibit: Jake the Alligator Man; we're talking a half-man, half-alligator here, not Steve Irwin.\n\n" + 
  "Stormin' Norman's has a wide selection of goods: one side has funny hats and shirts, while the other has souvenirs, candy, and a boatload of signs to hang on a door. " + 
  "Naturally, I have a few funny pictures as well as saltwater taffy and a huckleberry-flavored lollipop.\n\n" + 
  "This afternoon was rather interesting. Since it was windy, we took a few kites to the beach. " + 
  "Unfortunately, it was TOO windy; one of the kite strings snapped like a twig from all that tension! " + 
  "Thankfully, we managed to fly one kite, which pulled so hard that the string was nearly vertical. " + 
  "...Then the rain came. At that point, the wind was so strong that it knocked over our chair and blew the rain at us horizontally. " + 
  "The wind was also unusual: instead of blowing from north to south (as indicated by the wooden windbreakers), it blew from south to north. " + 
  "Regardless, we were all soaked head to toe by the time we got back to our beach house. " + 
  "Needless to say, that was the first time that I got that wet at the beach without even stepping one TOE into the ocean!",
  beach: long_beach
)

JournalEntry.create(
  title: "Museums and Seagulls and Restaurants, Oh My!",
  date: "June 26th",
  entry_text: "It's windy to the point that you can hear it whistling; the waves are big and nasty to us, but small and laughable to a Californian or Floridian!\n\n" + 
  "Today, we visited the Kite Museum. There are boatloads of kites ranging from small bird kites to larger-than-life Japanese fighter kites. " + 
  "One had a samurai's face on it, and it was twice my height and had a width as long as my armspan! " + 
  "There were plenty of timelines, along with kites used in WWII for target practice, and some that were used to catch huge fruitbats. " + 
  "Finally, they had an area to make kites and to fold some origami cranes (1,000 is their goal) to honor the victims of that 2011 earthquake and tsunami in Japan.\n\n" + 
  "Afterwards, we fed some seagulls (one called its friends). Then we went over to the bumper cars; " + 
  "Mom voluntarily stayed with the dog (who went nuts) as the rest of us jostled each other around like crazy. " + 
  "I went on the Tilt-a-Whirl for the first time in years...and got the dizziest I've been in ages!" + 
  "I'm really glad I did that BEFORE lunch at Benson's because now I'm stuffed to the brink. Maybe we'll do the arcade later...\n\n" + 
  "Update: We didn't go to the arcade, but we'll do that tomorrow. Also, I had my first shepherd's pie at The Lost Roo. It was delicious! " + 
  "I hope we come back again soon so that I can have their Foccachia Bruschetta again. " + 
  "It's a plate of bread pieces with three spreads: goat cheese, smoked tomato relish, and some kind of basil mixture - pesto, maybe? " + 
  "Put them all together, and you get a flavor sensation like you would not BELIEVE!",
  beach: long_beach
)

JournalEntry.create(
  title: "Long Beach's Annual Kite Festival",
  date: "August 1st",
  topics: "Kite festival, kites",
  entry_text: "I don't even know where to begin here. Long Beach has this really cool Kite Festival every August/September, and it's worth going to at least once." + 
  "I had no IDEA how many kites could fit in the sky, it's NUTS! And the varieties, too! Kites of every color, size, and shape imaginable. " + 
  "There are kite trains (a whole bunch of diamond-shaped kites, all on the same line), box kites, swirly kites, delta kites that do tricks, and even giant teddy-bear-head-shaped kites. " + 
  "I never knew this even existed, but there's also synchronized kite flying; people fly these arc-shaped kites into different formations: circles, snakes, swirls, etc. " + 
  "I have yet to see this, but there are also apparently 'kite battles': The first kite to break the other one's string wins. " + 
  "I think one of the best places to see these kites is from the boardwalk (which is another topic altogether). " + 
  "There's also plenty of kiosks and mini-shops where you can get food, t-shirts, beach gear, etc. " + 
  "They also have an event schedule. I'll have to check that out the next time I go...and there definitely WILL be a next time!",
  beach: long_beach
)

JournalEntry.create(
  date: "September 25th, 2020",
  entry_text: "A couple of years ago, I went to Cannon Beach for the first time in ages, and this time with a church group. " + 
  "Word of advice about that: If you go with a group, don't ride a school bus; there won't be any room for your legs. " + 
  "We had plenty of fun on the way there (activities, watching stuff out the windows, a rest stop in the wooded area, etc). " + 
  "The beach and town itself was pretty neat, too! The restaurants were good, and the beach itself was big and had a good view of Haystack Rock to the south. " + 
  "I wound up talking with a fisherman over there, who had his catch of the day, and I saw a drone flying overhead at one point. " + 
  "As for the town, it's full of surprises! They have a chocolate shop, a Christmas store, and an Escape Room, just to name a few things. " + 
  "I think there's more stuff to the south, including a nature preserve or two. I'll have to check that out the next time I visit." + 
  "That was a lot for a day trip, but I had a lot of fun! Looking forward to the next time I visit.",
  beach: cannon_beach
)