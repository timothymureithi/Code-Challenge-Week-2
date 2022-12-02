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

hero1 = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel" )
hero2 = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
hero3 = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen" )

Power.create(name: "super strength", description:"gives the wielder super-human strengths")
Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
Power.create(name: "spped", description: "ability to travel at the speed of light")
Power.create(name: "Immortality", description:"The ability to have infinite life or lives")

HeroPower.create(strength: "Average", hero_id: 3, power_id: 2)
HeroPower.create(strength: "Strong", hero_id: 2, power_id: 3)
HeroPower.create(strength: "Weak", hero_id: 1, power_id: 1)


