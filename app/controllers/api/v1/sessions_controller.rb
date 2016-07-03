require 'jwt'

class Api::V1::SessionsController < Api::V1::BaseController
  include Concerns::AuthTokenConcern

  def create
    @user = User.find_by_mobile(params[:mobile])
    if @user && @user.authenticate(params[:password])
       # 验证成功，生成并返回登陆令牌
       @jwt = create_jwt(@user)
       # respond_with jwt, status: :created
    else
       # 处理验证失败
       api_error(message: "用户不存在或密码错误！", status: 400)
    end
  end
end
