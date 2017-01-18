# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Player.delete_all
User.delete_all
Game.delete_all

matthew_player = Player.create({name:"Matthew", nickname:'The Destroyer', handedness:"R"})
c = Player.create({name:"Carlos", nickname:'The Catastrophic', handedness:"R"})
cy = Player.create({name:"Cyrus", nickname:'The Virus', handedness:"L"})
k = Player.create({name:"Kate", nickname:'The Killer', handedness:"R"})

matthew = User.create({
  email:"matthew@jeorrett.com",
  password:"secret",
  password_confirmation:"secret",
  player_id: matthew_player.id
})

game1 = Game.create({
  team_a_player1_id:matthew_player.id, 
  team_b_player1_id: cy.id, 
  team_a_score:21, 
  team_b_score: 5
  })

game2 = Game.create({
  team_a_player1_id:matthew_player.id, 
  team_b_player1_id: c.id, 
  team_a_score:21, 
  team_b_score: 2
  })

game3 = Game.create({
  team_a_player1_id:matthew_player.id, 
  team_b_player1_id: k.id, 
  team_a_score:1, 
  team_b_score:21})

