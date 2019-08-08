# README

This is the Rails API backend for the Virtual competition Ladder App, an app designed for users to build and edit ladders to be used for ladder competition

Ladder competition is a that format sees all competing players placed in a ladder, one on top of the other. Players challenge each other. If a player lower down the ladder beats a higher placed player, they change places – the lower, winning player moving up the ladder.

## Running the App

This application is currently run on your local host

**Please fork and clone this repo then run:**

`bundle install`, `rake db:create`, and `rake db:migrate`

**If you wish to start with pre-entered data, run:**

`rake db:seed`

*This data can be found in /db/seeds.rb*

**To start the backend server on your local machine, run:**

`rake start`

Shut down the server by pressing ctrl + C

*This will only start up the backend server of the app. In order to run the full app, you must fork and clone the client portion of the app and follow the README instructions. This can be found at:*

https://github.com/grangerl330/virtual-competition-ladder-client

## Code of Conduct

Everyone interacting in the Virtual Competition Ladder project’s codebases, issue trackers, chat rooms and mailing lists are expected to follow the [Contributor Covenant](http://contributor-covenant.org) code of conduct.
