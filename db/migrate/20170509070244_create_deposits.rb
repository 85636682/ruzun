class CreateDeposits < ActiveRecord::Migration[5.0]
  def change
    create_table :deposits do |t|
      t.string :trade_no
      t.integer :fee
      t.integer :user_id
      t.boolean :checkouted, default: false

      t.timestamps
    end
  end
end
