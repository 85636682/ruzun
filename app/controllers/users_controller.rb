require "http"

class UsersController < ApplicationController
  layout false

  def omniauth_callbacks
    @user = User.from_omniauth(request.env['omniauth.auth'])
    session['user_id'] = @user.id
    # 是否是新增cord
    if @user.persisted?
      redirect_to session['current_url'] ||= profile_m_users_path
    else
      redirect_to session['current_url'] ||= profile_m_users_path
    end
  end
end
