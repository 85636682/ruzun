class Ticket < ApplicationRecord
  has_many :order_tickets
  has_many :shopping_carts
end
