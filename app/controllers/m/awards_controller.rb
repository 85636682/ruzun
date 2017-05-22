class M::AwardsController < MobileController
  def index
    @awards = Award.all.order("id ASC")
  end

  def show
    @award = Award.find params[:id]
  end
end
