class Game < ActiveRecord::Base
  belongs_to :team_a_player1, class_name: 'Player'
  belongs_to :team_b_player1, class_name: 'Player'
end
