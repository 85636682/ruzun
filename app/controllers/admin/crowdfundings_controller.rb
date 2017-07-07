class Admin::CrowdfundingsController < AdminController
  before_action :set_crowdfunding, only: [:show, :edit, :update, :destroy]

  def index
    @crowdfundings = Crowdfunding.all.order("created_at ASC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @crowdfunding = Crowdfunding.new
  end

  def create
    @crowdfunding = Crowdfunding.new crowdfunding_params
    if @crowdfunding.save
      redirect_to admin_crowdfundings_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @crowdfunding.update crowdfunding_params
      redirect_to admin_crowdfundings_path
    else
      render :edit
    end
  end

  def destroy
    @crowdfunding.destroy
    redirect_to admin_crowdfundings_path
  end
  
  private

  def set_crowdfunding
    @crowdfunding = Crowdfunding.find(params[:id])
  end

  def crowdfunding_params
    params.require(:crowdfunding).permit(:subject, :fee, :desc)
  end
end
