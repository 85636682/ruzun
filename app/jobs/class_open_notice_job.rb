class ClassOpenNoticeJob < ApplicationJob
  queue_as :default

  def perform(dayline)
    dayline.students.each do |student|
      vars = "#{student.name}|#{student.dayline.subject} #{student.timeline.subject}"
      UpyunSMS.to(162, student.phone, vars)
    end 
  end
end
