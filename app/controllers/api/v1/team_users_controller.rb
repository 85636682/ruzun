class Api::V1::TeamUsersController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:create, :quit, :kick]

  def create
    @team_user = TeamUser.new(user_id: current_user.id, team_id: params[:team_id])
    if not @team_user.save
      api_error(message: @team_user.errors.full_messages, status: 400)
    end
  end

  def quit
    @team_user = TeamUser.where(user_id: current_user.id, team_id: params[:team_id]).first
    if not @team_user.destroy
      api_error(message: @team_user.errors.full_messages, status: 400)
    end
  end

  def kick
    @team = Team.find(params[:team_id])
    if @team.user_id == current_user.id
      @team_user = TeamUser.where(user_id: params[:user_id], team_id: params[:team_id]).first
      if not @team_user.destroy
        api_error(message: @team_user.errors.full_messages, status: 400)
      end
    else
      api_error(message: "你没有权限！", status: 400)
    end
  end
end
