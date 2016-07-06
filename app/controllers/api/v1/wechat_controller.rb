class Api::V1::WechatController < Api::V1::BaseController
  def sign_package
    Rails.logger.info(params)
    Rails.logger.info(params[:request_url])
    @wechat_client ||= WeixinAuthorize::Client.new(Rails.application.secrets.wechat_app_id, Rails.application.secrets.wechat_app_secret)
    sign_package = @wechat_client.get_jssign_package(params[:request_url])
    render json: sign_package.to_json
  end
end
