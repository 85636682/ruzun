class Api::V1::GameTeamsController < Api::V1::BaseController
  before_action :set_game

  def index
    @game_teams = @game.game_teams.order("points DESC")
  end

  def show
    @game_team = GameTeam.find(params[:id])
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end
end
