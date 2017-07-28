class M::TicketsController < MobileController
  def index
    @tickets = Ticket.where(enabled: :true).order("created_at DESC")
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
