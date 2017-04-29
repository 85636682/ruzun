require "http"

class UsersController < ApplicationController
  layout false

  def omniauth_callbacks
    response = HTTP.get("https://api.weixin.qq.com/sns/oauth2/access_token?appid=#{Figaro.env.wechat_app_id}&secret=#{Figaro.env.wechat_secret}&code=#{params[:code]}&grant_type=authorization_code")
    Rails.logger.info response
  end
end
