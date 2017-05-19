class Admin::CouponsController < AdminController
  before_action :set_coupon, only: [:show, :edit, :update, :destroy]

  def index
    @coupons = Coupon.all.order("created_at ASC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new coupon_params
    if @coupon.save
      redirect_to admin_coupons_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @coupon.update coupon_params
      redirect_to admin_coupons_path
    else
      render :edit
    end
  end

  def destroy
    @coupon.destroy
    redirect_to admin_coupons_path
  end
  
  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.require(:coupon).permit(:serial_number, :ticket_id)
  end
end
