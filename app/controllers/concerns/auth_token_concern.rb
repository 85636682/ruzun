module Concerns::AuthTokenConcern
  extend ActiveSupport::Concern
  included do

    # 携带用户的邮箱和令牌过期时间作为 token body
    def create_jwt(user)
      secret_key = user.password_digest # 签发令牌的密钥
      payload = { mobile: user.mobile }
      expire_at = set_auth_token_expired_time
      payload.merge!("exp" => expire_at)
      payload.merge!({ id: user.id })
      JWT.encode(payload, secret_key)
    end

    # 设置令牌7天过期
    def set_auth_token_expired_time
      7.days.from_now.to_i
    end

  end
end
