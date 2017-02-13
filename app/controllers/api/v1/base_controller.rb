class Api::V1::BaseController < ActionController::API

  attr_reader :current_user
  helper_method :current_user

  def api_error(opts = {})
    render json: { error: opts[:message] }, status: opts[:status]
  end

  def unauthenticated!
    api_error(message: "验证失败！", status: 401)
  end

  private

  def verify_auth_token
    handle_signin_excaption
  end

  def handle_signin_excaption
    unless get_current_user!
      # 处理令牌为空
      unauthenticated!
    end
    rescue JWT::ExpiredSignature => e
      # 处理令牌过期
      unauthenticated!
    rescue JWT::DecodeError => e
      # 处理令牌非法
      unauthenticated!
  end

  def get_current_user!
    # 从请求头获取令牌
    auth_type, jwt = request.headers['Authorization'].try(:split, ' ')
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
  end
end
