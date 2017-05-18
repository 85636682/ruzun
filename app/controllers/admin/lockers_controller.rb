class Admin::LockersController < AdminController
  before_action :set_locker, only: [:show, :edit, :update, :destroy]

  def index
    @lockers = Locker.all.order("created_at ASC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @locker = Locker.new
  end

  def create
    @locker = Locker.new locker_params
    if @locker.save
      redirect_to admin_lockers_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @locker.update locker_params
      redirect_to admin_lockers_path
    else
      render :edit
    end
  end

  def destroy
    @locker.destroy
    redirect_to admin_lockers_path
  end
  
  private

  def set_locker
    @locker = Locker.find(params[:id])
  end

  def locker_params
    params.require(:locker).permit(:serial_number, :state)
  end
end
