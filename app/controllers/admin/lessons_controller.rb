class Admin::LessonsController < AdminController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new lesson_params
    if @lesson.save
      redirect_to admin_lessons_path, notice: "保存成功！"
    else
      redirect_to admin_lessons_path, notice: "保存失败！"
    end
  end

  def edit
    @lesson = Lesson.find params[:id]
  end

  def update
    @lesson = Lesson.find params[:id]
    if @lesson.update lesson_params
      redirect_to admin_lessons_path, notice: "更新成功！"
    else
      redirect_to admin_lessons_path, notice: "更新失败！"
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:subject, :price, :summary)
  end
end
