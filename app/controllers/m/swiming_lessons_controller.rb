class M::SwimingLessonsController < MobileController
  def new
    @swiming_lesson = SwimingLesson.new
  end

  def create
    @swiming_lesson = SwimingLesson.new params_swiming_lesson
    @swiming_lesson.status = :pending
    if @swiming_lesson.save
      redirect_to m_swiming_lesson(@swiming_lesson)
    else
      render :new
    end
  end
  
  private

  def params_swiming_lesson
    params.require(:swiming_lesson).permit(:name, :avatar, :phone, :height, :age)
end
