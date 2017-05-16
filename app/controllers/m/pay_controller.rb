class M::PayController < MobileController
  before_action :authenticate_user!, except: [:wx_notify]
  skip_before_action :verify_authenticity_token, only: [:wx_notify]

  def fairy_coins_pay
    params[:trade_no] ||= ""
    order = Order.find_by_sn params[:trade_no]
    redirect_to m_orders_path and return if order.blank?
    total_fee = order.total_price
    redirect_to m_order_path(order) and return if total_fee.to_i > current_user.fairy_coins.to_i
    begin
      order.update_attributes!(status: :checkouted)
      current_user.update_attributes!(fairy_coins: current_user.fairy_coins.to_i - total_fee.to_i)
      redirect_to m_order_path(order)
    rescue
      redirect_to m_order_path(order)
    end
  end

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
      out_trade_no = student.trade_no
      total_fee = student.lesson.price.to_i * 100
      attach = "student"
    elsif params[:name].downcase == 'deposit'
      deposit = Deposit.find(params[:id])
      body = "蓝精灵水上乐园-充值"
      out_trade_no = deposit.trade_no
      total_fee = deposit.fee.to_i * 100
      attach = "deposit"
    elsif params[:name].downcase == 'usermembershipcard'
      user_membership_card = UserMembershipCard.find(params[:id])
      body = "蓝精灵水上乐园-会员卡"
      out_trade_no = user_membership_card.trade_no
      total_fee = user_membership_card.membership_card.fee.to_i * 100
      attach = "usermembershipcard"
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
        student = Student.find_by_trade_no(result["out_trade_no"])
        student.update_attributes(status: :checkouted)
      elsif result["attach"] == 'deposit'
        deposit = Deposit.find_by_trade_no(result["out_trade_no"])
        deposit.update_attributes(checkouted: true)
        user = deposit.user
        award_fee = (deposit.fee.to_i / 100).to_i * 30
        user.update_attributes(fairy_coins: user.fairy_coins.to_i + deposit.fee.to_i + award_fee)
      elsif result["attach"] == 'usermembershipcard'
        user_membership_card = UserMembershipCard.find_by_trade_no(result["out_trade_no"])
        user_membership_card.update_attributes(status: :checkouted)
        # 设置实效日期
      end
      render xml: { return_code: 'SUCCESS', return_msg: 'OK' }.to_xml(root: 'xml', dasherize: false)
    else
      render xml: { return_code: 'FAIL', return_msg: 'Signature Error' }.to_xml(root: 'xml', dasherize: false)
    end
  end
end
