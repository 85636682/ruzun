class Admin::SportFieldsController < AdminController
  def index
    @sport_fields = SportField.all
  end

  def create
    @sport_field = SportField.new sport_field_params
    if @sport_field.save
      redirect_to admin_sport_fields_path, notice: "保存成功！"
    else
      redirect_to admin_sport_fields_path, notice: "保存失败！"
    end
  end

  private

  def sport_field_params
    params.require(:sport_field).permit(:name)
  end
end
