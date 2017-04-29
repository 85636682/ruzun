require "http"

class UsersController < ApplicationController
  layout false

  def omniauth_callbacks
    @user = User.from_omniauth(request.env['omniauth.auth'])
    
    Rails.logger.info @user
    Rails.logger.info session[:user_id]
    Rails.logger.info @user.persisted?
    # 是否是新增cord
    if @user.persisted?
      Rails.logger.info @user.nickname
      session[:user_id] = @user.id
      # redirect_to profile_m_users_path
    else
      @user.save!
      Rails.logger.info @user.sex
      session[:user_id] = @user.id
      # redirect_to profile_m_users_path
    end
  end
end
