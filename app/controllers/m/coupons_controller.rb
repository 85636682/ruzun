class M::CouponsController < MobileController
    def new
        @coupon = Coupon.new
    end
    
    def create
        coupon = Coupon.find_by_serial_number params[:coupon][:serial_number]
        if coupon.blank?
            redirect_to new_m_coupon_path and return
        end
        begin
            @order = Order.create!(user_id: current_user.id, sn: DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s, status: :checkouted)
            order_ticket = OrderTicket.create!(order_id: @order.id, ticket_id: coupon.ticket_id, serial_number: 'TN' + DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s)
            redirect_to m_order_path(@order), notice: "订单生成成功."
        rescue
            redirect_to new_m_coupon_path, notice: "兑现奖品失败."
        end
    end

    private

    def coupon_params
        params.require(:coupon).permit(:serial_number)
    end
end
