# Stretch goals for the backend

* Allow users to edit and delete beaches, and to edit journal entries. PRIORITY #1!!!
* Refactor my routes with shallow nesting.
* Attributes I could add to a beach: 
  * Website(s) (i.e. where a user can go to find more info about a beach)
  * A Photo model, so that users can post their favorite beach photos - it would need a photo_url attribute
    - To that end, this Ruby gem may help: https://rubygems.org/gems/seed_pic
* I could give the Attraction model "address" and "zipcode" attributes, and have it optionally belong to a Location; that would allow users to specify exactly WHERE a restaurant, point of interest, shop, etc. is located.
* It wouldn't hurt to sanitize my data before saving it (such as capitalizing Location attributes, titleizing the Beach name, that sort of thing).
  * Also, I'd want something like "WA" to auto-save as "Washington" (or vice-versa).
  * I would also like Attraction categories to be auto-capitalized.
* Add additional model validations as needed.
* Add Rspec tests. Or, learn how to write tests with the default Rails framework.
* Maybe I could sort the beaches and journal entries before sending them back to the frontend; I'd need to use a model method for that.
  * I would want to somehow reverse-sort them, so to speak, so that the newest beaches and journal entries are displayed first.
* Unless the frontend changes this, I could put the Attractions with a category of "Other" at the bottom of the list.
* In the controllers, add edge cases for when the data doesn't save (like sending back a 404 status and corresponding message).
* Change a Journal Entry's date attribute into three: Day, month, and year - I may need a separate EntryDate model for that. And in that case, I could display all of the journal entries written on a specific date, if I wanted.
* If I ever want to list the beaches belonging to a Location, I may want to include the location_id in the BeachSerializer.
* Read over the config/database.yml file, and see what I can do (see also my Word document). PRIORITY #2!!!
* PRIORITY #3: In the initializers/cors.rb file, be sure to restrict the websites that can view the data, to just my React frontend. This should be done before my app goes into production.