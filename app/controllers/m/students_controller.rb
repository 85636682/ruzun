class M::StudentsController < MobileController
  def index
    @students = current_user.students
  end
  
  def show
    @student = Student.find params[:id]
  end
  
  def new
    @lesson = Lesson.find params[:lesson_id]
    @student = Student.new
  end

  def create
    @lesson = Lesson.find params[:lesson_id]
    @student = Student.new student_params
    @student.status = :pending
    @student.lesson_id = @lesson.id
    @student.user_id = current_user.id
    @student.trade_no = 'STN' + rand(999).to_s + DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S')
    if @student.save
      redirect_to m_student_path(@student)
    else
      render :new
    end
  end
  
  private

  def student_params
    params.require(:student).permit(:name, :avatar, :phone, :height, :age, :timeline_id)
  end
  
end
