require "http"

class UsersController < ApplicationController
  layout false

  def omniauth_callbacks
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = @user.id
    Rails.logger.info @user.id
    Rails.logger.info session[:user_id]
    Rails.logger.info session[:current_url]
    # 是否是新增cord
    if @user.persisted?
      redirect_to profile_m_users_path
    else
      redirect_to profile_m_users_path
    end
  end
end
