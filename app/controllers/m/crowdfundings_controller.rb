class M::CrowdfundingsController < MobileController
  def index
    @crowdfundings = Crowdfunding.all.order("fee ASC")
  end

  def show
    @crowdfunding = Crowdfunding.find params[:id]
  end
end
