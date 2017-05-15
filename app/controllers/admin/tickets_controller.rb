class Admin::TicketsController < AdminController
  before_action :set_ticket, only: [:edit, :update, :destroy]
  
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
  end

  def update
    if @ticket.update ticket_params
      redirect_to admin_tickets_path, notice: "更新成功！"
    else
      redirect_to admin_tickets_path, notice: "更新失败！"
    end
  end

  def destroy
    @ticket.destroy
    redirect_to admin_tickets_path, notice: "删除成功！"
  end

  def sell
    @tickets = Ticket.all
  end

  private

  def set_ticket
    @ticket = Ticket.find params[:id]
  end

  def ticket_params
    params.require(:ticket).permit(:name, :price, :summary)
  end

end
