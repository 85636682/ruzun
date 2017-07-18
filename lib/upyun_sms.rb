require "http"

module UpyunSMS
  extend self

  def to(template_id, mobile, vars = "")
    Rails.logger.info("-----发送短信中-----")
    #response = HTTP.post(
    #                'https://sms-api.upyun.com/api/messages', 
    #                form: {
    #                  Authorization: Figaro.env.upyun_sms_token,
    #                  {
    #                    "template_id": template_id,
    #                    "mobile": mobile,
    #                    "vars": vars
    #                  }
    #                }
    #              )
  end
    
end
