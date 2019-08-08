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
Ladder.create(title: "Summer 2019", size: 10, user_id: 1)
Ladder.create(title: "Fall 2019", size: 15, user_id: 1)

# Players
# Summer 2019
Player.create(name: "Bob Jones", match_record: "0-0", ladder_id: 1, ladder_spot: 1)
Player.create(name: "Sam Smith", match_record: "0-0", ladder_id: 1, ladder_spot: 2)
Player.create(name: "Billy Bobby", match_record: "0-0", ladder_id: 1, ladder_spot: 3)
Player.create(name: "Michael Johnson", match_record: "0-0", ladder_id: 1, ladder_spot: 4)
Player.create(name: "Adam Chin", match_record: "0-0", ladder_id: 1, ladder_spot: 5)
Player.create(name: "Jake Williams", match_record: "0-0", ladder_id: 1, ladder_spot: 6)
Player.create(name: "Justin Brown", match_record: "0-0", ladder_id: 1, ladder_spot: 7)
Player.create(name: "Jimmy Davis", match_record: "0-0", ladder_id: 1, ladder_spot: 8)
Player.create(name: "William Wilson", match_record: "0-0", ladder_id: 1, ladder_spot: 9)
Player.create(name: "Roger Morris", match_record: "0-0", ladder_id: 1, ladder_spot: 10)

# Fall 2019
Player.create(name: "Roger Federer", match_record: "0-0", ladder_id: 2, ladder_spot: 1)
Player.create(name: "Rafael Nadal", match_record: "0-0", ladder_id: 2, ladder_spot: 2)
Player.create(name: "Novak Djokovic", match_record: "0-0", ladder_id: 2, ladder_spot: 3)
Player.create(name: "Dominic Theim", match_record: "0-0", ladder_id: 2, ladder_spot: 4)
Player.create(name: "Alexander Zverev", match_record: "0-0", ladder_id: 2, ladder_spot: 5)
Player.create(name: "Stefanos Tsitsipas", match_record: "0-0", ladder_id: 2, ladder_spot: 6)
Player.create(name: "Kei Nishikori", match_record: "0-0", ladder_id: 2, ladder_spot: 7)
Player.create(name: "Karen Khachanov", match_record: "0-0", ladder_id: 2, ladder_spot: 8)
Player.create(name: "Fabio Fognini", match_record: "0-0", ladder_id: 2, ladder_spot: 9)
Player.create(name: "Danil Medvedev", match_record: "0-0", ladder_id: 2, ladder_spot: 10)
