class Admin::PlayedsController < ApplicationController
  before_action :set_game
  before_action :set_played, only: [:edit, :update, :destroy]

  def index
    @playeds = @game.playeds.order("start_time ASC")
  end

  def show

  end

  def new
    @played = Played.new
  end

  def create
    @played = @game.playeds.build played_params
    if @played.save
      redirect_to admin_game_playeds_path(@game), :notice => "创建成功！"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @played.update_attributes played_params
      redirect_to admin_game_playeds_path(@game), :notice => "更新成功！"
    else
      render :edit
    end
  end

  def destroy
    if @played.destroy
      redirect_to admin_game_playeds_path(@game), :notice => "删除成功！"
    else
      redirect_to admin_game_playeds_path(@game), :notice => "删除失败！"
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_played
    @played = Played.find(params[:id])
  end

  def played_params
    params.require(:played).permit(:finish, :home_team_id, :guest_team_id, :game_id, :start_time, :home_team_score, :guest_team_score)
  end
end
