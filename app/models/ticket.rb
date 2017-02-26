class Ticket < ApplicationRecord
    belongs_to :sport_field
    has_many :orders, as: :orderable
end
