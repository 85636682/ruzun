class Admin::StudentsController < AdminController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all.order("created_at DESC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @lesson = Lesson.find params[:lesson_id]
    @student = Student.new
  end

  def create
    @lesson = Lesson.find params[:lesson_id]
    @student = Student.new student_params
    @student.lesson_id = @lesson.id
    @student.status = :pending
    if @student.save
      redirect_to admin_student_path(@student)
    else
      render :new
    end
  end

  def edit
    @lesson = @student.lesson
  end
  
  def update
    if @student.update student_params
      redirect_to admin_student_path(@student)
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to admin_students_path
  end
  
  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :avatar, :phone, :height, :age, :lesson_id, :dayline_id, :timeline_id, :remark)
  end
end
