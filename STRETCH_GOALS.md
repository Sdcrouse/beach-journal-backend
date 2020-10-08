# Stretch goals for the backend

* Allow users to edit and delete beaches, and to edit journal entries. PRIORITY #1!!!
* Refactor my routes with shallow nesting.
* Attributes I could add to a beach: 
  * Website(s) (i.e. where a user can go to find more info about a beach)
  * A Photo model, so that users can post their favorite beach photos - it would need a photo_url attribute
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
