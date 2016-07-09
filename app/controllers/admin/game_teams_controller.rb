class Admin::GameTeamsController < ApplicationController

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

  private

  def game_team_params
    params.require(:game_team).permit(:team_id, :game_id)
  end

end
