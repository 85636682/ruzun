class MobileController < ApplicationController
  layout "mobile"
  before_action :authenticate_user!

  def authenticate_user!
    redirect_to "http://bluefairypark.cn/auth/wechat" if current_user.blank?
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
end