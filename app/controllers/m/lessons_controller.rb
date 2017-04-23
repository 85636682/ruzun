class M::LessonsController < MobileController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find params[:id]
  end
end
