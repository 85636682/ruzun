class M::StudentsController < MobileController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new params_student
    @student.status = :pending
    if @student.save
      redirect_to m_student(@student)
    else
      render :new
    end
  end
  
  private

  def params_student
    params.require(:student).permit(:name, :avatar, :phone, :height, :age)
  end
  
end
