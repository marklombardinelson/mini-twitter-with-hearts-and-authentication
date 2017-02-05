# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bob = User.create!(email: "mark@example.com", password: "12345678")
jayz = User.create!(email: "jayz@example.com", password: "123456789")
tweets = Tweet.create(
[
  { post: "Today I would like each of us to reflect on his and her own past and the gifts received from the Lord.", username: "Pope Francis", user: bob },
  { post: "How to land your first job in tech, with advice by @samkap and @trimblyton http://bit.ly/2hrqjxw ", username: "The Iron Yard", user: bob },
  { post: "With SQL Server, you get everything you need.", username: "Microsoft SQL Server", user: bob },
  { post: "It's Ya Boiiii.", username: "JZ", user: jayz }
  ]
  )
