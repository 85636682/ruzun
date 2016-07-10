class Api::V1::TeamUsersController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:create, :quit]

  def create
    @team_user = TeamUser.new(user_id: current_user.id, team_id: params[:team_id])
    if not @team_user.save
      api_error(message: @team_user.errors.full_messages, status: 400)
    end
  end

  def quit
    @team_user = TeamUser.new(user_id: current_user.id, team_id: params[:team_id])
    if not @team_user.destroy
      api_error(message: @team_user.errors.full_messages, status: 400)
    end
  end
end
