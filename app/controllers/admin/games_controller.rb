class Admin::GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy, :lot, :lock]

  def index
    @games = Game.all
  end

  def show

  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new game_params
    if @game.save
      redirect_to admin_game_path(@game)
    else
      render :new, :notice => "创建失败！"
    end
  end

  def edit

  end

  def update
    if @game.update_attributes game_params
      redirect_to admin_game_path(@game)
    else
      render :edit, :notice => "更新失败！"
    end
  end

  def destroy
    if @game.destroy
      redirect_to admin_games_path, :notice => "删除成功！"
    else
      redirect_to admin_games_path, :notice => "删除失败！"
    end
  end

  def lot
    count = @game.teams.count
    will_use_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[0, count]
    randed = []
    m = 0
    @game.teams.each do |team|
      loop do
        m = rand(0..count-1)
        if randed.include?(m)
          next
        else
          randed.push(m)
          break
        end
      end
      GameTeam.where(game_id: @game.id, team_id: team.id).first.update_attributes(lot: will_use_chars[m])
    end
    redirect_to admin_game_path(@game)
  end

  def lock
    if @game.update_attributes(locked: true)
      redirect_to admin_game_path(@game), notice: "锁定成功！"
    else
      redirect_to admin_game_path(@game), notice: "锁定失败！"
    end
  end

  private
  def game_params
    params.require(:game).permit(:name, :logo, :constitution)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
