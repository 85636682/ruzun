class Admin::SessionsController < AdminController
  layout false
  skip_before_action :authenticate_admin!

  def new
  end

  def create
    admin = Admin.find_by_phone params[:phone]
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      redirect_to sell_admin_tickets_path, notice: "登录成功."
    else
      flash.now.alert = "电话号码或密码错误."
      render :new
    end
  end

  def destroy
    session[:admin_id] = nil
    redirect_to new_admin_session_path
  end
end
