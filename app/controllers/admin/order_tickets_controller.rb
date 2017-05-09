class Admin::OrderTicketsController < AdminController
  before_action :set_order_ticket

  def show
  end

  def edit
  end

  def update
    if @order_ticket.update order_ticket_params
      redirect_to admin_order_ticket_path(@order_ticket)
    else
      render :edit
    end
  end
  
  private

  def set_order_ticket
    @order_ticket = OrderTicket.find params[:id]
  end

  def order_ticket_params
    params.require(:order_ticket).permit(:used)
  end
  
end
