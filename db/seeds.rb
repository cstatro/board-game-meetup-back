# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
g1 = Game.find_or_create_by(name:"Container: 10th Anniversary Jumbo Edition",max_player: 5,min_player:3,max_playtime:90,min_playtime:75,image:"https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559254206689-61zyFksie6L.jpg",thumbnail:"https://d2k4q26owzy373.cloudfront.net/40x40/games/uploaded/1559254206689-61zyFksie6L.jpg")

u1 = User.find_or_create_by(name: "colin",bio: "Loves dogs and being on time!", profile_pic:"https://i.kym-cdn.com/photos/images/newsfeed/001/505/718/136.jpg")
u2 = User.find_or_create_by(name: "nick",bio: "Loves Sour Beers and making sure thing happen on time!", profile_pic:"https://i.ytimg.com/vi/JnE5IU3884A/maxresdefault.jpg")

UserGame.find_or_create_by(user:u1,game:g1)