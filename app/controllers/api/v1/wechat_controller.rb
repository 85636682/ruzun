require 'open-uri'

class Api::V1::WechatController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:get_team_logo_from_wechat, :get_user_avatar_from_wechat]
  before_action :create_wechat_client

  def sign_package
    sign_package = @wechat_client.get_jssign_package(params[:request_url])
    render json: sign_package.to_json
  end

  def get_team_logo_from_wechat
    team = Team.find(params[:team_id])
    url = @wechat_client.download_media_url(params[:media_id])
    time = Time.now.to_i.to_s
    tmp_file = "tmp/" + time + "_img.jpg"
    open(tmp_file, "wb") do |file|
      file.print open(url).read
    end
    if team.update_attributes(:logo => tmp_file)
      render json: { logo: team.logo.url }
    else
      api_error(message: "上传失败！", status: 400)
    end
  end

  def get_user_avatar_from_wechat
    res = @wechat_client.download_media_url(params[:media_id])
    if not current_user.update_attributes(:avatar => res)
      api_error(message: "上传失败！", status: 400)
    end
  end

  private

  def create_wechat_client
    @wechat_client ||= WeixinAuthorize::Client.new(Rails.application.secrets.wechat_app_id, Rails.application.secrets.wechat_app_secret)
  end
end
