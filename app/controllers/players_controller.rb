class PlayersController < ApplicationController

  before_action :authenticate_user!
  def index
    players = Player.all
    render json: players.as_json(
      only: [
        :nickname
      ]
    )
  end

  def show
    player = Player.find params[:id]
    if player.id == current_user.player.id
      render json: player
    else
      render json: { error: "access denied!  You can only access full details for the currently logged in user's player" }
    end
  end

end
