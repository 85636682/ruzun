class Admin::StudentsController < AdminController
  before_action :set_student, only: [:show, :edit, :update]

  def index
    @students = Student.all.order("created_at DESC").paginate(:page => params[:page])
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new student_params
    @student.status = :pending
    if @student.save
      redirect_to admin_student_path(@student)
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if @student.update student_params
      redirect_to admin_student_path(@student)
    else
      render :edit
    end
  end
  
  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :avatar, :phone, :height, :age, :lesson_id)
  end
end
