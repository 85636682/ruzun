require 'jwt'

class Api::V1::UsersController < Api::V1::BaseController
  include Concerns::AuthTokenConcern

  before_action :verify_auth_token, only: [:update, :auth]

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new user_params
    if @user.save
      @jwt = create_jwt(@user)
    else
      api_error(message: @user.errors.full_messages, status: 400)
    end
  end

  def update
    @user = User.find(params[:id])
    if @user == current_user
      api_error(message: @user.errors.full_messages, status: 400) if not @user.update_attributes user_params
    else
      api_error(message: "没权限编辑该用户！", status: 400)
    end
  end

  def auth
    
  end

  private

  def user_params
    params.require(:user).permit(:mobile, :name, :password, :birthday, :height, :weight, :position, :avatar, :province, :city, :district)
  end
end
