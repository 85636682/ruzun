class Api::V1::GamesController < Api::V1::BaseController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @the_top_ten_users = @game.techstats.joins(:user).select("users.name as user_name, users.avatar as user_avatar, sum(pts) as pts_in_game").group("users.name, users.avatar").order("pts_in_game DESC").limit(10)
  end
end
