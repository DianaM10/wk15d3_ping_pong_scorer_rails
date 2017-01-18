class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games.as_json({
      include: [
        { team_a_player1: {only: :nickname } }
      ]
    })
    
  end

end