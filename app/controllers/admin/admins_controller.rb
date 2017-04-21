class Admin::AdminsController < AdminController
  before_action :set_admin, only: [:edit, :update, :destroy]

  def index
    @admins = Admin.all.order("created_at ASC").paginate(:page => params[:page])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new params_admin
    if @admin.save
      redirect_to admin_admins_path, notice: "删除成功！"
    else
      redirect_to admin_admins_path, notice: "删除失败！"
    end
  end

  def edit
  end

  def udpate
    if @admin.udpate params_admin
    else
    end
    
  end
  
  def destroy
    if @admin.destroy
      redirect_to admin_admins_path, notice: "删除成功！"
    else
      redirect_to admin_admins_path, notice: "删除失败！"
    end
  end
  
  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def params_admin
    params.require(:admin).permit(:name, :phone, :password, :password_confirmation)
  end
  
end
