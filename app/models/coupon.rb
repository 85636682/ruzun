class Coupon < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :ticket
end
