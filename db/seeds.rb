# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.delete_all
User.delete_all

matthew = User.create({email:"matthew@jeorrett.com", password:"secret", password_confirmation:"secret"})

Player.create({name:"Matthew", nickname:'The Destroyer', handedness:"R"})
Player.create({name:"Carlos", nickname:'The Catastrophic', handedness:"R"})
Player.create({name:"Cyrus", nickname:'The Virus', handedness:"L"})
Player.create({name:"Kate", nickname:'The Killer', handedness:"R"})




