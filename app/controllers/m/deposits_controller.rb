class M::DepositsController < MobileController
  def index
    @deposits = current_user.deposits.order("created_at DESC")
  end

  def show
    @deposit = Deposit.find params[:id]
  end

  def new
    @deposit = Deposit.new
  end

  def create
    @deposit = Deposit.new deposit_params
    @deposit.trade_no = 'DN' + DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s
    @deposit.user_id = current_user.id
    if @deposit.save
      redirect_to m_deposit_path(@deposit)
    else
      render :new
    end
  end

  private

  def deposit_params
    params.require(:deposit).permit(:fee)
  end
  
end
