class M::StudentsController < MobileController
  def new
    @lesson = Lesson.find params[:lesson_id]
    @student = Student.new
  end

  def create
    @lesson = Lesson.find params[:lesson_id]
    @student = Student.new student_params
    @student.status = :pending
    @student.lesson_id = @lesson.id
    if @student.save
      redirect_to m_student(@student)
    else
      render :new
    end
  end
  
  private

  def student_params
    params.require(:student).permit(:name, :avatar, :phone, :height, :age)
  end
  
end
