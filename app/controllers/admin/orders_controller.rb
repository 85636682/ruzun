class Admin::OrdersController < AdminController
  def create
    begin
      @order = Order.create!(
                    sn: DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s,
                    status: :completed)
      params["tickets"].each do |i|
        puts i
        OrderTicket.create!(order_id: @order.id, ticket_id: i.to_i)
        puts i
      end
    rescue
      redirect_to sell_admin_tickets_path, notice: "出售失败！" and return
    end
    redirect_to sell_admin_tickets_path, notice: "出售成功！"
  end

  def index
    @orders = Order.all.order("created_at DESC").paginate(:page => params[:page])
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find params[:id]
    @order.destroy
    redirect_to admin_orders_path
  end
end
