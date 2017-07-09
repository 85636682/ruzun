class Admin::TimelinesController < AdminController
  before_action :set_timeline, only: [:edit, :update]
  def index
    @timelines = Timeline.all
  end

  def new
    @timeline = Timeline.new
  end

  def create
    @timeline = Timeline.new timeline_params
    if @timeline.save
      redirect_to admin_timelines_path, notice: "保存成功！"
    else
      redirect_to admin_timelines_path, notice: "保存失败！"
    end
  end

  def edit
  end

  def update
    if @timeline.update timeline_params
      redirect_to admin_timelines_path, notice: "更新成功！"
    else
      redirect_to admin_timelines_path, notice: "更新失败！"
    end
  end

  private

  def set_timeline
    @timeline = Timeline.find params[:id]
  end
  
  def timeline_params
    params.require(:timeline).permit(:subject, :lesson_id, :enabled)
  end
  
end
