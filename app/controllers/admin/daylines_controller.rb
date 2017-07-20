require "http"

class Admin::DaylinesController < AdminController
  before_action :set_dayline, only: [:edit, :update, :notice, :congratulate]
  
  def index
    @daylines = Dayline.all
  end

  def new
    @dayline = Dayline.new
  end

  def create
    @dayline = Dayline.new dayline_params
    if @dayline.save
      redirect_to admin_daylines_path, notice: "保存成功！"
    else
      redirect_to admin_daylines_path, notice: "保存失败！"
    end
  end

  def edit
  end

  def update
    if @dayline.update dayline_params
      redirect_to admin_daylines_path, notice: "更新成功."
    else
      redirect_to admin_daylines_path, notice: "更新失败."
    end
  end

  def notice
    @dayline.students.each do |student|
      vars = "#{student.name}|#{student.dayline.subject} #{student.timeline.subject}"
      #UpyunSMS.to(162, student.phone, vars) 
      if not student.phone.blank?
        response = HTTP.auth(Figaro.env.upyun_sms_token).post(
          'https://sms-api.upyun.com/api/messages', 
          form: {
            "template_id": 162,
            "mobile": student.phone,
            "vars": vars
          }
        )
        Rails.logger.info("----#{response}------")
      end
    end
    # ClassOpenNoticeJob.perform_later(@dayline)
    redirect_to admin_daylines_path, notice: "正在发送..."
  end

  def congratulate
    @dayline.students.each do |student|
      vars = "#{student.name}"
      #UpyunSMS.to(162, student.phone, vars) 
      if not student.phone.blank?
        response = HTTP.auth(Figaro.env.upyun_sms_token).post(
          'https://sms-api.upyun.com/api/messages', 
          form: {
            "template_id": 247,
            "mobile": student.phone,
            "vars": vars
          }
        )
        Rails.logger.info("----#{response}------")
      end
    end
    # ClassOpenNoticeJob.perform_later(@dayline)
    redirect_to admin_daylines_path, notice: "正在发送..."
  end

  private

  def set_dayline
    @dayline = Dayline.find params[:id]
  end
  
  def dayline_params
    params.require(:dayline).permit(:subject, :lesson_id, :enabled)
  end
end
