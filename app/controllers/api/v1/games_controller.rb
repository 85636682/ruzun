class Api::V1::GamesController <  < Api::V1::BaseController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
