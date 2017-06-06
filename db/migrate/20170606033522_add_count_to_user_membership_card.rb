class AddCountToUserMembershipCard < ActiveRecord::Migration[5.0]
  def change
    add_column :user_membership_cards, :count, :integer, default: 0
  end
end
