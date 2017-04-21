class AddTicketIdToOrderTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :order_tickets, :ticket_id, :integer
  end
end
