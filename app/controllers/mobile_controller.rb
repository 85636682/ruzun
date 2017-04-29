class MobileController < ApplicationController
  layout "mobile"
  before_action :authenticate_user!

  def authenticate_user!
    if current_user.blank?
      session['current_url'] = request.url
      redirect_to "http://bluefairypark.cn/auth/wechat"
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
end