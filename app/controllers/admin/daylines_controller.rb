class Admin::DaylinesController < AdminController
  before_action :set_dayline, only: [:edit, :update]
  
  def index
    @daylines = Dayline.all
  end

  def new
    @dayline = Dayline.new
  end

  def create
    @dayline = Dayline.new dayline_params
    if @dayline.save
      redirect_to admin_daylines_path, notice: "保存成功！"
    else
      redirect_to admin_daylines_path, notice: "保存失败！"
    end
  end

  def edit
  end

  def update
    if @dayline.update dayline_params
      redirect_to admin_daylines_path, notice: "更新成功！"
    else
      redirect_to admin_daylines_path, notice: "更新失败！"
    end
  end

  private

  def set_dayline
    @dayline = Dayline.find params[:id]
  end
  
  def dayline_params
    params.require(:dayline).permit(:subject, :lesson_id)
  end
end
