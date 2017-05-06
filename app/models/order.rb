class Order < ApplicationRecord
    enum status: [:pending, :checkouted, :completed]

    has_many :order_tickets, :dependent => :destroy
    belongs_to :user

    def total_price
        total_price = 0
        self.order_tickets.each do |order_ticket|
            total_price += order_ticket.ticket.price
        end
        total_price
    end
    
end
