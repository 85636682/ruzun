class Admin::AwardsController < AdminController
  before_action :set_award, only: [:show, :edit, :update, :destroy]

  def index
    @awards = Award.all.order("created_at ASC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @award = Award.new
  end

  def create
    @award = Award.new award_params
    if @award.save
      redirect_to admin_awards_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @award.update award_params
      redirect_to admin_awards_path
    else
      render :edit
    end
  end

  def destroy
    @award.destroy
    redirect_to admin_awards_path
  end
  
  private

  def set_award
    @award = Award.find(params[:id])
  end

  def award_params
    params.require(:award).permit(:subject, :code, :rate)
  end
end
