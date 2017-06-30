class Admin::StudentsController < AdminController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @lesson = Lesson.find params[:lesson_id] unless params[:lesson_id].blank?
    params[:dayline_id] ||= ''
    params[:timeline_id] ||= ''
    @students = Student.all.order("created_at DESC").paginate(:page => params[:page])
    if not params[:lesson_id].blank?
      @students = @students.where(lesson_id: params[:lesson_id])
    end
    if not params[:dayline_id].blank?
      @students = @students.where(dayline_id: params[:dayline_id])
    end
    if not params[:timeline_id].blank?
      @students = @students.where(timeline_id: params[:timeline_id])
    end
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new student_params
    @student.trade_no = 'STN' + rand(999).to_s + DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S')
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
    params.require(:student).permit(:name, :avatar, :phone, :height, :age, :paid_in, :status, :lesson_id, :dayline_id, :timeline_id, :remark)
  end
end
