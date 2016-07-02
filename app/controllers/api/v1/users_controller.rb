class Api::V1::UsersController < Api::V1::BaseController
  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new user_params
    if user.save
      render json: user.to_json
    else
      api_error(status: 400)
    end
  end

  def update
    @user = User.find(params[:id])
    Rails.logger.info(params[:user])
    if not @user.update_attributes user_params
      api_error(status: 400)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :birthday, :height, :weight, :position, :avatar, :province, :city, :district)
  end
end
