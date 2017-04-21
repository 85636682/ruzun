class Ticket < ApplicationRecord
    has_many :order_tickets
end
