class Api::V1::TeamUsersController < ApplicationController
  before_action :verify_auth_token, only: [:create, :destroy]

  def create
    @team_user = TeamUser.new(user_id: @current_user.id, team_id: params[:team_id])
    if not @team_user.save
      api_error(400)
    end
  end

  def destroy

  end
end
