class Api::V1::WechatController < Api::V1::BaseController
  before_action :verify_auth_token, only: [:get_image_from_wechat]
  before_action :create_wechat_client

  def sign_package
    sign_package = @wechat_client.get_jssign_package(params[:request_url])
    render json: sign_package.to_json
  end

  def get_image_from_wechat
    res = @wechat_client.download_media_url(params[:media_id])
    Rails.logger.info(res)
  end

  private

  def create_wechat_client
    @wechat_client ||= WeixinAuthorize::Client.new(Rails.application.secrets.wechat_app_id, Rails.application.secrets.wechat_app_secret)
  end
end
