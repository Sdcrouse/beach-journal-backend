# Beach Journal

Welcome to the Beach Journal app! This is my final project for the Flatiron School. It allows users to create and save beaches, as well as write journal entries for those beaches. This repository contains the backend API of the project.

## Frontend

The frontend for the Beach Journal can be found here: [https://github.com/Sdcrouse/beach-journal-client](https://github.com/Sdcrouse/beach-journal-client)

## Demo and Blog Post

* [Click Here](https://www.loom.com/share/dfdc7f0bdced4f13bc0c6f935c38e892) to view a demo of the Beach Journal.
* [Click Here](https://stevendcrouse.com/beach_journal_my_final_and_most_complicated_project) to read my blog post about the Beach Journal.

## Installation

Follow these steps to get the backend up and running:

1. Fork and clone this repository onto your own computer.
2. Run `bundle install` to install the Ruby gems for this app.
3. Run `rails db:migrate` to create the database.
4. (Optionally), run `rails db:seed` to give your database some default data.

## Usage

To start the Rails server for the Beach Journal, run `rails s`. Then, you can do any of the following:

* Navigate to `http://localhost:3000/api/v1/beaches` to view the serialized JSON for all of your saved beaches.
  * If you do this, I recommend installing the [JSON Viewer Chrome extension](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh?hl=en-US) to view your data in an easy-to-read format.
* Navigate to `http://localhost:3000/rails/info/routes` to see this project's available routes (or run `rails routes` in your terminal).
* Exit the server by hitting `Ctrl-C` or `Cmd-C` in your terminal.

Additionally, if you wish to play around with the saved data, run `rails c` in your terminal; if you want a sandbox environment that won't save your changes, run `rails c -s`. To exit the Rails console, hit `Ctrl-D` or `Cmd-D`.

## Development Notes

* Ruby version: 2.6.1
* Rails version: 6.0.3.2
* Database: PostgreSQL

This API also makes use of the [Rack CORS Middleware](https://github.com/cyu/rack-cors) and [Fast JSON API](https://github.com/Netflix/fast_jsonapi) gems.

## Contributing

Please feel free to raise a new Issue on my repository if you have any problems with my app (installation, usage, bugs, etc), or if you have suggestions for a new feature. Pull requests are also welcome.

Contributors are expected to follow the project's code of conduct. This can be viewed in the [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) file.

## LICENSE

Licensed under the [MIT License](LICENSE).

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
