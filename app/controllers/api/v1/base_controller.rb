class Api::V1::BaseController < ApplicationController
  respond_to :json
  # disable the CSRF token
  protect_from_forgery with: :null_session

  # disable cookies (no set-cookies header in response)
  before_action :destroy_session

  # disable the CSRF token
  skip_before_action :verify_authenticity_token

  attr_reader :current_user

  def destroy_session
    request.session_options[:skip] = true
  end

  def api_error(opts = {})
    render nothing: true, status: opts[:status]
  end

  private

  def verify_auth_token
    handle_signin_excaption
  end

  def handle_signin_excaption
    unless get_current_user!
      # 处理令牌为空
    end
    rescue JWT::ExpiredSignature => e
      # 处理令牌过期
    rescue JWT::DecodeError => e
      # 处理令牌非法
  end

  def get_current_user!
    # 从请求头获取令牌
    auth_type, jwt = request.headers["HTTP_AUTHORIZATION"].try(:split, ' ')
    Rails.logger.error(jwt)
    return false unless jwt
    # 读取令牌携带用户信息，此处不作令牌的验证，不会抛出异常
    payload, header = JWT.decode(jwt, nil, false, verify_expiration: false)
    user = User.find_by_mobile(payload["mobile"])
    # 获取验证令牌的密钥
    secret = user ? user.password_digest : ""
    # 用秘钥验证令牌，会抛出 JWT::ExpiredSignature 或 JWT::DecodeError 异常
    payload, header = JWT.decode(jwt, secret)
    # 验证成功，设置当前用户
    @current_user = user
    Rails.logger.error(@current_user)
  end
end
