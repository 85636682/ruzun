class UserMembershipCard < ApplicationRecord
    enum status: [:pending, :checkouted, :disabled]

    belongs_to :membership_card
    belongs_to :user
end
