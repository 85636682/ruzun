class M::OrderTicketsController < MobileController
  def check
    @order_ticket = OrderTicket.find params[:id]
  end

  def checkin
    @order_ticket = OrderTicket.find params[:id]
    @checked = false
    unless params[:safe_code].blank?
      if params[:safe_code] == "bf007"
        @checked = true if @order_ticket.update_attributes(used: true)
      end
    end
  end
end
