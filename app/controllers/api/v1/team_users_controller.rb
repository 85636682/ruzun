class Api::V1::TeamUsersController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:create, :update, :update_member, :quit, :kick]

  def create
    if not current_user.update_attributes(team_id: params[:team_id])
      api_error(message: "加入队伍失败！", status: 400)
    end
  end

  def update_member
    @team_user = TeamUser.where(user_id: current_user.id, team_id: params[:team_id]).first
    if not @team_user.update_attributes(team_user_params)
      api_error(message: @team_user.errors.full_messages, status: 400)
    end
  end

  def quit
    if not current_user.update_attributes(team_id: 0)
      api_error(message: "退出队伍失败！", status: 400)
    end
  end

  def kick
    @team = Team.find(params[:team_id])
    if @team.user_id == current_user.id
      @user = User.find(params[:user_id])
      if not @user.update_attributes(team_id: 0)
        api_error(message: "踢出队伍失败！", status: 400)
      end
    else
      api_error(message: "你没有权限！", status: 400)
    end
  end

end
