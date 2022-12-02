# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# { "id": 1, "name": "Kamala Khan", "super_name": "Ms. Marvel" },  

# { "id": 2, "name": "Doreen Green", "super_name": "Squirrel Girl" },  

# { "id": 3, "name": "Gwen Stacy", "super_name": "Spider-Gwen" }

Hero.create!(name: "Kamala Khan", super_name: "Ms. Marvel" )
Hero.create!(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create!(name: "Gwen Stacy", super_name: "Spider-Gwen" )

Power.create!(name:"super stength", description:"gives the wielder super-human strengths")
Power.create!(name:"flight", description:"gives the wielder the ability to fly through the skies at supersonic speed")


HeroPower.create!(strength: "Average", power_id: 1, hero_id: 1)
HeroPower.create!(strength: "Strong", power_id: 2, hero_id: 2)

