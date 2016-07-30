class Admin::GameTeamsController < ApplicationController
  before_action :set_game
  before_action :set_game_team, only: [:edit, :update]

  def index
    @game_teams = @game.game_teams.order("points DESC")
  end

  def new
    @game_team = GameTeam.new
  end

  def create
    @game_team = GameTeam.new game_team_params
    if @game_team.save
      redirect_to new_admin_game_team_path
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @game_team.update_attributes game_team_params
      redirect_to admin_game_game_teams_path(@game), :notice => "更新成功！"
    else
      render :edit
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def set_game_team
    @game_team = GameTeam.find(params[:id])
  end

  def game_team_params
    params.require(:game_team).permit(:team_id, :game_id, :wins, :losses, :points, :score_difference)
  end

end
