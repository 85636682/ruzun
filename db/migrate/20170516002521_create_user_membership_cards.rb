class CreateUserMembershipCards < ActiveRecord::Migration[5.0]
  def change
    create_table :user_membership_cards do |t|
      t.string :trade_no
      t.integer :user_id
      t.integer :membership_card_id
      t.date :disabled
      t.integer :days
      t.integer :status

      t.timestamps
    end
  end
end
