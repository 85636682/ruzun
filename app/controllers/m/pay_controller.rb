class M::PayController < MobileController
  before_action :authenticate_user!, except: [:wx_notify]
  skip_before_action :verify_authenticity_token, only: [:wx_notify]

  def wx_pay
    if params[:id].blank? || params[:name].blank?
      render json: { error: 'id & name is nil' }
      return
    end
    
    if params[:name].downcase == 'order'
      order = Order.find(params[:id])
      body = '蓝精灵水上乐园-门票'
      out_trade_no = order.sn
      total_fee = order.total_price.to_i * 100
      attach = "order"
    elsif params[:name].downcase == 'student'
      student = Student.find(params[:id])
      body = "蓝精灵水上乐园-#{student.lesson.subject}培训费"
      out_trade_no = "trade-#{student.id}-#{Time.now.to_i}"
      total_fee = student.lesson.price.to_i * 100
      attach = "student"
    end
    
    pay_params = {
      body: body,
      out_trade_no: out_trade_no,
      total_fee: total_fee,
      spbill_create_ip: request.remote_ip,
      notify_url: Figaro.env.wechat_pay_notify_url,
      trade_type: 'JSAPI',
      openid: current_user.uid,
      attach: attach
    }

    prepay_result = WxPay::Service.invoke_unifiedorder(pay_params)
    if prepay_result.success?
      js_pay_params = {
        prepayid: prepay_result['prepay_id'],
        noncestr: prepay_result['nonce_str']
      }
      pay_params = WxPay::Service.generate_js_pay_req js_pay_params
      logger.info pay_params
      render json: pay_params
    else
      logger.error prepay_result['return_msg']
      render json: prepay_result
    end
  end

  def wx_notify
    result = Hash.from_xml(request.body.read)['xml']
    if WxPay::Sign.verify?(result)
      if result["attach"] == "order"
        order = Order.find_by_sn(result["out_trade_no"])
        order.update_attributes(status: :checkouted)
      elsif result["attach"] == 'student'
      end
      render xml: { return_code: 'SUCCESS', return_msg: 'OK' }.to_xml(root: 'xml', dasherize: false)
    else
      render xml: { return_code: 'FAIL', return_msg: 'Signature Error' }.to_xml(root: 'xml', dasherize: false)
    end
  end
end
