class Admin::TicketsController < AdminController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
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

  private

  def ticket_params
    params.require(:ticket).permit(:name, :price)
  end
end
