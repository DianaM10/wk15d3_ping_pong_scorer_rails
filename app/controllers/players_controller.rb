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

end
