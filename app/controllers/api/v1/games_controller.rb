class Api::V1::GamesController < Api::V1::BaseController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @scores_order_by_sum = @game.techstats.joins(:user).select("user, sum(pts) as pts_in_game").group("user_id").order("pts_in_game DESC").limit(5)
  end
end
