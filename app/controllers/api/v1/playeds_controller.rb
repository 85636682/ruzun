class Api::V1::PlayedsController < Api::V1::BaseController
  before_action :set_game, only: [:index]

  def index
    @playeds = @game.playeds.order("start_time ASC")
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end
end
