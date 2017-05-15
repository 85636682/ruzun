class M::LessonsController < MobileController
  def index
    @lessons = Lesson.all.order("created_at DESC")
  end

  def show
    @lesson = Lesson.find params[:id]
  end
end
