class M::CrowdfundingsController < MobileController
  def index
    @crowdfundings = Crowdfunding.all.order("created_at DESC")
  end

  def show
    @crowdfunding = Crowdfunding.find params[:id]
  end
end
