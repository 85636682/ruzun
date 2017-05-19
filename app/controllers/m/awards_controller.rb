class M::AwardsController < MobileController
  def index
    @awards = Award.all.order("created_at ASC")
  end

  def show
    @award = Award.find params[:id]
  end
end
