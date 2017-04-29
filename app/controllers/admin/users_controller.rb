class Admin::UsersController < AdminController
  def index
    @users = User.all.order("created_at DESC").paginate(:page => params[:page])
  end
end
