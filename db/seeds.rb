# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
User.create(username: "user1", email: "user1@gmail.com", password: "password")

#Ladders
Ladder.create(title: "Ladder 1", size: 10, user_id: 1)
Ladder.create(title: "Ladder 2", size: 15, user_id: 1)
Ladder.create(title: "Ladder 3", size: 20, user_id: 1)

#Players - All names are fictional
Player.create(first_name: "Bob", last_name: "Jones", match_record: "0-0", ladder_id: 1, ladder_spot: 1)
Player.create(first_name: "Sam", last_name: "Smith", match_record: "0-0", ladder_id: 1, ladder_spot: 2)
Player.create(first_name: "Billy", last_name: "Bobby", match_record: "0-0", ladder_id: 1, ladder_spot: 3)
Player.create(first_name: "Michael", last_name: "Johnson", match_record: "0-0", ladder_id: 1, ladder_spot: 4)
Player.create(first_name: "Adam", last_name: "Chin", match_record: "0-0", ladder_id: 1, ladder_spot: 5)
Player.create(first_name: "Jake", last_name: "Williams", match_record: "0-0", ladder_id: 1, ladder_spot: 6)
Player.create(first_name: "Justin", last_name: "Brown", match_record: "0-0", ladder_id: 1, ladder_spot: 7)
Player.create(first_name: "Jimmy", last_name: "Davis", match_record: "0-0", ladder_id: 1, ladder_spot: 8)
Player.create(first_name: "William", last_name: "Wilson", match_record: "0-0", ladder_id: 1, ladder_spot: 9)
Player.create(first_name: "Roger", last_name: "Morris", match_record: "0-0", ladder_id: 1, ladder_spot: 10)
