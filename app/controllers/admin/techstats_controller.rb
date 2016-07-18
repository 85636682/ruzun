class Admin::TechstatsController < ApplicationController
  before_action :set_game
  before_action :set_played, only: [:index, :create, :edit]
  before_action :set_techstat, only: [:edit, :update]

  def index
    @techstats = @played.techstats
  end

  def create
    begin
      ActiveRecord::Base.transaction do
        if not @played.teched
          @played.home_team.users.each do |user|
            Techstat.create(played_id: @played.id, user_id: user.id)
          end
          @played.guest_team.users.each do |user|
            Techstat.create(played_id: @played.id, user_id: user.id)
          end
          @played.update_attributes(teched: true)
        end
      end
      redirect_to admin_game_played_techstats_path(@played.game, @played)
    rescue Exception => e
      redirect_to admin_game_played_path(@played.game, @played)
    end
  end

  def edit

  end

  def update
    if @techstat.update_attributes techstat_params
      redirect_to admin_game_played_techstats_path(@techstat), notice: "更新成功！"
    else
      render :edit, notice: "更新失败！"
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_played
    @played = Played.find(params[:played_id])
  end

  def set_techstat
    @techstat = Techstat.find(params[:id])
  end

  def techstat_params
    params.require(:techstat).permit(:pts, :fouls, :to, :ast, :stl, :blk, :off, :reb, :pm3, :pm3_a, :ftm, :ftm_a, :fgm, :fgm_a)
  end
end
