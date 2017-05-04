class MobileController < ApplicationController
  layout "mobile"
  before_action :authenticate_user!

  def authenticate_user!
    if current_user.blank?
      session[:current_url] = request.url
      redirect_to "http://bluefairypark.cn/auth/wechat"
    end
  end

  def active_bottom_nav(c_name, a_name = '')
    if a_name == ''
      return 'mdui-bottom-nav-active' if c_name == controller_name
    else
      return 'mdui-bottom-nav-active' if c_name == controller_name && a_name == action_name
    end
  end

  def header_title
    if controller_name == 'lessons'
      header_title = '游泳培训班'
    elsif controller_name == 'shopping_carts'
      header_title = '购物车'
    elsif controller_name == 'students'
      if action_name == 'new'
        header_title = '报名培训班'
      elsif action_name == 'index'
        header_title = '所报培训班'
      elsif action_name == 'show'
        header_title = '学员'
      end
    elsif controller_name == 'tickets'
      header_title = '购票'
    elsif controller_name == 'orders'
      header_title = '订单列表'
      if action_name == 'show'
        header_title = '订单详情'
      end
    elsif controller_name == 'users'
      header_title = '个人用心'
      if action_name == 'deposit'
        header_title = '充值'
      end
    elsif controller_name == 'home'
      header_title = '首页'
      if action_name == 'water'
        header_title = '水质检测'
      end
    else
      header_title = ''
    end
    header_title
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user, :active_bottom_nav, :header_title
end