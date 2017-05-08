class AddSerialNumberToOrderTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :order_tickets, :serial_number, :string
    add_column :order_tickets, :used, :boolean, default: false
  end
end
