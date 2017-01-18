class Game < ActiveRecord::Base
  belongs_to :team_a_player1
  belongs_to :team_b_player1
end
