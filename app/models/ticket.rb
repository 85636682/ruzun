class Ticket < ApplicationRecord
    has_many :orders, as: :orderable
end
