class CreateUserCrowdfundings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_crowdfundings do |t|
      t.string :out_trade_no
      t.integer :user_id
      t.integer :crowdfunding
      t.integer :quantity

      t.timestamps
    end
  end
end
