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
      @order = Order.create(user_id: current_user.id, sn: DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s, status: :pending)
      @shopping_carts.each do |shopping_cart|
        order_ticket = OrderTicket.create(order_id: @order.id, ticket_id: shopping_cart.ticket_id)
        shopping_cart.destroy
      end
      redirect_to m_order_path(@order), notice: "订单生成成功."
    rescue
      redirect_to m_shopping_carts_path, notice: "生成订单失败."
    end
  end

  def destroy
    @order = Order.find params[:id]
    @order.destroy
    redirect_to m_orders_path
  end
  
end
