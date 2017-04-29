require "http"

class UsersController < ApplicationController
  layout false

  def omniauth_callbacks
    @user = User.from_omniauth(request.env['omniauth.auth'])
    # 是否是已经存在的纪录
    if @user.persisted?
      session[:user_id] = @user.id
      redirect_to session[:current_url] ||= profile_m_users_path
    else
      @user.save
      session[:user_id] = @user.id
      redirect_to session[:current_url] ||= profile_m_users_path
    end
  end
end
