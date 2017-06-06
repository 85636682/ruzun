class AddCountToMembershipCard < ActiveRecord::Migration[5.0]
  def change
    add_column :membership_cards, :count, :integer, default: 0
  end
end
