class Admin::SwimingLessonsController < AdminController
  before_action :set_swiming_lesson, only: [:show, :edit, :update]
  def index
    @swiming_lessons = SwimingLesson.all.order("created_at DESC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @swiming_lesson = SwimingLesson.new
  end

  def create
    @swiming_lesson = SwimingLesson.new params_swiming_lesson
    @swiming_lesson.status = :pending
    if @swiming_lesson.save
      redirect_to admin_swiming_lesson_path(@swiming_lesson)
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @swiming_lesson.udpate params_swiming_lesson
      redirect_to admin_swiming_lesson_path(@swiming_lesson)
    else
      render :edit
    end
  end
  
  private

  def set_swiming_lesson
    @swiming_lesson = SwimingLesson.find(params[:id])
  end

  def params_swiming_lesson
    params.require(:swiming_lesson).permit(:name, :avatar, :phone, :height, :age)
  end
end
