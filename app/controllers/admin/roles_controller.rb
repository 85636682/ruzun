class Admin::RolesController < AdminController
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all
  end

  def show
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new role_params
    redirect_to admin_roles_path and return if @role.name == "admin"
    if @role.save
      redirect_to admin_role_path(@role)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @role.update role_params
      redirect_to admin_role_path(@role)
    else
      render :edit
    end
  end

  def destroy
    @role.destroy
    redirect_to admin_roles_path
  end

  private

  def set_role
    @role = Role.find params[:id]
  end
  
  def role_params
    role_params = params.require(:role).permit(:name, permissions: [])
    role_params[:permissions] = build_permissions(role_params[:permissions] || [])
    role_params
  end

  def build_permissions(permissions)
    parse_permissions(permissions).collect do |permission|
      if @role.nil?
        Permission.new(permission)
      else
        @role.permissions.find_or_initialize_by(permission)
      end
    end
  end

  def parse_permissions(permissions)
    permissions.collect do |permission|
      action, resource = permission.split('#', 2)
      { action: action, resource: resource }
    end
  end
  
end
