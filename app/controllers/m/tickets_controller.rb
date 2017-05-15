class M::TicketsController < MobileController
  def index
    @tickets = Ticket.all.order("created_at DESC")
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
