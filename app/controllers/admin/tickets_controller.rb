class Admin::TicketsController < AdminController
  def index
    @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new ticket_params
    if @ticket.save
      redirect_to admin_tickets_path, notice: "保存成功！"
    else
      redirect_to admin_tickets_path, notice: "保存失败！"
    end
  end

  def edit
    @ticket = Ticket.find params[:id]
  end

  def update
    @ticket = Ticket.find params[:id]
    if @ticket.update ticket_params
      redirect_to admin_tickets_path, notice: "更新成功！"
    else
      redirect_to admin_tickets_path, notice: "更新失败！"
    end
  end

  def sell
    @tickets = Ticket.all
  end

  def sold
    @ticket = Ticket.find params[:id]
    @order = Order.new
    @order.sn = DateTime.parse(Time.now.iso8601).strftime('%Y%m%d%H%M%S') + rand(999).to_s
    @order.orderable_type = @ticket.class.name
    @order.orderable_id = @ticket.id
    @order.amount = params[:sell_count].to_i
    @order.status = "done"
    if @order.save
      redirect_to sell_admin_tickets_path, notice: "出售成功！"
    else
      redirect_to sell_admin_tickets_path, notice: "出售失败！"
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:name, :sport_field_id, :price)
  end
end
