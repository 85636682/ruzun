class M::OrdersController < MobileController
  def index
    @orders = current_user.orders.order("created_at DESC")
  end

  def show
    @order = Order.find params[:id]
  end

  def create
    @shopping_carts = current_user.shopping_carts
    begin
      @order = Order.create(user_id: current_user.id)
      @shopping_carts.each do |shopping_cart|
        order_ticket = OrderTicket.create(order_id: @order.id, ticket_id: shopping_cart.ticket_id)
      end
      redirect_to m_order_path(@order), notice: "订单生成成功."
    rescue
      redirect_to m_shopping_carts_path, notice: "生成订单失败."
    end
  end
  
end
